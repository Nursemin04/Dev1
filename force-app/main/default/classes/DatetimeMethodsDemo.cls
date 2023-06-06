public class DatetimeMethodsDemo {
    public void calculateAgeInMonths() {
        date todayDate = date.today();

        date cemileBirthDate = date.newInstance(1981, 05, 10);

        Integer ageInMonths = cemileBirthDate.monthsBetween(todayDate);
        System.debug( 'Cemile age in months is ' + ageInMonths);

    }

    public void calculateAgeInDays(){
        date todayDate = date.today();
        date cemileBirthDate = date.newInstance(1981, 5, 10);

        Integer ageInDays = cemileBirthDate.daysBetween(todayDate);
        System.debug('Cemile age in days in ' + ageInDays);
    }

    public void subscriptionEndDate(){
        date todayDate = date.today();

        date endDate = todayDate.addDays(1000);
        System.debug('subscription end date : ' + endDate);

        
        //END date is today. 
        //subs was done for 1000 days
        //what is the start date?
        date newEndDate = date.today();

        date newStartDate = newEndDate.addDays(-1000);
        system.debug('new start date => ' + newStartDate);

        
        //to just get YEAR component from DATE
        integer newSDYear = newStartDate.year();
        //to get MONTH component from DATE use .month()
        integer newSDMOnth = newStartDate.month();
        system.debug('year of new start date is ' + newSDYear);
        system.debug('month of new start date is ' + newSDMOnth);
    }

   
     public void offerEndDateTime(){
        //current datetime
        datetime offerStart = datetime.now();

        datetime offerEnd = offerStart.addHours(51);
        system.debug('offer end datetime ' + offerEnd);
    }

    
        
}