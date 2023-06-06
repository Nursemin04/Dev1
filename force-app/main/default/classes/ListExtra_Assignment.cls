public class ListExtra_Assignment {
    public static void schoolList(String medium) {
       list<String> listSchool = new  list<String>{ 'S1 English', 'S2 English', 'S3 Turkish', 
       'S4 English','S5 Turkish' ,'S6 Japanese'};

       List<string> mediumSchoolList = new  List<string>();

       for (String eachSchool: listSchool) {
         if (eachSchool.contains(medium)) {
            mediumSchoolList.add(eachSchool);
         }
       }
       System.debug(mediumSchoolList);
    }
}