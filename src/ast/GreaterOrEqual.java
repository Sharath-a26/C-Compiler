package ast;

public class GreaterOrEqual implements ASTNode {
	ASTNode t1;
	public GreaterOrEqual(ASTNode t1) {
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("GreaterOrEqual (");
        t1.print();
        
        System.out.print(")");
	}
}