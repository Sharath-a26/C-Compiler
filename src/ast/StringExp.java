package ast;

public class StringExp implements ASTNode {

	
	String s;
	
	public StringExp(String s1) {
		this.s = s1;
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("StringExp (" + this.s + ")");
	}
 
	
}
