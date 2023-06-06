public  class ContactTriggerHandler {
     
    public static void updateAccountRollup(List<Contact> conTriggerNew){
        Set<Id> accId = new Set<Id>();
        for (Contact eachCon: conTriggerNew) {
            if (eachCon!=null) {
                accId.add(eachCon.AccountId);
            }
        }
        List<Account> accList = [select id,Number_of_contacts__c,(select id from contacts)FROM account WHERE Id IN : accId];
        List<Account> newAccList = new List<Account>();
        for (Account acc : accList) {
            Account a =new Account();
            a.Id = acc.Id;
            a.Number_of_contacts__c = acc.Contacts.size();
            newAccList.add(a);
        }
        if (!newAccList.isEmpty()) {
            update newAccList;
        }
    }
}









//     public static void printLastName(List<Contact> cTriggerNew, Map<Id,Contact> cTriggerOldMap) {
//         for (Contact con : cTriggerNew) {
//             System.debug('Yeni Last name = ' + con.LastName +' - '+ 'Eski Last Name = ' + cTriggerOldMap.get(con.id).LastName);
//         }
//     }
// }



















    // //which all context variable we need here?
    //     //new, old or oldMap
    // public static void validateContactUpdate1(
    //     List<contact> cTriggerNew, 
    //     List<contact> cTriggerOld,
    //     Map<id, contact> cTriggerNewMap, 
    //     Map<id, contact> cTriggerOldMap){

    //         for(Contact newContact: cTriggerNew){
    //             //check if existing leadsource was partner referral.
    //                 //newContact.LeadSource can be partner referral. NO error there.
    //                     //BUT
    //                 //old contact's leadsource is Partner referral then throw error.
    //                 Contact oldContact = cTriggerOldMap.get(newContact.Id);
    //                 if(oldContact.LeadSource == 'Partner Referral'){
    //                     //addError works with Trigger.new or Trigger.newMap record. 
    //                         //We cannot use addError with Trigger.old or Trigger.oldMap
    //                     newContact.addError('Cannot update contact with lead source as Partner Referral');
    //                 }
    //         }

    // }

    // public static void validateContactUpdate2(
    //     List<contact> cTriggerNew, 
    //     List<contact> cTriggerOld,
    //     Map<id, contact> cTriggerNewMap, 
    //     Map<id, contact> cTriggerOldMap){

    //         //do not allow user to update leadsource

    //         //for each for trigger.new
    //             //check if leadsource is changed?
    //                 //old contact lead source != new contact lead source
    //                     //addError
    //         for (Contact newContact : cTriggerNew) {
    //             if (newContact.LeadSource != cTriggerOldMap.get(newContact.id).leadsource) {
    //                 newContact.LeadSource.addError('Cannot update leadsource. Please user! Go away!');
    //             }
    //         }
    //     }

