public  class ConditionClass_Assignment {
    public string ifClassMethod(integer monthNum) {
         String output_Month = 'Not a valid month';

         if (monthNum ==1) {
            output_Month = 'January';
            
         }else if (monthNum == 2){
            output_Month = 'February';

         }else{
            output_Month= 'Not a valid month';
         }
         return output_Month;
    }
    public string caseMethod(string monthName){
        string output_Quarter = 'Not a valid Quarter';
        switch on monthName {
            when 'January' ,'February', 'March'{
                output_Quarter = 'Quarter 1';
            }
            when 'April','May','June'{
                output_Quarter = 'Quarter 2';

            }
            when 'July','August','September'{
                output_Quarter = 'Quarter 3';
            }
            when 'Octeber','November','December'{
                output_Quarter = 'Quarter 4';
            }   
            when else {
                output_Quarter = 'Not a valid Quarter';
            }
        }
        return output_Quarter; 
    }
}