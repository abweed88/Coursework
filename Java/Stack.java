public class Stack {

	private char[] data;
	private int top;
	private int size;

    public Stack() {
    	top=-1;
    	size=100;
    	data = new char[size];
   }

    public Stack(int n){
    	top=-1;
    	size=n;
    	data = new char[n];
    }

    public boolean push(char newNode){
    	if(top==size-1)
    		return false;
    	else{
    		top+=1;
    		data[top]=newNode;
    		return true;
    	}
    }

	public char pop(){
		int topLocation;
		if(top==-1)
			return ' ';
		else{
			topLocation=top;
			top-=1;
			return data[topLocation];
		}
	}

	public boolean isEmpty(){
		if(top==size-1)
			return true;
		else
			return false;
	}

	public void showAll(){
		for(int i=top; i>=0;i--){
			System.out.println(data[i]);
		}
	}


}
