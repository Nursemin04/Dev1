public class String_Assignment {
    public void stringAssignment() { 
        string localString = 'Thanks for the session on the string';
        system.debug(localString);

        Integer localStringLenght=localString.length();
        System.debug( localStringLenght);

        string upLocalString= localString.toUpperCase();
        System.debug(upLocalString);

        Boolean checkSession = localString.contains('session');
        System.debug(checkSession);

        Boolean checkSessions = localString.contains('sessions');
        System.debug(checkSessions);

        Boolean checkSessionup= localString.contains('SESSION');
        System.debug(checkSessionup);



    }    
 
}



    
    
