List<Account> accounts = [select id, name from account];
AccountsQueueableExample aq = new AccountsQueueableExample(accounts);
id jobid = system.enqueueJob(aq);