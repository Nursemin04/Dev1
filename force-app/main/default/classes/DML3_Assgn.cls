public  class DML3_Assgn {
    public static void createBulkContacts() {
        List<Contact> listCon = new List<Contact>();
        for(Integer i=0 ; i<4; i++) {
            contact con1 = new contact ();
            con1.FirstName = 'Mark';
            con1.lastName = 'Ruffalo';
            listCon.add(con1);
        }
        for(Integer i=0 ; i<3; i++) {
            contact con2 = new contact ();
            con2.FirstName = 'Chris';
            con2.lastName = 'Hemsworth';
            listCon.add(con2);
        }
        for(Integer i=0 ; i<3; i++) {
            contact con3 = new contact ();
            con3.FirstName = 'Scarlett';
            con3.lastName = 'Johansson';
            listCon.add(con3);
        }
        System.debug(listCon.size());
        insert listCon;

    }

    public static Integer updateBulkContacts(string lastName, string phone){
        List<Contact> listCon = [select id, lastName, phone from Contact];
        List<Contact> updatedListCon = new  List<Contact>();
        for (Contact eachCon : listCon) {
            if (eachCon.lastname == lastName) {
                eachCon.Phone=phone;
                updatedListCon.add(eachCon);
            }
        }
        update updatedListCon;
        return updatedListCon.size();

    }
}