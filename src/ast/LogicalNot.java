package ast;

public class LogicalNot implements ASTNode {
	ASTNode t1;
	public LogicalNot(ASTNode t1) {
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("LogicalNot (");
        t1.print();
       
        System.out.print(")");
	}
}