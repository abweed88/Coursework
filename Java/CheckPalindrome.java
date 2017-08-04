import java.util.*;

public class checkPalidrome {

    public static void main(String[] args) {
       Scanner in = new Scanner(System.in);


       Stack test1 = new Stack();
       Queue test2 = new Queue();

	   System.out.println("Please type a string");
	   String usrString = in.nextLine();
       String checkString = usrString.toLowerCase();

       for(int i = 0; i < checkString.length(); i++){
       	 if(checkString.charAt(i)!=' '){
       	 	test1.push(checkString.charAt(i));
       	 	test2.enque(checkString.charAt(i));
       	 }
       	 else{
       	 	continue;
       	 }
       }
		System.out.println(test1.showAll());
		System.out.println(test2.showAll());

      while(!test1.isEmpty()){
		if(test1.pop()==test2.deque()){
			System.out.println(checkString + " is a palidrome");
		}
		else{
			System.out.println(checkString +" is not a palidrome");
		}
    }
  }
}
