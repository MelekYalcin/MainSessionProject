public class AccountTriggerHandler {
    public static void updateAccountDescription(List<Account> accTriggerNew, List<Account> accTriggerOld, map<id, Account> accTriggerNewMap, map<id,Account> accTriggerOldMap) {

        for (account eachAcc : accTriggerNew) {
           
            if(Trigger.isInsert && eachAcc.Active__c == 'Yes'){
                eachAcc.Description = 'Account is now active. Enjoy!';
            }

            if(Trigger.isUpdate){
                if(eachAcc.Active__c == 'Yes' &&  accTriggerOldMap.get(eachAcc.Id).Active__c != accTriggerNewMap.get(eachAcc.id).Active__c){
                    eachAcc.Description = 'Account is now active. Enjoy!';
            }
        }
    } 
}
    public static void updateVIPforAllContacts(List<Account> accTriggerNew, List<Account> accTriggerOld, map<id, Account> accTriggerNewMap, map<id,Account> accTriggerOldMap) {
        
        // get AccountsID's for which VIP is changed.
        Set<Id> accountIds = new set<Id>();
        for (account eachAcc : accTriggerNew) {
            if (eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.Id).VIP__c) {
                accountIds.add(eachAcc.Id);
            }
        }
        if (!accountIds.isEmpty()) {

        // all contacts for all of those accounts.
        list<contact> listContact = [select id, vip__c, accountid, name from contact where accountid in :accountIds];

        for (contact eachContact : listContact) {
            Account newAcc = accTriggerNewMap.get(eachContact.AccountId);
            Boolean vipAcc = newAcc.VIP__c;
            eachContact.VIP__c = vipAcc;
        }
        update listContact;
    }
    }
}

