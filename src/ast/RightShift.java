package ast;



public class RightShift implements ASTNode{
	ASTNode t1;
	
	public RightShift(ASTNode t1) {
		this.t1 = t1;
	}
	@Override
	public void print() {
		System.out.println("RightShift (");
		t1.print();
		System.out.println(")");
	}
	

}
