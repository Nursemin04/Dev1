ParametreliMetotlar15 pm15 = new ParametreliMetotlar15();
integer uznlk = pm15.uzunluk('Bugun hava guzel');
System.debug(uznlk);


ParametreliMetotlar15 pm = new ParametreliMetotlar15();
pm.printWelcome();
pm.welcomePerson('Betul');
pm.welcomePerson('Ayhan');
pm.welcomePerson('Elif');
integer sum = pm.toplama(11, 22);
System.debug(sum);

System.debug(pm.toplama(11, 22));

date dt1 = date.newInstance(2022, 07, 11);
Boolean sonuc = pm.artikYil(dt1);
System.debug(dt1.year() + ' yili artik yil mi? ' + sonuc);







