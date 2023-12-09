package ast;

public class IdExp implements ASTNode {
	String s;
	public IdExp(String s1) {
		this.s = s1;
	}
	@Override
	public void print() {
		System.out.println("IdExp(" + this.s + ")");
		
	}
	
}
