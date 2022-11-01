public class DatetimeMethodsDemo {
    public void calculateAgeInMonths() {
        date birthdate = date.newInstance(1987, 6, 1);
        date todayDate = date.today();

        Integer ageInMonths = birthdate.monthsBetween(todayDate);
        system.debug('Melek age is months is '+ageInMonths);
    }
    public void calculateAgeInDays(){
        date birthdate = date.newInstance(1987, 6, 1);
        date todayDate = date.today();

        Integer ageInDays = birthdate.daysBetween(todayDate);
        system.debug('Melek age is days is '+ageInDays);
    }
    public void printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();

        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('subscription end date is.... '+subscriptionEndDate);

        Integer endDateYear = subscriptionEndDate.year();
        system.debug('subscription end year.. '+endDateYear);

        Integer endDateMonth = subscriptionEndDate.month();
        system.debug('subscription end month.. '+endDateMonth);
    }
    public void printOfferEndDateTime(){
        Datetime offerStartDT = Datetime.now();
        system.debug(offerStartDT);
        
        Datetime offerEndDT = offerStartDT.addHours(51);
        system.debug('Offer end date is '+ offerEndDT);

        date offerEndDate = offerEndDT.date();
        system.debug(offerEndDate);
    }
}
