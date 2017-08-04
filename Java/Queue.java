public class Queue {
	private char[] data;
	private int size;
	private int numOfNodes;
	private int front;
	private int rear;

    public Queue() {
    	size=100;
    	numOfNodes=1;
    	front=0;
    	rear=0;
    	data = new char[size];
    }

    public Queue(int n){
    	size=n;
    	numOfNodes=1;
    	front=0;
    	rear=0;
    	data=new char[n];
    }

    public boolean enque(char newNode){
    	if(numOfNodes==size)
    		return false;
    	else{
    		numOfNodes+=1;
    		data[rear]=newNode;
    		rear=(rear+1)%size;
    		return true;
    	}
    }

    public char deque(){
    	int frontLocation;
    	 if(numOfNodes==0)
    	 	return ' ';
    	 else{
    	 	frontLocation=front;
    	 	front=(front+1)%size;
    	 	numOfNodes = numOfNodes-1;
    	 	return data[frontLocation];
    	 }
    }

    public void showAll(){
    	int i=front;
    	 for(int c=1;c<=numOfNodes;c++){
    	 	System.out.println(data[i]);
    	 	i=(i+1)%size;
    	 }
    }

}
