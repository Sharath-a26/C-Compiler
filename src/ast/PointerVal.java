package ast;

public class PointerVal implements ASTNode {
	ASTNode t1;
	public PointerVal(ASTNode t1) {
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("PointerVal (");
        t1.print();
        
        System.out.print(")");
	}
}