@istest
public class AccountTriggerHandlerTest {
@istest
private static void testUpdateDescription1() {
         // 1.prepare data
         Account acc = new Account();
         acc.Name = 'SI Test';
         acc.Industry= 'Energy';
         acc.Active__c = 'Yes';
 
         Account acc2 = new Account();
         acc2.Name = 'UI Test';
         acc2.Industry= 'Energy';
         acc2.Active__c = 'Yes';
 
         Account acc3 = new Account();
         acc3.Name = 'PI Test';
         acc3.Industry= 'Banking';
         acc3.Active__c = 'Yes';
 
         List<Account> listAcc = new List<Account>{acc, acc2, acc3};
        //  2.DML will automatically call trigger, and its handler method too.
         insert listAcc;

        // 3. assertion
        List<Account> accounts = [select id, description, Active__c from Account where Active__c = 'Yes'];
        system.assert(accounts[0].Description.contains('active'));

    }
    @istest
private static void testUpdateDescription2() {
         // 1.prepare data
         Account acc = new Account();
         acc.Name = 'SI Test';
         acc.Industry= 'Energy';
         
 
         Account acc2 = new Account();
         acc2.Name = 'UI Test';
         acc2.Industry= 'Energy';
         
 
         Account acc3 = new Account();
         acc3.Name = 'PI Test';
         acc3.Industry= 'Banking';
         
 
         List<Account> listAcc = new List<Account>{acc, acc2, acc3};
        //  2.DML will automatically call trigger, and its handler method too.
         insert listAcc;

         acc.Active__c ='Yes';
         acc2.Active__c ='Yes';
         acc3.Active__c ='Yes';
         List<Account> listAcc2 = new List<Account>{acc, acc2, acc3};
         update listAcc2;

        // 3. assertion
        List<Account> accounts = [select id, description, Active__c from Account where Active__c = 'Yes'];
        system.assert(accounts[0].Description.contains('active'));

    }

    @istest
    private static void testVIPUpdate() {
        // 1.prepare data
        Account acc = new Account();
        acc.Name = 'SI Test';
        acc.Industry= 'Energy';
        acc.Active__c = 'Yes';

        Account acc2 = new Account();
        acc2.Name = 'UI Test';
        acc2.Industry= 'Energy';
        acc2.Active__c = 'Yes';

        List<Account> listAcc = new List<Account>{acc, acc2};

        //  2.DML will automatically call trigger, and its handler method too.
        insert listAcc;

        List<Contact> newContacts = new List<Contact>();
        for (Integer i = 0; i < 200; i++) {
            contact c = new contact();
            c.LastName = 'trigger test '+i;
            if (i<100) {
                c.AccountId = acc.Id;
            }else if (i<200) {
                c.AccountId = acc2.Id;
            }
            newContacts.add(c);
            }
            insert newContacts;

            // update vip field on accounts
            acc.VIP__c=true;
            acc2.VIP__c=true;
            List<Account> listAcc2 = new List<Account>{acc, acc2};
            // update accounts
            update listAcc2;

            // assertion
            // check all contact's vip field is true.
            List<Contact> contacts =[select id, VIP__c, name from contact];
            system.assertEquals(true, contacts[0].VIP__c);
    }
}
