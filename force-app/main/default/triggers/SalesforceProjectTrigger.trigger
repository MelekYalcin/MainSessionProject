trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {

    if (Trigger.isAfter && Trigger.isInsert) {
        SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);

        system.debug('calling future method......');
        SalesforceProjectTriggerHandler.updateDescription(Trigger.newMap.keySet());
        system.debug('DONE calling future method......');
        
    } 
    if (Trigger.isBefore && Trigger.isUpdate) {
        // SalesforceProjectTriggerHandler.validateProjectCompletion(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        SalesforceProjectTriggerHandler.spCompletedStatus(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
}
