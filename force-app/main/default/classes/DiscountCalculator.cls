public with sharing class DiscountCalculator {
    public Decimal calculateDiscount(Decimal amount) {
        if (amount == null) {
            return 0;
        }
        if (amount >= 100) {
            return amount * 0.90; // Apply 10% discount
        } else {
            return amount; // No discount
        }
    }
}