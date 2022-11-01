// How to fetch records from Custom Settings
// 1. SOQL 
// 2. Use getAll() and getInstance() methods.

// Map<id, account>
// name-> 
map<string, Country_Code__c>allCountryCode = Country_Code__c.getAll();
system.debug(allCountryCode);

for (string eachCountry : allCountryCode.keySet()) {
    Country_Code__c eachCC = allCountryCode.get(eachCountry);
    system.debug(eachCountry + 'ISO Code is.... '+ eachCC.ISO_Code__c);
}

// account record --> billing Country -> United States

string c1 = 'United States';
system.debug(c1 + ' ISOCode is '+ Country_Code__c.getInstance(c1).ISO_Code__c);

string c2 = 'Canada';
system.debug(c2 + ' ISOCode is '+ Country_Code__c.getInstance(c2).ISO_Code__c);