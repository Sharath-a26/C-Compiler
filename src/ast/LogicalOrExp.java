package ast;

public class LogicalOrExp implements ASTNode {
	ASTNode t1;
	ASTNode t2;
	public LogicalOrExp(ASTNode t1,ASTNode t2) {
		this.t1 = t1;
		this.t2 = t2;
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void print() {
		System.out.println("LogicalOrExp (");
        t1.print();
        System.out.println(",");
        t2.print();
        System.out.print(")");
		
	}
}
