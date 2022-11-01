@isTest
public class CalculatorTest {
    @istest
    private static void testPrintMethod() {
      Calculator calc = new calculator();
      calc.printNewMessage('calling from test method. so chill.');
      calc.printAndReturnMessage('calling from test method, again. so chill.');
      calc.add(5, 7);
    }
}

