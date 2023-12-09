package ast;

public class EqualityExp implements ASTNode {
	ASTNode t1;
	ASTNode t2;
	public EqualityExp(ASTNode t1,ASTNode t2) {
		this.t1 = t1;
		this.t2 = t2;
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void print() {
		System.out.println("EqualityExp (");
        t1.print();
        System.out.println(",");
        t2.print();
        System.out.print(")");
		
	}
}
