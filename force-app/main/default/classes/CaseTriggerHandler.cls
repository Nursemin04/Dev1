public  class CaseTriggerHandler {
    
    public static integer recordCount = 0;
    public static integer triggerCount = 0;
    
}
 



trigger Case on Case(before insert,after insert,before update,after update){
    if (trigger.isBefore && trigger.isInsert) {
        System.debug('in before trigger');
        if (Trigger.isInsert) {
            
        }
        if (trigger.IsUpdate) {
            
        }

    }
    if (trigger.isAfter) {
        System.debug('in after trigger');
    }
}
   





