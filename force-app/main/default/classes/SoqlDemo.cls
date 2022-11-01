public class SoqlDemo {
    public static void accountSOQL_1(){
        List<Account> listAcc = [select id, name, phone, active__c from account where name like '%A%'];
        system.debug(listAcc);
        system.debug(listAcc.size());

        Account acc = [select id, name, phone from account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug(acc);
        // system.debug(acc.name);      
    }
    public static void accountSOQL_2(){
        Account acc = [select id, name, Phone, AccountNumber from account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug(acc);

        string accName = acc.Name;
        string accPhone = acc.Phone;
        system.debug(accName);
        system.debug(accPhone);
        system.debug(acc.AccountNumber);
    }
    public static void accountSOQL_3(){
        List<Account> listAcc = [select id, name, Phone, AccountNumber from account ORDER BY CreatedDate DESC ];
        system.debug(listAcc);

        for (Account eachAccount : listAcc) {
            string accountName = eachAccount.name;
            string accountPhone =eachAccount.phone;
            system.debug(accountName);
            system.debug(accountPhone);
            
        }
    }
    public static void accountSOQL_filter(){
    string accName = 'Salesforce Inc.';
    List<Account> listAcc = [select id, name from account where name= :accName ];     
    system.debug(listAcc);
    }
    // Parameter olarak deger ver
    public static void accountSOQL_filter(string accName){
        List<Account> listAcc = [select id, name from account where name= :accName ];     
        system.debug(listAcc);
    }
}