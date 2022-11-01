public class Car {
    public string carColor = '';

    public string carName = '';

    Integer maxSpeedKmPerHr = 150;

    public void switchOn(){
        system.debug('Starting the CAR NOW.');
    }
    public void drive(){
        switchOn();
        system.debug(carName);
    }
    public void drivingAtMaxSpeed(){
        drive();
        string drivingDescription = 'driving ' + carName + ' at ' + maxSpeedKmPerHr + 'km/hr';
        system.debug(drivingDescription);
    }
}


