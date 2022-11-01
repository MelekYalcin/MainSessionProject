public class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'learning string method in apex language';

        
        integer lengthOfStr = sessionDescription.length();
        system.debug('length of string is ..... ' + lengthOfStr);

        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('capital string is.... '+sessionDescriptionInCaps);

        boolean containsApex = sessionDescription.contains('apex');
        system.debug('contain apex??????????? '+containsApex);


        boolean containsApex3 = sessionDescription.containsIgnoreCase('APEX');
        system.debug('contain apex??????????? '+containsApex3);

        boolean containsSalesforce = sessionDescription.contains('salesforce');
        system.debug('contain salesforce??????????? '+containsSalesforce);
    }
}