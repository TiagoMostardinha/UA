public class Interpreter extends FracLangBaseVisitor<Factor> {

    private Map<String, Factor> variables = new HashMap<>();

    @Override
    public Factor visitAssign(FracLangParser.AssignContext ctx) {
        String id = ctx.ID().getText();
        Factor value = visit(ctx.expr());
        variables.put(id, value);
        return value;
    }

    @Override
    public Factor visitDisplay(FracLangParser.DisplayContext ctx) {
        Factor value = visit(ctx.expr());
        value.display();
        return value;
    }

    @Override
    public Factor visitAddminusExpr(FracLangParser.AddminusExprContext ctx) {
        Factor left = visit(ctx.expr(0));
        Factor right = visit(ctx.expr(1));
        String op = ctx.op.getText();

        // Implement addition and subtraction logic for Factor
    }

    @Override
    public Factor visitMultdivExpr(FracLangParser.MultdivExprContext ctx) {
        Factor left = visit(ctx.expr(0));
        Factor right = visit(ctx.expr(1));
        String op = ctx.op.getText();

        // Implement multiplication and division logic for Factor
    }

    @Override
    public Factor visitUnitaryExpr(FracLangParser.UnitaryExprContext ctx) {
        Factor value = visit(ctx.expr());
        String op = ctx.op.getText();

        // Implement unary operation logic for Factor
    }

    @Override
    public Factor visitIntExpr(FracLangParser.IntExprContext ctx) {
        int num = Integer.parseInt(ctx.INT().getText());
        return new Factor(num);
    }

    @Override
    public Factor visitFracExpr(FracLangParser.FracExprContext ctx) {
        int num = Integer.parseInt(ctx.frac().INT(0).getText());
        int dem = Integer.parseInt(ctx.frac().INT(1).getText());
        return new Factor(num, dem);
    }

    @Override
    public Factor visitIdExpr(FracLangParser.IdExprContext ctx) {
        String id = ctx.ID().getText();
        return variables.get(id);
    }

    @Override
    public Factor visitParathensisExpr(FracLangParser.ParathensisExprContext ctx) {
        return visit(ctx.expr());
    }
}
