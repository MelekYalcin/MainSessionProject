trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update, before delete, after undelete) {
  
    


}
// if(Trigger.isAfter && Trigger.isUpdate){
//     for(Opportunity eachOpp: trigger.new){
//     map<id,Opportunity> oldOpp = Trigger.oldMap;
//     if(eachOpp.StageName != oldOpp.get(eachOpp.id).StageName){
//         system.debug(eachOpp.Description + ' ' +eachOpp.Name);
//     }
//     }
// }

    
// if(Trigger.isBefore && Trigger.isUpdate){
//         map<id,Opportunity> oldOppMap = Trigger.oldMap;
//         for(Opportunity eachOpp: Trigger.new){
//         system.debug(oldOppMap.get(eachOpp.id).Name + ' '+oldOppMap.get(eachOpp.id).Amount);
//         system.debug(eachOpp.Name + ' ' +eachOpp.Amount);
//         }
//     }