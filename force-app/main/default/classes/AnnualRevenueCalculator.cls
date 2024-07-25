public with sharing class AnnualRevenueCalculator {
    public AnnualRevenueCalculator() {

    }

    public static Decimal calculateAnnualRevenueFromAccount(Account account) {
        if (account.NumberOfEmployees == null || account.Industry == null){
            return null;
        }

        Integer baseRate = 250;
        Decimal disccount = 0.0;
        Integer employees = account.NumberOfEmployees;

        if (account.Industry == 'Energy' || account.Industry == 'Communications') {
            baseRate = 40;
        }

        if (account.NumberOfEmployees > 1000) {
            disccount = 0.2;
        }

        return (baseRate + (employees * 50)) * (1 - disccount);
    }
}