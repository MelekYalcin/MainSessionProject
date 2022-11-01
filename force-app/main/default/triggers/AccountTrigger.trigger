trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    
    if(Trigger.isBefore){
     AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    //  call some async method.
    // when we call future method, we do not get job id.
}
if (Trigger.isAfter && Trigger.isUpdate) {
    AccountTriggerHandler.updateVIPforAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
}
    
}
















    // 10.08.2022
    // map<id, Account> newAccMap = Trigger.newMap;
    // Map<Id,Account> oldAccMap = Trigger.oldMap;
   
    // system.debug('----start---- ');
    
    // if(Trigger.isBefore && Trigger.isUpdate){
    //     Set<Id> setAccId = newAccMap.keySet();

    //     integer countWSupdate = 0;

    //     for (id eachId : setAccId) {
    //         Account oldAccount = oldAccMap.get(eachId);
    //         string oldWebsite = oldAccount.Website;

    //         Account newAccount =newAccMap.get(eachId);
    //         string newWebsite = newAccount.Website;

    //         if(oldWebsite != newWebsite){
    //             countWSupdate++;
    //             system.debug(newAccount.Name);
    //             system.debug(newWebsite);
    //         }
    //     }
    //     system.debug(countWSupdate);
    // }


    // system.debug('---end---');
    

    /// 10/07/2022

    // if(Trigger.isAfter && Trigger.isUpdate){
    //     set<id> setAccIds = newAccMap.keySet();

    //     for (id eachId : setAccIds) {
            
    //         Account newAccount = newAccMap.get(eachId);
    //         system.debug('new account '+ newAccount.name);

    //         Account oldAccount = oldAccMap.get(eachId);
    //         system.debug('old account '+ oldAccount.name);
    //     }
    // }







    // if(Trigger.isBefore && Trigger.isInsert){
    //     system.debug('before insert old map ==> '+ oldAccMap);
    //     system.debug('before insert new map ==> '+ newAccMap);
    // }
    // if(Trigger.isAfter && Trigger.isInsert){
    //     system.debug('after insert trigger.old ==> '+ oldAccMap);
    //     system.debug('after insert trigger.old ==> '+ newAccMap);
    // }
    
    // if(Trigger.isBefore && Trigger.isUpdate){
    //     system.debug('before update old map ==> '+ oldAccMap);
    //     system.debug('before update new map ==> '+ newAccMap);
    // }
    // if(Trigger.isAfter && Trigger.isUpdate){
    //     system.debug('before update old map ==> '+ oldAccMap);
    //     system.debug('before update new map ==> '+ newAccMap);
    // }




    // if(Trigger.isAfter){
    //     List<Account> newAccounts = Trigger.new;

    //     Set<Id> setAccIds = new set<id>();
    //     for (account eachAcc : newAccounts) {
    //         setAccIds.add(eachAcc.Id);
    //     }
    //     system.debug('set of ids ==> ' +setAccIds);
    // }
 




    // if(Trigger.isBefore && Trigger.isInsert){
    //     system.debug('before insert trigger.old ==> '+Trigger.old);
    // }
    // if(Trigger.isAfter && Trigger.isInsert){
    //     system.debug('after insert trigger.old ==> '+Trigger.old);
    // }
    
    // if(Trigger.isBefore && Trigger.isUpdate){
    //     system.debug('before UPDATE trigger.old ==> '+Trigger.old);
    // }
    // if(Trigger.isAfter && Trigger.isUpdate){
    //     system.debug('after UPDATE trigger.old ==> '+Trigger.old);
    // }



// /////////////////////////////////////////////////////////////////////






    // List<Account> newAccounts = Trigger.new;
    // system.debug('after trigger.new ==> '+ newAccounts.size());

    // if(Trigger.isBefore && Trigger.isInsert){
    //     system.debug('before trigger.new ==> '+ newAccounts);
        
    //     for (account eachAcc : newAccounts) {
    //         system.debug('before acc id ==> '+ eachAcc.id + ', acc name ==> '+ eachAcc.name);
    //     }
    // }
    
    // if(Trigger.isAfter && Trigger.isInsert){
    //     system.debug('after trigger.new ==> '+ newAccounts);
        
    //     for (account eachAcc : newAccounts) {
    //         system.debug('after acc id ==> '+ eachAcc.id + ', acc name ==> '+ eachAcc.name);
    //     }
    // }
    // if(Trigger.isBefore && Trigger.isUpdate){
    //     system.debug('before update trigger.new ==> '+ newAccounts);
        
    //     for (account eachAcc : newAccounts) {
    //         system.debug('before acc id ==> '+ eachAcc.id + ', acc name ==> '+ eachAcc.name);
    //     }
    // }
    
    // if(Trigger.isAfter && Trigger.isUpdate){
    //     system.debug('after update trigger.new ==> '+ newAccounts);
        
    //     for (account eachAcc : newAccounts) {
    //         system.debug('after acc id ==> '+ eachAcc.id + ', acc name ==> '+ eachAcc.name);
    //     }




























/*
if(Trigger.isBefore){
        system.debug('Before trigger - insert or update.');
        if(Trigger.isInsert){
            system.debug('Account before insert trigger called.');
        }
        if(Trigger.isUpdate){
            system.debug('Account before update trigger called.');
        }
    }
    if(Trigger.isAfter){
        system.debug('After trigger - insert or update.');
        if(Trigger.isInsert){
            system.debug('Account after insert trigger called.');
        }
        if(Trigger.isUpdate){
            system.debug('Account after update trigger called.');
        }
    }
*/





/*
    if(Trigger.isBefore && Trigger.isInsert){
        system.debug('account before insert trigger called');
    }
    if(Trigger.isAfter && Trigger.isInsert){
    system.debug('account after insert trigger called');
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        system.debug('account before update trigger called');
    }
    if(Trigger.isAfter && Trigger.isUpdate){
    system.debug('account after update trigger called');
    }
*/

// if(trigger.isBefore){
//     system.debug('account before insert trigger called');
// }
// if(Trigger.isAfter){
//     system.debug('account after insert trigger called');
// }

// if(Trigger.isInsert){
//     system.debug('Account before insert trigger called');
// }
// if(Trigger.isUpdate){
// system.debug('Account before update trigger called');
