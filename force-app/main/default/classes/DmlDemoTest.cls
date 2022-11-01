@istest
public  class DmlDemoTest {
     @istest
    private static void testDmlInsert1() {
        DmlDemo.dmlInsertDemo_stndObj1();
        // how to assert this?
            //  soql
        List<Account> listAcc = [select id, name from account where name ='SoftInnovas'];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }

    @istest
    private static void testDmlInsert2() {
        DmlDemo.dmlInsertDemo_cstmObj1();
        // how to assert this?
            //  soql
        List<Salesforce_Project__c> listSp = [select id, Project_Name__c from Salesforce_Project__c where Project_Name__c ='Teach DML to super Batch 10'];
        system.assertEquals(1, listSp.size());
        system.assertEquals('Teach DML to super Batch 10', listSp[0].Project_Name__c);
    }

    @istest
    private static void testDmlInsert3() {
        DmlDemo.dmlUpdateDemo1();
        // how to assert this?
            //  soql
        List<Account> listAcc2 = [select id, name from account where name ='softInnovas Inc'];
        system.assertEquals(1, listAcc2.size());
        system.assertEquals('softInnovas Inc', listAcc2[0].name);
    }

    // @istest
//     private static void testDmlInsert4() {
//         DmlDemo.dmlUpdateDemo3();
//         // how to assert this?
//             //  soql
//         List<Account> listAcc3 = [select id, name from account where name ='Soft Inc.'];
//         system.assertEquals(1, listAcc3.size());
//         system.assertEquals('Soft Inc.', listAcc3[0].name);
//     }
}
