@istest 
public  class SoqlAndDmlDemoTurkceTest {
    @istest 
    private static void getAccWithOppTest(){
    List<Account> accList = new List<Account>();
    Account acc1 = new Account();
    acc1.name= 'Demo 1';
    accList.add(acc1);

    Account acc2 = new Account();
    acc2.Name = 'Demo 2';
    accList.add(acc2);

    insert accList;
    List<Opportunity> oppList = new List<Opportunity>();
    for (Account acc : accList) {
        Opportunity opp = new Opportunity();
        opp.Name= acc.Name + ' Opportunity';
        opp.CloseDate = date.today().addDays(30);
        opp.StageName = 'Prospecting';
        opp.AccountId= acc.Id;
        oppList.add(opp);
    }
    insert oppList;
    test.startTest();
    Integer accSys = SoqlAndDmlDemoTurkce.getAccWithOpp();
    test.stopTest();
    assert.areEqual(2, accSys);
    }
    @istest 
    private static void createAccountTest(){
        test.startTest();
        SoqlAndDmlDemoTurkce.createAccount('Softinnovas');
        test.stopTest();
        Account acc= [select id,name from account limit 1];
        assert.areEqual('Softinnovas', acc.name);
        List<Contact> conList = [select id from Contact];
        assert.isTrue(conList.size()>0);
    }
}