List<string> isimList = new List<String>();
isimList.add('Ayse');
isimList.add('Fatma');
isimList.add('Gul');
isimList.add('Nur');
isimList.add('Yusuf');
system.debug('isim listesi ==> ' + isimList);

system.debug(isimList.get(2));
system.debug(isimList[2]);


// Alisveris listesi olusturalim.. kirtasiye urunleri..
List<string> alisverisList = new List<string>{'kalem', 'silgi', 'defter', 'cetvel'};
System.debug(alisverisList);
alisverisList.add('pergel');
alisverisList.add('kalemtras');
System.debug(alisverisList);
//listemizde zimba yoksa eklesin varsa eklemesin..
Boolean isThere = alisverisList.contains('zimba');//zimba varsa true yoksa false donecek
if (!isThere) {
    alisverisList.add('zimba');
}
System.debug(alisverisList);
integer elemansayisi = alisverisList.size();
System.debug('=======listenin her elemaninin yazilisi=======');
for (Integer i = 0; i < elemansayisi; i++) {
    System.debug(alisverisList.get(i));
}

System.debug('======listenin elemanlarinin tersten yazilisi=======');
for (Integer i = elemansayisi-1; i >= 0; i--) {
    System.debug(alisverisList.get(i));
}