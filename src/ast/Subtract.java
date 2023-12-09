package ast;

public class Subtract implements ASTNode {
	ASTNode t1;
	public Subtract(ASTNode t1) {
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("Subtract (");
        t1.print();
       
        System.out.print(")");
	}
}
