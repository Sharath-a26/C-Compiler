package ast;

public class Multiply  implements ASTNode {
	ASTNode t1;
	public Multiply(ASTNode t1) {
		
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("Multiply (");
        t1.print();
       
        System.out.print(")");
	}
}