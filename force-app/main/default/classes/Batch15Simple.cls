public class Batch15Simple {
    public void hosgeldin(){
       System.debug('Hosgeldiniz..');
    }

    public void fullName(){
        string isim = 'Cemile';
        string soyad = 'Ugur';
        System.debug(isim);
        System.debug(soyad);
        //string fullname = 'Cemile Ugur';
        string fullName = isim + ' ' + soyad;
        System.debug(fullName);
    }
}
