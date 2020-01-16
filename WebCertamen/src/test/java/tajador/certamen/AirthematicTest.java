package tajador.certamen;

import static org.junit.Assert.assertEquals;

import java.util.Collection;

import org.assertj.core.util.Arrays;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import tajador.certamen.model.Airthematic;

@RunWith(Parameterized.class)
public class AirthematicTest {

  private int firstNumber;

  private int secondNumber;

  private int expectedResult;

  private Airthematic airthematic;

  public AirthematicTest(int firstNumber, int secondNumber, int expectedResult) {
    this.firstNumber = firstNumber;
    this.secondNumber = secondNumber;
    this.expectedResult = expectedResult;
  }

  @Before
  public void inizialize() {
    airthematic = new Airthematic();
  }

  @Parameterized.Parameters
  public static Collection input() {

    return Arrays.asList(new Object[][] { { 1, 2, 3 }, { 11, 22, 33 }, { 111, 222, 333 },
        { 10, 9, 19 }, { 100, 9, 109 } });
  }
  
  @Test
  public void testAirthematicSum() {
    System.out
        .println("Sum of numbers " + firstNumber + " + " + secondNumber + " = " + expectedResult);
    assertEquals(expectedResult, airthematic.sum(firstNumber, secondNumber));

  }
  

}
