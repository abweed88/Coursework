

public class xPwrY{

	public static int xToy(int x, int y)
	{	//if power(y) of x is zero the method will return 1
		if (y == 0){
			return 1;
		}

		// Recursion is used to decrease the power one until it reaches zero and then multiply by x
		else
		{
			int reduc = xToy(x, y - 1);
			int sol = x* reduc;
				return sol;
		}
	}

}
