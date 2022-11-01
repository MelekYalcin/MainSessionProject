public class SetDemo {
    public static void citySet(){
        Set<String> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('TOKYO');
        system.debug(cities);
    }
    public static void randomIntegerSet(){
        Set<Integer> randomIntegers = new Set<Integer>();
        randomIntegers.add(10);
        randomIntegers.add(21);
        randomIntegers.add(15);
        randomIntegers.add(15);
        randomIntegers.add(15);
        randomIntegers.add(15);
        randomIntegers.add(15);
        system.debug(randomIntegers);
    }
    public static Set<Integer> setFromList(List<Integer> l1){
        Set<Integer> s1 = new set<Integer>();
        s1.addAll(l1);
        return s1;
    }
    public static void capitaizeAllSet(){
        Set<String> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('TOKYO');
        system.debug(cities);

        Set<String> citiesInCaps = new Set<String>();
        for(string eachCity: cities){
            string tempStr = eachCity.toUpperCase();
            citiesInCaps.add(tempStr);
        }
        system.debug(citiesInCaps);
    }
}
