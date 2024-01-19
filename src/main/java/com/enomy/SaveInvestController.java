package com.enomy;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SaveInvestController {

    // Add a constant for the maximum monthly investment amount for each plan
    private static final double MAX_MONTHLY_INVESTMENT_BASIC = 20000;
    private static final double MAX_MONTHLY_INVESTMENT_PLUS = 30000;
    private static final double MAX_MONTHLY_INVESTMENT_STOCK = Double.MAX_VALUE; // Unlimited

    @GetMapping("/save_invest_plan")
    public String index() {
        return "investplan";
    }

    @PostMapping("/save_invest_plan")
    public String submit(
            @RequestParam("year") int year,
            @RequestParam("investment_type") int investmentType,
            @RequestParam("month_amount") double monthlyAmount,
            Model model
    ) {
        System.out.println("Client Request Year is " + year);
        System.out.println("Client Request Investment Option is " + investmentType);
        System.out.println("Client Request Monthly Amount is " + monthlyAmount);

        double minPredictReturns = 0;
        double maxPredictReturns = 0;
        double fees = 0;
        double taxes = 0;

        // Check if the monthly amount exceeds the maximum for the selected plan
        if ((investmentType == 1 && monthlyAmount > MAX_MONTHLY_INVESTMENT_BASIC) ||
            (investmentType == 2 && monthlyAmount > MAX_MONTHLY_INVESTMENT_PLUS) ||
            (investmentType == 3 && monthlyAmount > MAX_MONTHLY_INVESTMENT_STOCK)) {
            // Handle the case where the amount exceeds the maximum
            // For now, let's set the minPredictReturns to -1 to indicate an error
            minPredictReturns = -1;
        } else {
            // Perform the calculations as before
            if (investmentType == 1) {
                minPredictReturns = monthlyAmount * 12 * (1.2 / 100) * year;
                maxPredictReturns = monthlyAmount * 12 * (2.4 / 100) * year;
                fees = 0.25;
                taxes = 0.0;
            } else if (investmentType == 2) {
                minPredictReturns = monthlyAmount * 12 * (3.0 / 100) * year;
                maxPredictReturns = monthlyAmount * 12 * (5.5 / 100) * year;
                fees = 0.3;
                taxes = (maxPredictReturns > 12000) ? (maxPredictReturns - 12000) * 0.1 : 0.0;
            } else if (investmentType == 3) {
                minPredictReturns = monthlyAmount * 12 * (4.0 / 100) * year;
                maxPredictReturns = monthlyAmount * 12 * (23.0 / 100) * year;
                fees = 1.3;
                taxes = (maxPredictReturns > 40000) ? 4000 + ((maxPredictReturns - 40000) * 0.2) : (maxPredictReturns > 12000) ? (maxPredictReturns - 12000) * 0.1 : 0.0;
            }
        }

        boolean investResult = true;

        model.addAttribute("investResult", investResult);
        model.addAttribute("minPredictReturns", minPredictReturns);
        model.addAttribute("maxPredictReturns", maxPredictReturns);
        model.addAttribute("year", year);
        model.addAttribute("fees", fees);
        model.addAttribute("taxes", taxes);

        return "investplan";
    }
}
