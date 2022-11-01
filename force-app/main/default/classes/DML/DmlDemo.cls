public class DmlDemo {
    public static void dmlInsertDemo_stndObj1(){
        account acc = new account();
        acc.name = 'SoftInnovas';
        acc.phone = '856974123';
        insert acc;
    } 
    public static void dmlInsertDemo_cstmObj1(){
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c='Teach DML to super Batch 10';
        sp.Description__c='All are doing great';
        sp.Status__c='New';
        insert sp;
    }
    public static void dmlUpdateDemo1(){
        Account acc = new Account();

        acc.Name = 'anything';
        insert acc;

        acc.Name='softInnovas Inc';
        update acc;
    }
    public static void dmlUpdateDemo3(){
        account acc = [select id, name from account where name= 'SoftInnovas' limit 1];
        acc.Name = 'Soft Inc.';
        acc.Phone = '8597412365';
        update acc;
    }
}

