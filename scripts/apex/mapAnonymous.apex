Map<String,String> mapCountyCurrency = new Map<String,String>();
mapCountyCurrency.put('USA', 'Dolar');
mapCountyCurrency.put('France','Euro');
mapCountyCurrency.put('India', 'Rupees');
mapCountyCurrency.put('India', 'Rupee');
mapCountyCurrency.put('Turkiye', 'Lira');
mapCountyCurrency.put('El Salvador', 'Bitcoin');
mapCountyCurrency.put('Canada', 'Dolar');

system.debug(mapCountyCurrency);

string IndiaCurrency = mapCountyCurrency.get('India');
string TurkiyeCurreny = mapCountyCurrency.get('Turkiye');

system.debug(IndiaCurrency);
system.debug(TurkiyeCurreny);

Set<String> allCountries = mapCountyCurrency.keySet();
system.debug(allCountries);

List<String> allCurrencies = mapCountyCurrency.values();
system.debug(allCurrencies);

Set<String> countries = mapCountyCurrency.keySet();
system.debug(countries);
for(string eachCountry: countries){
    system.debug(eachCountry);

    string eachCurrency = mapCountyCurrency.get(eachCountry);
    system.debug(eachCurrency);
}