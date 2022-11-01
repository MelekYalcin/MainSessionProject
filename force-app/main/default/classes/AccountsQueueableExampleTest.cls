@istest
public class AccountsQueueableExampleTest {
@TestSetup
static void makeData(){
    // 1. Start: Prepare Data
    List<Account> listAcc = new List<Account>();
    for (Integer i = 0; i < 900; i++) {
        Account acc3 = new Account();
        acc3.name = 'PI Test ' + i;
        acc3.Industry = 'Banking';
        listAcc.add(acc3);
    }
    insert listAcc;
}

@istest
private static void testAccQueue() {
    List<Account> listAcc = [select id, name from Account];

    test.startTest();
    AccountsQueueableExample aq = new AccountsQueueableExample(listAcc);
    system.enqueueJob(aq);
    test.stopTest();

    // assertion
    List<Account> results =[select id, name from account where name like '%SI%'];
    system.assertEquals(900, results.size());
}
}
