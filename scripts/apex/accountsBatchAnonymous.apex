AccountsBatch ab = new AccountsBatch();
id batchId = database.executeBatch(ab, 40);
// using this batchId or job id we can get status( queued, In progress, completed, failed ) of batch by doing soql query to Apex jobs.
system.debug('batch id ==> '+batchId);