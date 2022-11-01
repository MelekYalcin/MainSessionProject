public  class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        system.debug('Inside print basic dataypye method.');

        string batchName='Batch 10';
        integer totalCandidates=86;
        boolean isAdminCompleted=true;

        system.debug(batchName);
        system.debug(totalCandidates);
        system.debug(isAdminCompleted);

        string batchDescription=batchName+' is amazing, really.';
        system.debug(batchDescription);

        decimal decValue=777888.88;
        system.debug('Decimal value is '+decValue);

        Long longValue=1548962314L;
        system.debug('Long value is '+longValue);

        object obj='This is a string object';
        system.debug('obj is => '+obj);
        
        ID id1 = '0015g00000rtcluAAA';
        system.debug(id1);

    }
}
