public class Loops_assignment {
    public integer whileLoopMethod(Integer n) {
        Integer i= 1;
        while (i<=n) {
            System.debug(i);
             i++;
         }
        return i;
     }
     public void printEven(){
        
        for (Integer i = 1; i <= 100; i++) {
            Integer remainder =math.mod(i, 2);
            if (remainder==0){
                System.debug(i);
            }
        }
    }
     public Integer printPower(integer n){
      Integer result = 1;
        for (Integer i = 0; i < n; i++) {
            result = result * n;
        }
        
        return result;
        
    }
}