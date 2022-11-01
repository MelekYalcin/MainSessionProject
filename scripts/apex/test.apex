  List<Account> listAcc = new List<Account>();

        Account acc3 = new Account();
        acc3.Name = 'acc3 bulk 1';
        acc3.Phone = '8594154651856';
        listAcc.add(acc3);

        
        Account acc1 = new Account();
        acc1.Name = 'acc bulk 2';
        acc1.Phone = '859417451856';
        listAcc.add(acc1);

        
        Account acc2 = new Account();
        acc2.Name = 'acc bulk 3';
        acc2.Phone = '85941598546';
        listAcc.add(acc2);

        insert listAcc;
