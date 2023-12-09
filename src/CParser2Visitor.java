// Generated from CParser2.g4 by ANTLR 4.10.1
 import ast.*; 
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link CParser2Parser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface CParser2Visitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#arithmeticexpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArithmeticexpression(CParser2Parser.ArithmeticexpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#logicalorexpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicalorexpression(CParser2Parser.LogicalorexpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#logicalorexpression2}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicalorexpression2(CParser2Parser.Logicalorexpression2Context ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#logicalandexpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicalandexpression(CParser2Parser.LogicalandexpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#logicalandexpression2}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicalandexpression2(CParser2Parser.Logicalandexpression2Context ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#inclusiveorexpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInclusiveorexpression(CParser2Parser.InclusiveorexpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#inclusiveorexpression2}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInclusiveorexpression2(CParser2Parser.Inclusiveorexpression2Context ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#exclusiveorexpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExclusiveorexpression(CParser2Parser.ExclusiveorexpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#exclusiveorexpression2}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExclusiveorexpression2(CParser2Parser.Exclusiveorexpression2Context ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#andexpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAndexpression(CParser2Parser.AndexpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#andexpression2}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAndexpression2(CParser2Parser.Andexpression2Context ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#equalityexpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEqualityexpression(CParser2Parser.EqualityexpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#equalityexpression2}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEqualityexpression2(CParser2Parser.Equalityexpression2Context ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#relationalexpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRelationalexpression(CParser2Parser.RelationalexpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#relationalexpression2}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRelationalexpression2(CParser2Parser.Relationalexpression2Context ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#shiftexpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitShiftexpression(CParser2Parser.ShiftexpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#shiftexpression2}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitShiftexpression2(CParser2Parser.Shiftexpression2Context ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#additiveexpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAdditiveexpression(CParser2Parser.AdditiveexpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#additiveexpression2}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAdditiveexpression2(CParser2Parser.Additiveexpression2Context ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#multiplicativeexpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMultiplicativeexpression(CParser2Parser.MultiplicativeexpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#multiplicativeexpression2}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMultiplicativeexpression2(CParser2Parser.Multiplicativeexpression2Context ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#unaryexpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnaryexpression(CParser2Parser.UnaryexpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser2Parser#primaryexpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrimaryexpression(CParser2Parser.PrimaryexpressionContext ctx);
}