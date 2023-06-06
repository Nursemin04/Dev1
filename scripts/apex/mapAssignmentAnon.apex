Map<string,Integer> marksOptainInMaths = new Map<String,Integer>{
 '0111CE112' => 40,
 '0111CE102' => 19,
 '0111CE100' => 33,
 '0111CE098' => 40
 };

 System.debug(marksOptainInMaths);

 marksOptainInMaths.put('0111CE75', 86);
 marksOptainInMaths.put('0111CE35', 22);

 Set<String> uniqueRollNumberSet = marksOptainInMaths.keySet();
 System.debug('roll nubbers of set = ' + uniqueRollNumberSet);

 List<Integer>  marksObtainList = marksOptainInMaths.values();
 System.debug('marks optain = ' + marksObtainList);

 for(String eachRollNum : uniqueRollNumberSet){
    Integer eachMark =marksOptainInMaths.get(eachRollNum);

    if(eachMark<20){
        System.debug(eachRollNum +  'is not qualified for next class');

    }
 }
 

