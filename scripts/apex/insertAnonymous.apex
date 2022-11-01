List<Account> listAcc = new List<Account>();

Account acc = new Account();
acc.Name = 'acc bulk 1';
acc.phone = '956874125632';
listAcc.add(acc);

Account acc2 = new Account();
acc2.Name = 'acc bulk 1';
acc2.phone = '956874125632';
listAcc.add(acc2);
// required field is missing 
Account ac1 = new Account();
Account ac2 = new Account();

listAcc.add(ac1);
listAcc.add(ac2);

// this will ERROR even if any ONE record has error in it. NONE will be inserted.
// insert listAcc;
// this will ERROR even if any one record has error in it. NONE WILL BE INSERTED.
// Database.insert(listAcc, true);
// this will ERROR only bad guys. Good ones will be inserted.
// Database.insert(listAcc, false);

list<database.SaveResult> result = database.insert(listAcc, false);
for(database.SaveResult eachResult :result){
    // check if successfully inserted.
    if(eachResult.isSuccess()){
        system.debug('account created succesfully. Id is '+ eachResult.getId());
    }else{
        system.debug('Bad guy. Error is ' +eachResult.getErrors());
    }
}