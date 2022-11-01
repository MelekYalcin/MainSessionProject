public class ContactTriggerHandler {
    public static void contactUpdateValidation(list<contact> contTriggerNew, list<contact> contTriggerOld, map<id, Contact> contTriggerNewMap, map<id, Contact> contTriggerOldMap) {
    
        for (contact eachContact : contTriggerNew) {
            if (contTriggerOldMap.get(eachContact.id).LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update \'Partner Referral \' Contacts.');
            }
        }
 }
    public static void contactUpdateValidation2(list<contact> contTriggerNew, list<contact> contTriggerOld, map<id, Contact> contTriggerNewMap, map<id, Contact> contTriggerOldMap){

        for (contact eachContact : contTriggerNew) {
            if (eachContact.LeadSource != contTriggerOldMap.get(eachContact.Id).LeadSource) {
                string customMessage =system.label.ContactValidation2;
                eachContact.LeadSource.addError(customMessage);
            }
        }
 }
}
