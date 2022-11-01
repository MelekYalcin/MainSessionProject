public class SOQLDemo2 {
    public static void ChildToParent_soql1() {
        // Relationships
        //list<sObject> on whichever object we are doing query.
        List<contact> listContact = [select id, name, account.name from contact where account.industry = 'Energy'];
        for (contact eachContact : listContact) {
            string accName = eachContact.account.name;
            system.debug('contact name is ' + eachContact.name + ' account name => ' + accName);
        }
    }
    public static void parentToChild_soql1(){
        List<Account> listAccWithOpps = [select id, name, annualrevenue,type,(select id, name, amount, stagename from opportunities where stagename = 'Closed Won')from account where type = 'Customer - Direct'];
        for (account eachAcc : listAccWithOpps) {
            system.debug('account name is '+eachAcc.name +' and anual revenue is '+ eachAcc.AnnualRevenue);
            List<Opportunity> listOpp = eachAcc.Opportunities;
            for (Opportunity eachOpp : listOpp) {
                system.debug('opp name is '+eachOpp.Name);
                system.debug(('opp amount is '+eachOpp.Amount));
                
            }
        }
    }
    public static void parentToChild_soql2() {
        list<salesforce_project__c> listSP = [select id, name, project_name__c, 
                            (select priority__c, name from salesforce_tickets__r) 
                            from salesforce_project__c];
        integer totalHp = 0;
        for (salesforce_project__c eachSP : listSP) {
            system.debug('project name is ' + eachSP.project_name__c);
            List<salesforce_ticket__c> listST = eachSP.salesforce_tickets__r; 
            //how to get count of the list?
            integer totalTickets = listST.size();
            system.debug('total tickets in project is ' + totalTickets);
            // # of High priority tickets in each project.
            integer eachProjectHP = 0;
            for (salesforce_ticket__c eachST :listST ) {
                // system.debug('each ST => '+eachST);
                if(eachST.priority__c=='High'){
                    eachProjectHP++;
                    totalHp++;
                }
                
            }
            system.debug('# of High priority tickets '+eachProjectHP);
            system.debug('total # of High priority tickets '+totalHp);
        }
    }
}