@istest
public class AccountsBatchTest {
    @istest
    public static void testBatch1() {
        list<account> listAcc = new list<account>();
        for (integer i=0; i<900; i++) {
            Account ac= new Account();
            ac.Name = 'test acc ' + i;
            listAcc.add(ac);
                
        }
        insert listAcc;

        test.startTest();
        AccountsBatch ab= new AccountsBatch();
        Database.executeBatch(ab, 900);
        test.stopTest();
    

        list<account> allAccounts = [select id, description from account];
        for (account eachacc : allAccounts) {
        Assert.isTrue(eachAcc.Description.containsIgnoreCase('batch'));
        }
    }
}
