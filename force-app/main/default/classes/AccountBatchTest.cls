@istest
public class AccountBatchTest {
    @istest
    private static void testAccBatch() {
        // 1. Start: Prepare Data
        List<Account> listAcc = new List<Account>();
        for (Integer i = 0; i < 900; i++) {
            Account acc3 = new Account();
            acc3.name = 'PI Test ' + i;
            acc3.Industry = 'Banking';
            listAcc.add(acc3);
        }
        insert listAcc;
        // END Prepare Data

        test.startTest();
        AccountsBatch ab = new AccountsBatch();
        database.executeBatch(ab, 900);
        test.stopTest();

        // assertion
        List<Account> result = [select id, name, description from account];
        system.assert(result[0].Description.contains('batch'));
    }
}
