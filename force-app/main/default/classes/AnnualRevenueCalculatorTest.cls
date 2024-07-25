
@isTest
private class AnnualRevenueCalculatorTest {

    @isTest
    static void testValidateEmptyRequiredFields() {
        Account emptyAccount = new Account();
        Test.startTest();
        Decimal revenue = AnnualRevenueCalculator.calculateAnnualRevenueFromAccount(emptyAccount);
        Test.stopTest();
        Assert.isNull(revenue);
    }
    
    @isTest 
    static void testEmptyNumberOfEmployees() {
        Account emptyAccount = new Account();
        emptyAccount.Industry = 'Engineering';
        Test.startTest();
        Decimal revenue = AnnualRevenueCalculator.calculateAnnualRevenueFromAccount(emptyAccount);
        Test.stopTest();
        Assert.isNull(revenue);
    }

    @isTest 
    static void testEmtpyIndustry() {
        Account emptyAccount = new Account();
        emptyAccount.NumberOfEmployees = 10;
        Test.startTest();
        Decimal revenue = AnnualRevenueCalculator.calculateAnnualRevenueFromAccount(emptyAccount);
        Test.stopTest();
        Assert.isNull(revenue);
    }

    @isTest
    static void testNormalBaseRateNoDisccount() {
        Account testAccount = TestAccountFactory.getSingleSmallRegularAccount();
        Test.startTest();
        Decimal revenue = AnnualRevenueCalculator.calculateAnnualRevenueFromAccount(testAccount);
        Test.stopTest();
        Assert.areEqual(revenue, 750.0, 'Should get correct revenue');
    }

    @isTest 
    static void testCommunicationsRateNoDisccount() {
        Account testAccount = TestAccountFactory.getSingleSmallCommunicationsAccount();
        Test.startTest();
        Decimal revenue = AnnualRevenueCalculator.calculateAnnualRevenueFromAccount(testAccount);
        Test.stopTest();
        Assert.areEqual(revenue, 540.0, 'Should get correct revenue with lower base rate');
    }

    @isTest 
    static void testEnergyRateNoDisccount() {
        Account testAccount = TestAccountFactory.getSingleSmallEnergyAccount();
        Test.startTest();
        Decimal revenue = AnnualRevenueCalculator.calculateAnnualRevenueFromAccount(testAccount);
        Test.stopTest();
        Assert.areEqual(revenue, 540.0, 'Should get correct revenue with lower base rate');
    }

    @isTest 
    static void testNormalBaseRateEmployeeDisccount() {
        Account testAccount = TestAccountFactory.getSingleBigRegularAccount();
        Test.startTest();
        Decimal revenue = AnnualRevenueCalculator.calculateAnnualRevenueFromAccount(testAccount);
        Test.stopTest();
        Assert.areEqual(revenue, 60200.0, 'Should get correct revenue with 20% number employees disccount');
    }

    @isTest 
    static void testEnergyBaseRateEmployeeDisccount() {
        Account testAccount = TestAccountFactory.getSingleBigEnergyAccount();
        Test.startTest();
        Decimal revenue = AnnualRevenueCalculator.calculateAnnualRevenueFromAccount(testAccount);
        Test.stopTest();
        Assert.areEqual(revenue, 80032.0, 'Should get correct revenue with lower base rate and 20% number employee disccount');
    }

    @isTest 
    static void testCommunicationsBaseRateEmployeeDisccount() {
        Account testAccount = TestAccountFactory.getSingleBigCommunicationsAccount();
        Test.startTest();
        Decimal revenue = AnnualRevenueCalculator.calculateAnnualRevenueFromAccount(testAccount);
        Test.stopTest();
        Assert.areEqual(revenue, 80032.0, 'Should get correct revenue with lower base rate and 20% number employee disccount');
    }
}