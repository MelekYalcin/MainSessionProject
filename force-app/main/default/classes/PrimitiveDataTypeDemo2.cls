public class PrimitiveDataTypeDemo2 {
    public void printNewDate() {
        system.debug('create new date instance');

        // new date instance using Year,Month,Day
        Date newDate1 = Date.newInstance(1999, 2, 17);
        system.debug('new date1 => '+newDate1);
        Date newDate2 = date.newInstance(2022, 3, 18);
        system.debug('new date2 => '+newDate2);

        Date todayDate = date.today();
        system.debug('today\'s date '+todayDate);
    }
    public void printNewTime(){
        Time myTime = time.newInstance(18, 9, 30, 25);
        Time myTime2 = time.newInstance(7, 9, 8, 15);
        system.debug('my time => '+myTime);
        system.debug('my time => '+myTime2);
    }
    public void printNewDateTime(){
        Date todayDate = date.today();
        system.debug(todayDate);
        Time myTime = time.newInstance(18, 9, 30, 25);

        // 1) new datetime using DATE and TIME
        Datetime dt1 = Datetime.newInstance(todayDate, myTime);
        system.debug('dt1=> '+dt1);

        // 2) new dateyime using YEAR,MONTH, and DAY
        // time will be midnight. it takes midningt for OUR USER's  TIMEZONE(Pasific)
        // but, when it prints, it prints, GMT(+7 of pacific.)
        Datetime dt2 = Datetime.newInstance(2025, 9, 14); 
        system.debug('dt2=> '+dt2);

        // 3) create datetime using YEAR,MONTH,DAY,HOUR,MINUTE,SECOND.
        // It creates new instance in Pasific timezone.
        // It displays in gmt timezone.
        Datetime dt3 = Datetime.newInstance(2022, 4, 15, 8, 8, 8);   
        system.debug('dt3=> '+dt3);

        // 4) with longTime???
        Long longTime1 =0;
        Datetime dt4 = Datetime.newInstance(longTime1);
        system.debug('dt4=> '+dt4);

        Long longTime2 =1341828183000L;
        Datetime dt5 = Datetime.newInstance(longTime2);
        system.debug('dt5=> '+dt5);
        
        // 5) 
        Datetime dt6 = Datetime.newInstanceGmt(2022, 4, 15, 8, 8, 8);
        system.debug('dt6=> '+dt6);

        Datetime dt7 = Datetime.now();
        system.debug('dt7=> '+dt7);

        // getTime();
        dateTime birtDate = Datetime.newInstance(1987, 06, 01, 05, 30, 00);
        long longBirthDate = birtDate.getTime();
        system.debug('birthday in millisecond from 1970 Jan 1 0000 GMT => '+ longBirthDate);

    }
}
