public class ProductInt {

	public static int products(int x, int y)
	{//if y or x is zero the method will return 0  because zero times anything is zero.
		if ((y == 0) || (x==0)){
			return 0;
		}

	//Recursion is used to increment down to zero then add the reduced problem with result.
		else
		{
			int red = products(x,y-1);
			int res = x+red;
				return res;

		}
	}
}
