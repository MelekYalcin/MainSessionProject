public class DmlDemo2 {
    public static void dmlInsertDemo2(){
        Account acc = [select id, name from account order by createddate desc limit 1];

        Contact cnt = new Contact();
        cnt.LastName = 'Biden';
        // established relationship with account 
        cnt.AccountId= acc.Id;

        insert cnt;
    } 
    public static void dmlInsertDemo3() {
        Salesforce_Project__c sp = [select id from Salesforce_Project__c order by createddate desc limit 1];

        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'Learn APEX DML';
        st.Priority__c = 'High';
        st.Status__c = 'New';
        st.Requested_by_date__c = date.newInstance(2022, 9, 09);
        st.Salesforce_Project__c = sp.id;
        insert st;
    }
    public static void dmlMultipleRecord_right1() {
        List<Account> listAcc = new List<Account>();

        Account acc = new Account();
        acc.Name = 'acc bulk 1';
        acc.Phone = '8594154651856';
        listAcc.add(acc);

        
        Account acc1 = new Account();
        acc1.Name = 'acc bulk 2';
        acc1.Phone = '859417451856';
        listAcc.add(acc1);

        
        Account acc2 = new Account();
        acc2.Name = 'acc bulk 3';
        acc2.Phone = '85941598546';
        listAcc.add(acc2);

        insert listAcc;
    }
    public static void dmlMultipleRecord_right2() {
        List<Account> listAcc = new List<Account>();
        for (Integer i = 0; i < 155; i++) {
            Account acc2 = new Account();
            acc2.Name = 'SoftInnovas 30ct v'+i;
            acc2.Phone = '452178963';
            acc2.Active__c = 'yes';
            listAcc.add(acc2);
        }
        insert listAcc;
    } 
    public static void dmlMultipleRecordUpdate_right1() {
        List<Account> listAcc = [select id, name from account order by createddate desc limit 155];

        List<Account> updateAcc = new List<Account>();

        for (account eachAcc : listAcc) {
            eachAcc.Name =eachAcc.Name + 'via B.0';
            updateAcc.add(eachAcc);
        }
        if (!updateAcc.isEmpty()) {
            update updateAcc;
        }
    }
    // I did, but not sure 
    public static void updateDescOpp(){
        List<Opportunity> oppDesc = [select id, name from Opportunity order by amount desc limit 10];
        for (Opportunity eachOpp : oppDesc) {
            eachOpp.Description = 'This is one of the top 10 opportunities Please work on this properly';

            update oppDesc;
        }
    }
    }
