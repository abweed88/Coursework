import java.util.Scanner;

public class RecursionPowerDriver {

		public static void main(String[] args){
			//X,Y are initialized at zero.
			int x = 0;
			int y = 0;

			//User Input
			Scanner input = new Scanner(System.in);

			System.out.println("Please enter a positive number");
			x = input.nextInt();

			System.out.println("Please enter a positive number for the power");
			y = input.nextInt();


			//Output of x^y
			System.out.println(x + " factored by " + y + " is " + xPwrY.xToy(x,y));

			//Output of A*B
			System.out.println("The product of " + x + " and " + y + " is " + ProductInt.products(x,y));
		}
}
