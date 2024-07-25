/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an org are executed whenever Apex code is deployed
 * to a production org to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production org. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the org size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
public class TestAccountFactory {

    public static Account getSingleSmallRegularAccount() {
        Account acc = new Account();
        acc.Name = 'ACME';
        acc.NumberOfEmployees = 10;
        acc.Industry = 'Engineering';

        return acc;
    }

    public static Account getSingleBigRegularAccount() {
        Account acc = new Account();
        acc.Name = 'ACME';
        acc.NumberOfEmployees = 1500;
        acc.Industry = 'Engineering';

        return acc;
    }
    
    public static Account getSingleSmallEnergyAccount() {
        Account acc = new Account();
        acc.Name = 'CFE';
        acc.NumberOfEmployees = 10;
        acc.Industry = 'Energy';

        return acc;
    }

    public static Account getSingleBigEnergyAccount() {
        Account acc = new Account();
        acc.Name = 'CFE';
        acc.NumberOfEmployees = 2000;
        acc.Industry = 'Energy';

        return acc;
    }

    public static Account getSingleSmallCommunicationsAccount() {
        Account acc = new Account();
        acc.Name = 'SKY';
        acc.NumberOfEmployees = 10;
        acc.Industry = 'Communications';

        return acc;
    }

    public static Account getSingleBigCommunicationsAccount() {
        Account acc = new Account();
        acc.Name = 'SKY';
        acc.NumberOfEmployees = 2000;
        acc.Industry = 'Communications';

        return acc;
    }
}