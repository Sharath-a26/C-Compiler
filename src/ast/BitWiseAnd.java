package ast;

public class BitWiseAnd implements ASTNode {
	ASTNode t1;
	public BitWiseAnd(ASTNode t1) {
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("BitWiseAnd (");
        t1.print();
        
        System.out.print(")");
	}
}