trigger ContactTrigger on Contact (before insert, after insert, before update ,after update,before delete,after delete,after undelete) {
 
    if (Trigger.isAfter) {
  
    if (Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete) {
    ContactTriggerHandler.updateAccountRollup(Trigger.new);
    }
    if (Trigger.isDelete) {
    ContactTriggerHandler.updateAccountRollup(Trigger.old);
    }
  }
}











    // //2 tane contact update edildiginde bunlarin eski last name ve yeni last name lerini yan yana yazdiralim..
    // if (trigger.isUpdate && trigger.isAfter) {
    //   ContactTriggerHandler.printLastName(trigger.new, trigger.oldMap);
    // } 
 

    // List<contact> conTriggerNew = trigger.new;
    // //trigger.isBefore is true when record reaches BEFORE trigger of timeline
    // if (Trigger.isBefore) {
    //     system.debug('before trigger called.');
    //     if (Trigger.isInsert) {
    //         system.debug('before insert trigger called');
    //     } 
    //     if (Trigger.isUpdate) {
    //         system.debug('before update trigger called');
    //     }
    // }

    // if (Trigger.isAfter) {
    //     system.debug('after trigger called.');
    //      if (Trigger.isInsert) {
    //         system.debug('after insert trigger called');
    //     } 
    //     if (Trigger.isUpdate) {
    //         system.debug('after update trigger called');
    //     }
    // }
    





    trigger ContactTrigger on contact (before trigger,after trigger){
       if (trigger.isBefore && trigger.isInsert){

       }
    }

    public static void updatecontact(){
      set<id> accids = new Set<accIds>();
      account acc=nem account()
    }