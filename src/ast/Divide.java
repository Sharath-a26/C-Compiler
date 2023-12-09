package ast;

public class Divide implements ASTNode {
	ASTNode t1;
	public Divide(ASTNode t1) {
		
		this.t1 = t1;
		
	}
	
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("Divide (");
        t1.print();
        
        System.out.print(")");
	}

	

}
