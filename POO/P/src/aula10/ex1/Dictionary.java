package aula10.ex1;

import java.util.Vector;

public class Dictionary {
    private Vector<Word> dictionary = new Vector<Word>();

    //functions
    public void add(Word w){
        this.dictionary.add(w);
    }

    public Word search(String w){
        for (Word dic : this.dictionary) {
            if(dic.getPalavra().equals(w)) return dic;
        }
        return null;
    }

    public void change(Word w){
        assert this.search(w.getPalavra()) != null;
        for (Word word : this.dictionary) {
            if(word.getPalavra().equals(w.getPalavra())){
                word.setSign(w.getSign());
                break;
            }
        }
    }

    public void remove(String w) {
        this.dictionary.remove(this.search(w));
    }

    @Override
    public String toString(){
        String s = "";
        for (Word word : dictionary) {
            s += word.getPalavra() + " - " + word.getSign() + "\n";
        }
        return s;
    }
}
