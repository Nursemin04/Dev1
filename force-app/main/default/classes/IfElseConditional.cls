public class IfElseConditional {
    //integer bir parametre alan bir metot yazin. Bu metot gelen parametredeki sayinin pozitif mi negatif mio oldugunu bize donsun.
    public string positiveOrNegative(integer sayi) {
        string sayiDurumu;
        if (sayi>0) {
            sayiDurumu = 'Positive';
        } else if (sayi<0) {
            sayiDurumu = 'Negative';
        } else {
            sayiDurumu = 'Sifir';
        }
        return sayiDurumu;
    }
    /*3 integer parameter alan, bu notlarin ortalamasina gore
    0-24  => F
    25-44 => E
    45-54 => D
    55-69 => C
    70-84 => B
    85-100 => A sonuclarini dondursun..*/
    public string notOrtalamasi(integer not1, integer not2, integer not3) {
        string gecerNot;
        //1. asama not ortalamalarini bulalim.
        decimal ortalama = (not1 + not2 + not3)/3;
        //2. asama if else ile karsilastirma yapma
        if (ortalama >=0 && ortalama <= 100) {
            if (ortalama < 25) {
                gecerNot = 'F';
            } else if (ortalama < 45) {
                gecerNot = 'E';
            } else if (ortalama < 55) {
                gecerNot = 'D';
            } else if (ortalama < 70) {
                gecerNot = 'C';
            } else if (ortalama < 85) {
                gecerNot = 'B';
            } else  {
                gecerNot = 'A';
            } 
        } else {
            gecerNot = 'Hatali Notlar girdiniz tekrar kontrol edin';
        }
        
        return gecerNot;
    }

     /*Tas kagit makas oyununu iki parametreli sekilde metot 1. Oyuncu kazandi, 2. Oyuncu kazandi veya berabere
             durum1   durum2  durum3 durum4  durum5 durum6
    player 1  tas      tas    kagit  kagit    makas  makas
    player 2  makas    kagit  makas  tas      tas    kagit
    kazanan  player1  player2 p2      p1      p2      p1 */
    public string tasKagitMakas(string player1, string player2) {
        string kazanan;
        if ((player1 == 'tas' && player2 == 'makas') || (player1 == 'kagit' && player2 == 'tas') || (player1 == 'makas' && player2 == 'kagit')) {
            kazanan = 'Player 1';
        } else if ((player1 == 'tas' && player2 == 'kagit') || (player1 == 'kagit' && player2 == 'makas') || (player1 == 'makas' && player2 == 'tas')) {
            kazanan = 'Player 2';
        } else if ((player1 == 'tas' && player2 == 'tas') || (player1 == 'kagit' && player2 == 'kagit') || (player1 == 'makas' && player2 == 'makas')) {
            kazanan = 'beraberlik';
        } else {
            kazanan = 'hatali parametreler girdiniz. tekrar deneyin..';
        }
        return kazanan;
    }
    /*1.Parametredeki meyveye göre meyvenin fiyat bilgisini dönen bir parametreli method createedin.Switch statementini kullanın.
    Orange=0.59
    Apple=0.32
    Banana=0,48
    Cherry=3,00
    Mango=2.79
    Watermelon=6,89*/
    public string switchMethod(string meyve) {
        string result;
        switch on meyve {
            when 'Orange' {
                result = 'Oranges are $0.59.';
            }
            when 'Apple' {
                result = 'Apples are $0.32.';
            }
            when 'Banana' {
                result = 'Bananas are $0.48.';
            }
            when 'Cherry' {
                result = 'Cherries are $3.00.';
            }
            when 'Mango' {
                result = 'Mongoes are $2.79.';
            }
            when 'Watermelon' {
                result = ' Watermelon are $6.89.';
            }
            when else {
                result = 'Sorry, we are out of ' + meyve;
            }
        }
        return result;
    }
}
    
