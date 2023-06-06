date myBirthday = date.newInstance(1981, 5, 10);
system.debug(myBirthday);

integer year = myBirthday.year();
Integer month = myBirthday.month();
Integer day = myBirthday.day();
Integer sum = year + month + day ;

system.debug(year + '+' + month + '+' + day + '=' + sum );