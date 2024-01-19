package com.enomy;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CurrencyConverterController {
    @GetMapping("/converter")
    public String index() {
        return "currency";
    }
    
    @RequestMapping(value="/converter",  method= RequestMethod.POST)
    public String convertCurrency(@RequestParam double amount,
                                  @RequestParam String fromCurrency,
                                  @RequestParam String toCurrency,
                                  Model model) {
    	
    	double convertedAmount = 0.0;
        double feePercentage = 0.0;
     // Currency conversion rates for demonstration purposes
        double gbpToUsdRate = 1.4;
        double usdToGbpRate = 0.7;
        double gbpToEurRate = 1.2;
        double eurToGbpRate = 0.8;
        double gbpToBrlRate = 8.5;
        double brlToGbpRate = 0.12;
        double gbpToJpyRate = 150.0;
        double jpyToGbpRate = 0.0067;
        double gbpToTryRate = 10.0;
        double tryToGbpRate = 0.1;
        double usdToEurRate = 0.9;
        double eurToUsdRate = 1.1;
        double usdToBrlRate = 7.8;
        double brlToUsdRate = 0.13;
        double usdToJpyRate = 110.0;
        double jpyToUsdRate = 0.0091;
        double usdToTryRate = 8.9;
        double tryToUsdRate = 0.112;
        double eurToBrlRate = 9.4;
        double brlToEurRate = 0.11;
        double eurToJpyRate = 130.0;
        double jpyToEurRate = 0.0077;
        double eurToTryRate = 9.7;
        double tryToEurRate = 0.103;
        double brlToJpyRate = 14.0;
        double jpyToBrlRate = 0.071;
        double brlToTryRate = 1.2;
        double tryToBrlRate = 0.83;
        double jpyToTryRate = 0.085;
        double tryToJpyRate = 11.8;
        
        
     // Perform currency conversion based on the provided currencies
        if (fromCurrency.equals("GBP") && toCurrency.equals("USD")) {
            convertedAmount = amount * gbpToUsdRate;
        } else if (fromCurrency.equals("USD") && toCurrency.equals("GBP")) {
            convertedAmount = amount * usdToGbpRate;
        } else if (fromCurrency.equals("GBP") && toCurrency.equals("EUR")) {
            convertedAmount = amount * gbpToEurRate;
        } else if (fromCurrency.equals("EUR") && toCurrency.equals("GBP")) {
            convertedAmount = amount * eurToGbpRate;
        } else if (fromCurrency.equals("GBP") && toCurrency.equals("BRL")) {
            convertedAmount = amount * gbpToBrlRate;
        } else if (fromCurrency.equals("BRL") && toCurrency.equals("GBP")) {
            convertedAmount = amount * brlToGbpRate;
        } else if (fromCurrency.equals("GBP") && toCurrency.equals("JPY")) {
            convertedAmount = amount * gbpToJpyRate;
        } else if (fromCurrency.equals("JPY") && toCurrency.equals("GBP")) {
            convertedAmount = amount * jpyToGbpRate;
        } else if (fromCurrency.equals("GBP") && toCurrency.equals("TRY")) {
            convertedAmount = amount * gbpToTryRate;
        } else if (fromCurrency.equals("TRY") && toCurrency.equals("GBP")) {
            convertedAmount = amount * tryToGbpRate;
        } else if (fromCurrency.equals("USD") && toCurrency.equals("EUR")) {
            convertedAmount = amount * usdToEurRate;
        } else if (fromCurrency.equals("EUR") && toCurrency.equals("USD")) {
            convertedAmount = amount * eurToUsdRate;
        } else if (fromCurrency.equals("USD") && toCurrency.equals("BRL")) {
            convertedAmount = amount * usdToBrlRate;
        } else if (fromCurrency.equals("BRL") && toCurrency.equals("USD")) {
            convertedAmount = amount * brlToUsdRate;
        } else if (fromCurrency.equals("USD") && toCurrency.equals("JPY")) {
            convertedAmount = amount * usdToJpyRate;
        } else if (fromCurrency.equals("JPY") && toCurrency.equals("USD")) {
            convertedAmount = amount * jpyToUsdRate;
        } else if (fromCurrency.equals("USD") && toCurrency.equals("TRY")) {
            convertedAmount = amount * usdToTryRate;
        } else if (fromCurrency.equals("TRY") && toCurrency.equals("USD")) {
            convertedAmount = amount * tryToUsdRate;
        } else if (fromCurrency.equals("EUR") && toCurrency.equals("BRL")) {
            convertedAmount = amount * eurToBrlRate;
        } else if (fromCurrency.equals("BRL") && toCurrency.equals("EUR")) {
            convertedAmount = amount * brlToEurRate;
        } else if (fromCurrency.equals("EUR") && toCurrency.equals("JPY")) {
            convertedAmount = amount * eurToJpyRate;
        } else if (fromCurrency.equals("JPY") && toCurrency.equals("EUR")) {
            convertedAmount = amount * jpyToEurRate;
        } else if (fromCurrency.equals("EUR") && toCurrency.equals("TRY")) {
            convertedAmount = amount * eurToTryRate;
        } else if (fromCurrency.equals("TRY") && toCurrency.equals("EUR")) {
            convertedAmount = amount * tryToEurRate;
        } else if (fromCurrency.equals("BRL") && toCurrency.equals("JPY")) {
            convertedAmount = amount * brlToJpyRate;
        } else if (fromCurrency.equals("JPY") && toCurrency.equals("BRL")) {
            convertedAmount = amount * jpyToBrlRate;
        } else if (fromCurrency.equals("BRL") && toCurrency.equals("TRY")) {
            convertedAmount = amount * brlToTryRate;
        } else if (fromCurrency.equals("TRY") && toCurrency.equals("BRL")) {
            convertedAmount = amount * tryToBrlRate;
        } else if (fromCurrency.equals("JPY") && toCurrency.equals("TRY")) {
            convertedAmount = amount * jpyToTryRate;
        } else if (fromCurrency.equals("TRY") && toCurrency.equals("JPY")) {
            convertedAmount = amount * tryToJpyRate;
        }

        // Calculate the fee based on the initial currency amount
        if (amount <= 500) {
            feePercentage = 3.5;
        } else if (amount <= 1500) {
            feePercentage = 2.7;
        } else if (amount <= 2500) {
            feePercentage = 2.0;
        } else {
            feePercentage = 1.5;
        }

        double fee = amount * (feePercentage / 100.0);
        double totalAmount = amount + fee;

        // Add converted amount, fee, and currencies to the model for display in the view
        model.addAttribute("amount",amount);
        model.addAttribute("fromCurrency", fromCurrency);
        model.addAttribute("toCurrency", toCurrency);
        model.addAttribute("convertedAmount", convertedAmount);
        model.addAttribute("fee", fee);
        model.addAttribute("totalAmount", totalAmount);

        return "currency";
    }
  
}

