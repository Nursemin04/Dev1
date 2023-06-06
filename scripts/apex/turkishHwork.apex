date mcDob = date.newInstance(1867, 11, 7);
date todaydate = date.today();
System.debug('Bugunun tarihi : ' + todaydate + '   '  + 'Marie Curie\'nin dogum tarihi : '  + mcDob);

Integer gunFarki = mcDob.daysBetween(todaydate);
System.debug('Farkin gun dikkate alinarak hesaplanmasi :' + gunFarki);

Integer ayFarki = mcDob.monthsBetween(todaydate);
System.debug('Farkin ay dikkate alinarak hesaplanmasi :' + ayFarki);

Integer yilFarki = todaydate.year() - mcDob.year();
System.debug('Farkin yil dikkate alinarak hesaplanmasi :' + yilFarki);

Boolean artikYil = date.isLeapYear(mcDob.year());
System.debug('Marie Curie\'nin dogum tarihi artik yil mi? : ' + artikYil);