package ast;

public class Greater implements ASTNode {
	ASTNode t1;
	public Greater(ASTNode t1) {
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("Greater (");
        t1.print();
        
        System.out.print(")");
	}
}