public  class DML2_Assgn {
    public static void insert_dml() {
       account acc1 = new account();
       acc1.Name = 'Cemile Assignment1';
       insert acc1;
       
       account acc2 = new account();
       acc2.Name = 'Cemile Assignment2';
       insert acc2;

    }

    public static void updating_dml(){
        account acc = new account();
        acc.Name = 'Account Created';
        insert acc;
        
        acc.Name = 'Account Updated';
        update acc;
        
   } 
    


}