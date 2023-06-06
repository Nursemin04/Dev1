@istest 
public class SoqlParentChildAssignmentTest {
    @TestSetup
    static void makeData(){
        List<Account> accList = new List<Account>();
        for (Integer i = 0; i < 15; i++) {
            Account acc = new Account();
            acc.name='acc test ' +i;
            accList.add(acc);
        }
        insert accList;

        List<Contact> conList = new List<Contact>();
        for (Integer i = 0; i < 15; i++) {
            contact con=new Contact();
            con.LastName = 'Con Test ' + i;
            con.AccountId= accList[0].Id;
            conList.add(con);
        }
        insert conList;
    } 
    @istest 
    public static void printContactAccountsTest(){
        test.startTest();
        SoqlParentChildAssignment.printContactAccounts();
        test.stopTest();
    }
    @istest 
    public static void printAccountContactsTest(){
        test.startTest();
        SoqlParentChildAssignment.printAccountContacts();
        test.stopTest();
    }
    
}