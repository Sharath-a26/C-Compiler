package ast;

public class LogicalAnd implements ASTNode{
	ASTNode t1;
	public LogicalAnd(ASTNode t1) {
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("LogicalAnd (");
        t1.print();
       
        System.out.print(")");
	}
}
