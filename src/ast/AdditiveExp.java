package ast;

public class AdditiveExp implements ASTNode {
	ASTNode t1,t2;
	public AdditiveExp(ASTNode t1, ASTNode t2) {
		this.t1 = t1;
		this.t2 = t2;
	}
	
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("AdditiveExp (");
        t1.print();
        System.out.print(", ");
        t2.print();
        System.out.print(")");
	}
	

}
