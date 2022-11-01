public class ListDemoForLoop {
    public static void iterateIntegerList() {
        list<integer> listInteger = new list<integer>();
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(15);

        for(integer eachInteger : listInteger){
            system.debug(eachInteger);
        }
    
    }
    public static integer add(list<integer> intList){
        integer returnSUM = 0;
        for(integer eachInt : intList){
            returnSUM += eachInt;
        }
        return returnSUM;
    }
    
}
