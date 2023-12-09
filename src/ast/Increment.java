package ast;

public class Increment implements ASTNode {
ASTNode t1;
	
	public Increment(ASTNode t1) {
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("Increment (");
        t1.print();
       
        System.out.print(")");
	}
}
