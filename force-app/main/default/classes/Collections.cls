public  class Collections {
    public static string listaAssignment(Integer i) {
        List<String> LstMonth = new List<String>();
        String output_month = '';

        LstMonth.add('January');
        LstMonth.add('February');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');

        Integer size = LstMonth.size();

        if(i >= 0 && i < size){
            output_month = LstMonth.get(i);
        }else {
            output_month = 'Not a valid month.';
        }
        return output_month;


    }
}