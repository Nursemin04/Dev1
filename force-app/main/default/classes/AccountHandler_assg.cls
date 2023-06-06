public  class AccountHandler_assg {
    public static void createcontact(List<Account> accTriggerNew, List<Account> accTriggerOld, Map<Id,Account> accTriggerNewMap, Map<Id,Account> accTriggerOldMap) {
    List<Contact> conList = new List<Contact>();
    for(Account eachAcc : accTriggerNew){
        Contact con = new Contact();
        con.LastName = eachAcc.Name;
        con.AccountId = eachAcc.Id;
        conList.add(con);
    }
    if (!conList .isEmpty()) {
        insert conList;
    }
    
    }
}