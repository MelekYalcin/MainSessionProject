@istest
public class CalculatorSimpleTest {
    @istest
    private static void testAdd1() {
        integer sum = CalculatorSimple.add(10, 15);
        integer expectedSum = 25;
        system.assertEquals(sum, expectedSum);
    } 

    @istest
    private static void testAdd2() {
        integer sum = CalculatorSimple.add(10, 15, 10);
        integer expectedSum = 35;
        system.assertEquals(sum, expectedSum);
    }
}
