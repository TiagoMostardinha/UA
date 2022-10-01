public abstract class Activity {
    protected int num_participantes;
    protected int preco;

    public Activity(int np,int pre){
        this.num_participantes = np;
        this.preco = pre;
    }

    public int getPreco(){
        return this.preco;
    }
    
}
