public class Datetime_Asignment {
    public void dateMethods() {
        date varDate = Date.newInstance(2021, 01, 01);
        System.debug(varDate);
    }

    public void timeMethods(){
        time varTime = time.newInstance(06, 21, 29, 00);
        System.debug(varTime);
    }

    public void datetimeMethods(){
        datetime varDateTime = datetime.newInstanceGmt( 2021,01,01,06,21,29);
        System.debug(varDateTime);
    }
}