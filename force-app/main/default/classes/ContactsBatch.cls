public class ContactsBatch implements Database.Batchable<sObject> {
    
        public Database.QueryLocator start(Database.BatchableContext BC) {
            Database.QueryLocator con = Database.getQueryLocator([select id, lastname,description from Contact]);
            return con;
        }
    
        public void execute(Database.BatchableContext BC, List<Contact> conList) {
            List<Contact> conListUpdate = new List<Contact>();
            for (Contact con : conList) {
                con.Description = 'Updated by batch';
                conListUpdate.add(con);
            }
            update conListUpdate;
        }
    
        public void finish(Database.BatchableContext BC) {
            System.debug('Batch Over');
        }
    
    }