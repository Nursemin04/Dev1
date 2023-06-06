
Map<Integer,String> mapSehirPlaka = new Map<Integer,String>();
mapSehirPlaka.put(34, 'Istanbul');
mapSehirPlaka.put(16, 'Bursa');
mapSehirPlaka.put(35, 'Izmir');
mapSehirPlaka.put(42, 'Konya');
mapSehirPlaka.put(27, 'Gaziantep');
system.debug(mapSehirPlaka);

Boolean kontrol1 = mapSehirPlaka.containsKey(34);
System.debug('Mapte 34 var mi ? ==> ' + kontrol1);
Boolean kontrol2 = mapSehirPlaka.containsKey(61);
System.debug('Mapte 61 var mi ? ==> ' + kontrol2);

Integer elemanSayisi = mapSehirPlaka.size();
system.debug('Mapimizin eleman sayisi ' + elemanSayisi);

mapSehirPlaka.remove(16);
system.debug('Guncel Map ' + mapSehirPlaka);

Set<Integer> setPlaka = mapSehirPlaka.keySet();
System.debug('Plakalar ' + setPlaka);
List<String>listPlaka = mapSehirPlaka.values();
system.debug('Sehirler ' + listPlaka);

for(integer eachPlaka: setPlaka){
    string sehir = mapSehirPlaka.get(eachPlaka);
    system.debug(eachPlaka + ' Plakali sehrimiz ' + sehir );
}
    

