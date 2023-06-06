public class SOQL_Assignment {
    public static void soql_WhereClause(){
        List<Contact>lstcontact = [select id, name from contact where name LIKE 'A%'];
        System.debug(lstcontact);
        System.debug('size of lstcontact is ' + lstcontact.size());
    }

    public static void soql_FromMethod(){
        List<Contact>lstcontact = [select lastname, phone from contact ];
        for (contact eachCont : lstcontact) {
            System.debug('lastname : ' + eachCont.LastName);
            System.debug('phone number : ' + eachCont.Phone);
        }
    }
}