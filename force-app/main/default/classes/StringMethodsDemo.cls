public class StringMethodsDemo {
    public void stringMethod1(){
        system.debug('practice string methods');
        string sDesc = 'learning string methods in apex language.';

        //1. Req: length methods returns integer
                    //sDesc -> string variable for which we want to find length
                    //length() -> string method which returns us length of string
        integer strLength = sDesc.length();
        system.debug('length of string is ' + strLength);

        //2. CONVERT sDesc to UPPERCASE
            //we use method .toUpperCase();
                //which returns string by converting a string to UPPERCASE
        string upSDesc = sDesc.toUpperCase();
        system.debug('uppercase string ==> ' + upSDesc);

        //3. check if string contains 'apex' in it
        boolean checkApex = sDesc.contains('apex');
        system.debug('check if string contains apex ==> ' + checkApex);

        //3.b check if string contains salesforce
        boolean checkSalesforce = sDesc.contains('salesforce');
        system.debug('check if string contains salesforce ==> ' + checkSalesforce);
    }


    public void stringMethod2(){
        //1. trim
        string username = ' cemile u  ';
        system.debug('actual length ' + username.length());
        username = username.trim();//is this line understandable?
        system.debug('after trim ' + username);
        system.debug(username.length());

        string username2 = 'Cemile';
        //check if username is same as username2
        boolean checkNames = username.equals(username2);
        system.debug('check if username is same as username2 ==> ' + checkNames);

        boolean checkNames2 = username.equals('Cemile U');//equals method is case sensitive
        system.debug('check if username is same as Cemile U ==> ' + checkNames2);

        boolean checkNames3 = username.equalsIgnoreCase('Cemile U');//equalsIgnoreCase method is case insensitive
        system.debug('check if username is same as Cemile U(ignorecase) ==> ' + checkNames3);

    }
}