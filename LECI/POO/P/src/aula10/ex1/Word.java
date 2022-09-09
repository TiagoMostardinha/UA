package aula10.ex1;

public class Word {
    private String palavra,significado;

    public Word(String p, String s){
        this.setPalavra(p);
        this.setSign(s);
    }

    //set..
    public void setPalavra(String p){
        assert p.length() > 0;
        this.palavra = p;
    }

    public void setSign(String s){
        assert s.length() > 0;
        this.significado = s;
    }

    //get..
    public String getPalavra(){
        return this.palavra;
    }

    public String getSign(){
        return this.significado;
    }
}
