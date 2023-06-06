List<String> listCity = new List<String>{'Madrid','Amsterdam','Istanbul','New York','Paris','Toronto'};
system.debug(listCity);

integer listElemanSayisi =listCity.size();
System.debug('eleman sayisi:' + listElemanSayisi);

string ilkEleman = listCity.get(0);
System.debug('listedeki ilk eleman :' + ilkEleman);

String sonEleman = listCity.get(listElemanSayisi-1);
System.debug('listedeki son eleman :' + sonEleman);

Boolean varmi = listCity.contains('Istanbul');
System.debug('Istanbul var mi? :' + varmi);

Boolean varmi1 = listCity.contains('Roma');
System.debug('Roma var mi? :' + varmi1);

List<String> newCity = new List<String>();
for(String eachCity : listCity){
    string addCity= eachCity + ' City';
    newCity.add(addCity);

}
system.debug('city kelimesi eklenince : ' + newCity);

Set<String> setCity = new Set<String>();
setCity.addAll(listCity);
System.debug(setCity);
setCity.remove('Paris');
System.debug(setCity);
setCity.add('Istanbul');
system.debug(setCity);
setCity.add('Madrid');
system.debug(setCity);
system.debug('setCity size :' + setCity.size());
setCity.clear();
Boolean setEmpty = setCity.isEmpty();
System.debug('bos mu?:' + setEmpty);

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

Set<Integer>setPlaka = mapSehirPlaka.isEmpty();
System.debug('Plakalar ' + setPlaka);
List<String>listPlaka = mapSehirPlaka.values();
system.debug('Sehirler ' + listPlaka);

for(integer eachPlaka: setPlaka){
    string sehir = mapSehirPlaka.get(eachPlaka);
    system.debug('Plakali sehrimiz ' + sehir );
}
 

