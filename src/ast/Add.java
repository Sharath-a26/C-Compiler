package ast;

public class Add implements ASTNode {
	ASTNode t1;
	public Add(ASTNode t1) {
		// TODO Auto-generated constructor stub
		this.t1=t1;
		
	}
	@Override
	public void print() {
		// TODO Auto-generated method stub
		System.out.println("Add (");
        t1.print();
       
        System.out.print(")");
	}
}
