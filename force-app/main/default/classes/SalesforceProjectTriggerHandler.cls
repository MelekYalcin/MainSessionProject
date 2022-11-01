public class SalesforceProjectTriggerHandler {
    public static void createDefaultTicket(List<Salesforce_Project__c> spTriggerNew) {
        try{
            List<Salesforce_Ticket__c> listST = new list<Salesforce_Ticket__c>();
            // Custom Settings Default Record from Org => home/custom Setting/New/Custom Fields/Mange to Records
            DefaultTicketInfo__c dt = DefaultTicketInfo__c.getOrgDefaults();

            for (Salesforce_Project__c  eachProject : spTriggerNew) {
                Salesforce_Ticket__c st = new Salesforce_Ticket__c();
                st.Subject__c = dt.Subject__c;
                st.Description__c = dt.Description__c;
                st.Salesforce_Project__c = eachProject.Id;
                st.Priority__c = 'Medium';

                listST.add(st);
            }
            if (!listST.isEmpty()) {
                insert listST;
            }
         }catch(Exception e){
            system.debug('some error here: '+ e);
            for (Salesforce_Project__c  eachProject : spTriggerNew){
                eachProject.addError('Some error in creating default ticket. Please contact admin. NOT DEV.');
            }
         }
        
    }
    /* While updating Salesforce_Project status = 'complete'. It should not allow user to mark salesforce project as coplete. if any ticket of that project is not completed./ */
    public static void validateProjectCompletion(List<Salesforce_Project__c> spTriggerNew, List<Salesforce_Project__c> spTriggerOld, map<id, Salesforce_Project__c> spTriggerNewMap, map<id,Salesforce_Project__c> spTriggerOldMap) {

        // get projects for which STATUS is Changed to 'Completed'
        /* Update yapilmis olan ve eger ki satus filed'de 'Completed' ise bana store et.*/
        Set<Id> setProjectId = new set<id>();
        for (Salesforce_Project__c  eachSP : spTriggerNew) {
            if (eachSP.Status__c != spTriggerOldMap.get(eachSP.Id).Status__c && eachSP.Status__c =='Completed') {
                setProjectId.add(eachSP.Id);
            }
        }
        // system.debug('sp ids in set==> '+ setProjectId);

        // get all tickets of 'setProjectId' which are NOT completed 
        /*Store etmis oldugum 'setProjectid(completed esit olan recordlar) ve child object olan TICKET objectteki status field eger 'Completed'e' esit degilse ise list'te store et. */
        List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
            where salesforce_project__c in :setProjectId and status__c != 'Completed'];

            /*List'te store etmis oldugum parent status filed =='Completed ve child object status filed'i 'not completed'olanlari bana for each loop'da doneder. */
            for (salesforce_ticket__c eachST : listST) {
                /*spTriggernewMap.get ile update yapilmis olan ve complete ait olan recordlari ve child object status fielde ait olan not copleted olanlari bana store et. eachST bana not completed olanlari gosterecek ve salesforce project olan parent objectte coplete olani gosterecek ve ozaman yanlis diyecek ve error verecek. */
                Salesforce_Project__c sp = spTriggerNewMap.get(eachST.Salesforce_Project__c);
                sp.addError('Cannot completed project because all its tickets are not completed.');
        }
    }

    // static.
    // returns void.
    // pass primitive datatype, collections of primitive datatype
    
    @future
    public static void updateDescription(set<id> projectIds) {
        system.debug('future method called');
        system.debug('intered project Ids => ' + projectIds);
        // update description of all the created projects HERE.

        // soql to fetch project records
        List<Salesforce_Project__c> listSP = [select id, description__c from Salesforce_Project__c where id in :projectIds ];
        for (Salesforce_Project__c sp : listSP) {
            sp.Description__c += ' Updated from future';
        }
        // fire the trigger, again
        update listSP;
    }

    public static void spCompletedStatus(List<Salesforce_Project__c> spTriggerNew, List<Salesforce_Project__c> spTriggerOld,
    Map<id, Salesforce_Project__c> spTriggerNewMap, Map<id, Salesforce_Project__c> spTriggerOldmap) {
set<id> spIds = new set<id>();
for (salesforce_project__c spNew : spTriggerNew) {
Salesforce_Project__c spOld = spTriggerOldmap.get(spNew.Id);
//check if status is changed to completed
if (spNew.Status__c == 'Completed' && spOld.Status__c != 'Completed') {
spIds.add(spNew.Id);
}
}
//here we will call future method
system.debug('sp ids status completed => ' + spIds);
if (!spIds.isEmpty()) {
    updateTicketStatus(spIds);
}
}

@future
private static void updateTicketStatus(set<id> spIds) {
List<Salesforce_Ticket__c> listST = [select id, status__c from Salesforce_Ticket__c 
where Salesforce_Project__c in :spIds and status__c != 'Completed'];
for (salesforce_ticket__c st : listST) {
st.Status__c = 'Completed';
}
update listST;
}
}