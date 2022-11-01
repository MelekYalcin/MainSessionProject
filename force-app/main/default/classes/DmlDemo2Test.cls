@istest
public class DmlDemo2Test {
@istest
public static void dmlInsertDemo2Test() {
    
    // 1. Prepare data
    account acc = new account();
    acc.name = 'olpk';
    insert acc;
    // 2. Call the method 
    DmlDemo2.dmlInsertDemo2();
    // 3.assert
    // What and How?
    List<Contact> listContact = [select id, lastname, accountid from contact where lastname='Biden'];
    system.assertEquals(1, listContact.size());
    system.assertEquals(acc.Id, listContact[0].AccountId);
}
    @istest
    public static void dmlInsertDemo3Test() {
        // 1 Prepare data 
        // Child objectte yeni bir kayit yapildi ve en sonki account id'ye ekle dendi DmlDemo2 class'inda. Burdan Id'yi aliyorum ki asagida check yapicam. sp.id deyip id'yi aldim. 
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'abcd';
        insert sp;

        // 2. call the method
        DmlDemo2.dmlInsertDemo3();

        // 3.assert
        // burdada yapmis oldugum islemi test ediyorum. diyorumki subject fieldde 'Learn Apex Dml' recordu parent object olan salesforce projectte kayit oldumu.Id'leri system.asserteguals'da check ediyorum.
        List<Salesforce_Ticket__c> stList = [select id, Subject__c, salesforce_project__c from Salesforce_Ticket__c where subject__c = 'Learn APEX DML'];
        system.assertEquals(sp.Id, stList[0].Salesforce_Project__c);
    }
}
