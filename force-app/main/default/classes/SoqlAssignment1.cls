public class SoqlAssignment1 {
    public static void topEmployees(){
        list<employee__c> listEmp = [select id, first_name__c, last_name__c, salary__c FROM employee__c 
        ORDER BY salary__c desc limit 5];
        for (employee__c eachEmp : listEmp) {
            System.debug('list of top 5 employees ' + eachEmp.first_name__c + ' '  + eachEmp.last_name__c + ' '
            + eachEmp.salary__c);
        }
    }

    public static void mostPopulatedCountry(){
        list<aggregateResult> listCntry = [select COUNT(id), country__c FROM employee__c
         GROUP BY country__c ORDER BY count(id) desc LIMIT 1];
         for (aggregateResult eachAggr : listCntry) {
            System.debug('most populated country ' + eachAggr.get('country__c'));
         }
         
    }
}