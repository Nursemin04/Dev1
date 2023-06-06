public class MyCity {
    public void stringMethod() {

        String strng = 'I am a salesforce Developer';


        Boolean forceWord= strng.contains('force');
        System.debug('Cumlemizde force kelimesi var mi: '+ forceWord);

        integer strngLength= strng.length();
        System.debug('Cumledeki karakter sayisi:' +strngLength);

        String strngUpper= strng.toUpperCase();
        System.debug('Cumlenin yeni hali: ' + strngUpper);



    }
    public void printString(integer a,string b){
        for( integer i= 1; i<= a; i++){
            System.debug(b + i);
        }
    }
}