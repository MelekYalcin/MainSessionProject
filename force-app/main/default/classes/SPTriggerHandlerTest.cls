@istest
public class SPTriggerHandlerTest {
    @istest
   public static void testUpdateDescFuture1() {
    // 1. Prepare Data
    Salesforce_Project__c sp = new Salesforce_Project__c();
    sp.Project_Name__c = 'Teach DML to super Batch 10';
    sp.Description__c = 'All are doing great.';
    sp.Status__c = 'New';
    

    Salesforce_Project__c sp2 = new Salesforce_Project__c();
    sp2.Project_Name__c = 'Teach DML to super Batch 10';
    sp2.Description__c = 'All are doing great.';
    sp2.Status__c = 'New';
    

    List<Salesforce_Project__c> listSp = new List<Salesforce_Project__c>{sp, sp2};
    insert listSp;

    set<id> spIds = new Set<Id>{sp.id, sp2.id};

    // test.start test
    test.startTest();

    //    2.1 call future
        SalesforceProjectTriggerHandler.updateDescription(spIds);

    // 2.2 stop test
    test.stopTest();

    // 3. assert
     List<Salesforce_Project__c> resultSP = [select id, description__c from Salesforce_Project__c];
     system.assert(resultSP[0].Description__c.contains('future'));
   }
}
