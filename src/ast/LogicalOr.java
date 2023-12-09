package ast;

public class LogicalOr implements ASTNode {
	ASTNode t1;
	public LogicalOr(ASTNode t1) {
		
		this.t1 = t1;
		
	}
	
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("LogicalOr (");
        t1.print();
        
        System.out.print(")");
	}
}
