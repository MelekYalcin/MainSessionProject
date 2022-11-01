public  class AccountsBatch implements Database.Batchable<SObject>, Database.stateful{
    integer count = 0;
    // 1.start method
    public database.QueryLocator start(Database.BatchableContext bc){
    // soql to fetch records.
    // on account records
    system.debug('batch started. ');
    database.QueryLocator ql = database.getQueryLocator([select id, description from account]);
    return ql;
    
        
}
public void execute(database.BatchableContext bc, List<Account> scope){
    for (account acc : scope) {
        acc.Description += '...updated via batch';
    }
    count++;
    system.debug('count is '+ count);
    update scope;
    }

public void finish(database.BatchableContext bc){
    system.debug('batch execution finished. Done. Simple? right?');

}
}
 