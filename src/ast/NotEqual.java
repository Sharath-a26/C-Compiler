package ast;

public class NotEqual implements ASTNode {
	ASTNode t1;
	public NotEqual(ASTNode t1) {
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("NotEqual (");
        t1.print();
        
        System.out.print(")");
	}
}