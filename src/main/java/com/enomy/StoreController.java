package com.enomy;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.enomy.entity.Store;


@Controller
public class StoreController {

	@Autowired
	private StoreService storeService;
	
	@RequestMapping("/all_store")
	public ModelAndView all_store() {
		
		//Get all the store
		List<Store> listStore = storeService.listAll();
	
		//Create Model and view with JSP name
		ModelAndView mav = new ModelAndView("all_store");
		
		//add list store obj to carry to JSP page
		mav.addObject("allStore", listStore);
		System.out.print(" List Obj is "+ listStore);
		
		return mav;
	}
	
	@RequestMapping("/new")
	public String newStoreForm(Map<String, Object> model) {
		Store store = new Store();
		model.put("store", store);
		return "new_store";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveStore(@ModelAttribute("store") Store store) {
		storeService.save(store);
		return "redirect:/all_store";
	}
	
	@RequestMapping("/edit")
	public ModelAndView editStoreForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("edit_store");
		Store store = storeService.get(id);
		mav.addObject("store", store);
		
		return mav;
	}
	
	@RequestMapping("/delete")
	public String deleteStoreForm(@RequestParam long id) {
		storeService.delete(id);
		return "redirect:/all_store";		
	}
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword) {
		
		//Search the store accoring to the keyword
		List<Store> searchStoreList=storeService.searchstore(keyword);
		
		//Go to the all store page with search store lists
		ModelAndView mvc=new ModelAndView ("all_store");
		mvc.addObject("allStore", searchStoreList);
		
		return mvc;
	}
	


}
