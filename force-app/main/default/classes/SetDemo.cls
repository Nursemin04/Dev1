public class SetDemo {
    public static void citySet(){
        //we will create set of string and add cities in the set
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('TOKYO');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('Nairobi');

        system.debug('set of cities : ' + cities);
    }

    public static void randomIntegerSet() {
        set<integer> intSet = new set<integer>();
        intSet.add(15);
        intSet.add(25);
        intSet.add(10);
        intSet.add(15);
        intSet.add(15);
        intSet.add(null);
        system.debug(intSet);
    }

    public static void setFromList(){
        //addAll -> it adds all elements from one list or set to another set.
        list<integer> li = new list<integer>{10,15,15,21,21,55,101,101};
        system.debug('list integer -> ' + li);

        //convert list to set by creating set and adding all elements from list to set
        set<integer> si = new set<integer>();
        si.addAll(li);//we can add elements from another list or set
        system.debug('si integer -> ' + si);

        list<integer> newLi = new list<integer>();
        newLi.addall(si);//we can add elements from another list or set
        system.debug('deduplicated list :  ' + newLi);
    }

    //we create set<string> and we will convert each element to uppercase and store in another set.

    public static void upperCaseSet(){
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('TOKYO');
        cities.add('Nairobi');
        cities.add('NAIROBI');
        System.debug('cities ==> ' + cities);

        Set<String> citiesInCaps = new Set<String>();

        for (String eachCity : cities){
            String temp = eachCity.toUpperCase();
            citiesInCaps.add(temp);
        }
        System.debug('cities in caps :' + citiesInCaps);
    }

    public static Set<String> upperCaseSet(Set<String> s1){
        Set<String> s1InCaps = new Set<String>();
        for (String eachStr : s1){
            String temp = eachStr.toUpperCase();
            s1InCaps.add(temp);
            s1InCaps.add(eachStr.toUpperCase());
        }

        return s1InCaps;
    }
}