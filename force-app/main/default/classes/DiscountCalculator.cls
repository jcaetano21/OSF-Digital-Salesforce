public with sharing class DiscountCalculator {
    public calculateDiscount(Decimal amount,String discountCode) {
        if (amount == null) {
            return 0;
        }

        Decimal finalAmount = amount;


        if (amount >= 100 && amount <= 200) {
            finalAmount = amount * 0.90; // Apply 10% discount
        }else if (amount > 200 && amount < 500) {
            finalAmount = amount * 0.85; // Apply 15% discount 
        }else if (amount >= 500) {
            finalAmount = amount * 0.80; // Apply 20% discount 
        }

        if (discountCode == 'OSF5') {
            finalAmount = finalAmount * 0.95; // Apply additional 5% discount
        }

        return finalAmount;
            
    }
}