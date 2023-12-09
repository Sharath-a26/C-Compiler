package ast;

public class XorExp implements ASTNode {
	ASTNode t1;
	ASTNode t2;
	public XorExp(ASTNode t1,ASTNode t2) {
		this.t1 = t1;
		this.t2 = t2;
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void print() {
		System.out.println("XorExp (");
        t1.print();
        System.out.println(",");
        t2.print();
        System.out.print(")");
		
	}
}
