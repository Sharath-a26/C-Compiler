package ast;

public class CharExp implements ASTNode {
	
	String s;
	
	public CharExp(String s1) {
		this.s = s1;
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		
		System.out.println("CharExp (" + this.s + ")");
	}

}
