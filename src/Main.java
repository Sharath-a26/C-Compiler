import org.antlr.v4.runtime.ANTLRFileStream;
import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;

public class Main {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try
        {
            //ANTLRFileStream input = new ANTLRFileStream(args[0]);
			ANTLRFileStream content = new ANTLRFileStream("D:\\Compiler_Project\\src\\input");
			ANTLRInputStream ip = new ANTLRInputStream(content.toString());
            //ANTLRInputStream ip = new ANTLRInputStream(input.toString());
            CLexer2 lex = new CLexer2(ip); 
            CommonTokenStream token = new CommonTokenStream(lex);
            CParser2Parser parser = new CParser2Parser(token);
            parser.arithmeticexpression();
            
            
           
            
             
       
            // parser.setErrorHandler(new CustomeErrorHandler());
            System.out.println("\nfinished...");
        }
        catch(Exception e){
            System.out.println(e);
        }

	}
}
