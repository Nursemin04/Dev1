public  class Datetime_Assignment2 {
    public void diffofDate() { 
        date varTomorrowDate = date.newInstance(2023, 04, 07);
        System.debug(varTomorrowDate);

        date varTodaysDate = date.newInstance(2023, 04, 06);
        System.debug(varTodaysDate);

        Integer daysDifference = varTodaysDate.daysBetween(varTomorrowDate);
        System.debug(daysDifference);
    }

    public void timeCheck(){
        Datetime varTomorrowDateTime = Datetime.newInstance(2023, 04, 07, 07, 00, 00);
        System.debug(varTomorrowDateTime);

        Datetime var10DaysDatetime = Datetime.newInstanceGmt(2023, 04, 16, 09, 00, 00);
        System.debug(var10DaysDatetime);

        long varDatetimeLong = 12339874361L;
        Datetime lng = Datetime.newInstance(varDatetimeLong);
        System.debug(lng); 

        Datetime varAdd7Days = varTomorrowDateTime.addDays(7);
        System.debug(varAdd7Days);

        Datetime varAdd10Days = var10DaysDatetime.addDays(10);
        System.debug(varAdd10Days);
    }
} 