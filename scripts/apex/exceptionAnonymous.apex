try{
    List<Account> la;
    Account ac = new Account();
    la.add(ac);

    insert ac;
}catch (DmlException dex){
    system.debug('DML went wrong buddy.');
}catch(exception e){
    system.debug('something went wrong buddy.');
}

system.debug('Apex is SIMPLE.');
