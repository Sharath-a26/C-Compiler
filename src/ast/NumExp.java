package ast;

public class NumExp implements ASTNode {

	String t;
	public NumExp(String t1) {
		this.t = t1;
	}
	@Override
	public void print() {
		System.out.println("NumExp(" + this.t + ")");
		
	}

}
