package ast;

public class Equal implements ASTNode {
	ASTNode t1;
	public Equal(ASTNode t1) {
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("Equal (");
        t1.print();
        
        System.out.print(")");
	}
}