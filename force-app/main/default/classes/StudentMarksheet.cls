public  class StudentMarksheet {
    
String firstName;
String lastName;
Integer mathematics;
Integer english;
Integer chemistry;
static String schoolName;

public StudentMarksheet(){
     schoolName = 'Salesforce Public School';
}
public void setfirstName(string firstName){
    this.firstName = firstName;
}
public String getFirstName(){
    return this.firstName;
}
public void setlastName(string lastName){
    this.lastName = lastName;
}
public string getlastName(){
    return this.lastName;
}
public void setMarks(integer mathematics,integer english,integer chemistry){
    this.mathematics = mathematics;
    this.english = english;
    this.chemistry = chemistry;
}
public void showMarksheet(){
    System.debug('Student name : ' + firstName + ' ' + lastName);
    System.debug('School name : '+ schoolName);
    System.debug('Mathematics  : '+ mathematics);
    System.debug('English : '+ english);
    System.debug('Chemistry : '+ chemistry);

    Integer sum = mathematics+english+chemistry;
    if(sum>=120){
        System.debug('You are passed');
    }else{
        System.debug('You need to study more');
    }
}
}







