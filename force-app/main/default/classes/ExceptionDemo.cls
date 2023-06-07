public  class ExceptionDemo {
    public static void demo1(string str) {
           try{
           String str2 = str.toUpperCase();
           System.debug('str2 is ' + str2);
           } catch(NullPointerException nullEx){

            System.debug('str is NULL so we cannot convert to uppercase');
            System.debug('exception: ' + nullEx);
        
        }
        System.debug('code completed.');
    }
}