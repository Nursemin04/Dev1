public class Collections_Assignment {
    public static void listMethods(){
        List<String> listDays = new List<String>{'Monday', 'Tuesday' ,'Wednesday','Thursday','Friday','Saturday','Sunday'};
        listdays.add('Wednesday');
        System.debug('add==> ' + listdays);
        listdays.sort();
        System.debug('sort ==>' + listDays);
        integer index =listDays.indexOf('Friday');
        System.debug('indexOf==> ' + index);
        listDays.set(3,'Tuesday');
        System.debug('set==> ' + listDays);
        List<string> listDays1 = new List<string>();
        listDays1.addAll(listDays);
        System.debug('addAll==> ' + listDays1);
        listDays1.clear();
        System.debug('clear==> ' + listDays1);
        Integer x = listDays.size();
        System.debug('size==> ' + x);
        listDays.remove(2);
        System.debug('remove==> ' + listDays);
        Boolean equal =listDays.equals(listDays1);
        System.debug('equal ?==>' + equal);
        Boolean y = listDays.isEmpty();
        System.debug('isEmpty ==> ' + y);
        Boolean z = listDays1.contains('Sunday');
        System.debug('contains?==> ' + z);
       
    }

    public static void setMethods(){
        Set<String> setDays = new Set<String>{'Monday', 'Tuesday' ,'Wednesday','Thursday','Friday','Saturday','Sunday'};
        System.debug('set days ==>' + setDays);

        integer sizeOf = setDays.size();
        System.debug('size is ==>' + sizeOf);

        setDays.add('Cuma');
        System.debug('add Cuma ==>' + setDays);

        setDays.remove('Wednesday');
        System.debug('after remove Wednesday ==>' + setDays);

        Boolean isThere = setDays.contains('Friday');
        System.debug('contains Friday?==>' + isThere);

        Boolean empty = setDays.isEmpty();
        System.debug('is empty ==>' + empty);

        Set<String> setDays1 = new Set<String>{'Mon','Tues','Wed'};
         System.debug('setDays1');

         Boolean equalll = setDays.equals(setDays1);
         System.debug('setDays equals setDays1??? ==>' + equalll);

         Boolean same = setDays.containsAll(setDays1);
         System.debug('contains all ==> ' + same);

         Integer hCode = setDays1.hashCode();
         System.debug('has code ?? ==> ' + hCode);

         setDays1.clear();
         System.debug('after clear ==> ' + setDays1);





    }
}