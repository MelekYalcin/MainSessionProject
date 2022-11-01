@istest
public with sharing class SOQLDEMO2Test {
    @TestSetup
    // preparing comman data.
    // it will run before testmethod runs.
    static void makeData (){
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
        insert listAcc;
    }
   @istest
   private static void testsoqlChildParent1() {
    // Prepera the data
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
        insert listAcc;

        List<Contact> newContacts = new List<Contact>();
        for (Integer i = 0; i < 300; i++) {
            contact c = new contact();
            c.LastName = 'soql test '+i;
            if (i<100) {
                c.AccountId = acc.Id;
            }else if (i<200) {
                c.AccountId = acc2.id;
            }else if (i<300) {
                c.AccountId = acc3.id;
            }
            newContacts.add(c);
            }
            insert newContacts;
            // We consume some heap size, 2 DMLs, 303 DML rows

            // 2. Call Method
            test.startTest();
            SOQLDemo2.ChildToParent_soql1();
            test.stopTest();
            system.assertEquals(300, newContacts.size());
        
             
    }  

    @istest

    private static void testSoqlParentToChild1() {
        // 1. preperaing data
        //    accounts with type = 'customer direct '
        //  some oppourtunities for thse accounts 
        // if we want to use data prepared in TestSetup, we must do SOQL
        List<Account> listAcc = [select id, type, name from account];
        for (account ac : listAcc) {
            ac.type = 'customer-direct';
        }
        update listAcc;

        List<Opportunity> listOpps = new List<Opportunity>();
        for (Integer i = 0; i < 300; i++) {
            Opportunity op = new Opportunity();
            op.name = 'Test opp '+i;
            op.StageName = 'closed won ';
            op.CloseDate = date.today();
            if (i<100) {
                op.AccountId = listAcc[0].id;
            }else if (i<200) {
                op.AccountId = listAcc[1].id;
            }else{
                op.AccountId = listAcc[2].id;
            }
            listOpps.add(op);
        }
        insert listOpps;

        test.startTest();
        SOQLDemo2.parentToChild_soql1();
        test.stopTest();
    }

}    

