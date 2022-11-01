public class LeapDateMethodClass {
    public boolean leapYearCheck(Date dt) {
        system.debug('dt = > '+dt);
        integer yr = dt.year();
        system.debug('year from dt => '+yr);
        boolean isLeap = Date.isLeapYear(yr);
        return isLeap;

    }
}
