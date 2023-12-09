package ast;

public class Xor implements ASTNode {

	ASTNode t1;
	public Xor(ASTNode t1) {
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("Xor (");
        t1.print();
        
        System.out.print(")");
	}
}
