package  com.store.test;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.enomy.StoreService;
import com.enomy.config.JpaConfig;
import com.enomy.config.WebAppInitializer;
import com.enomy.config.WebMvcConfig;
import com.enomy.entity.Store;
import com.enomy.repo.StoreRepository;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {StoreServiceTest.TestConfig.class,WebAppInitializer.class, WebMvcConfig.class})
public class StoreServiceTest {

    @Autowired
    private StoreService storeService;

    @Autowired
    private StoreRepository storeRepository;

    @Test
    public void testFindStore() {
        Store store = new Store();
        store.setName("ABC");
        
        Long id=(long) 1;

        Mockito.when(storeRepository.findById(id))
                .thenReturn(Optional.of(store));

        Optional<Store> tmpStore = Optional.of(storeService.get(id));
        assertTrue(tmpStore.isPresent());

        Store dbStore = tmpStore.get();
        assertEquals(dbStore.getName(), store.getName());
    }

    public static class TestConfig {
        @Bean
        public StoreRepository storeRepository() {
            return Mockito.mock(StoreRepository.class);
        }

        @Bean
        public StoreService storeService() {
            return new StoreService();
        }
    }
}
