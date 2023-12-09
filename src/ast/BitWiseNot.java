package ast;

public class BitWiseNot implements ASTNode {
	ASTNode t1;
	public BitWiseNot(ASTNode t1) {
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("BitWiseNot (");
        t1.print();
        
        System.out.print(")");
	}
}