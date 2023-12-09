package ast;

public class LeftShift implements ASTNode{
	ASTNode t1;
	
	public LeftShift(ASTNode t1) {
		this.t1 = t1;
	}
	@Override
	public void print() {
		System.out.println("LeftShift (");
		System.out.println(t1);
		System.out.println(")");
	}
	

}
