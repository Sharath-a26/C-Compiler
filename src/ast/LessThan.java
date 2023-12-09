package ast;

public class LessThan implements ASTNode {
	ASTNode t1;
	public LessThan(ASTNode t1) {
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("LessThan (");
        t1.print();
        
        System.out.print(")");
	}
}