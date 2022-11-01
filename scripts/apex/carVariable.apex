Car tesla = new Car();
tesla.carName = 'Cyber truck';
tesla.carColor = 'Silver';

system.debug('tesla instance=> ' +tesla);
tesla.drivingAtMaxSpeed();



Car bm = new Car();
bm.carColor = 'Black';
system.debug(bm);
bm.switchOn();
system.debug(bm.carColor);