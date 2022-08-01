package aula12.ex2;

public class Movie {
    private String name,rating,genre;
    private double score;
    private int runnning_time;


    // Constructor
    public Movie(String n,double s,String r,String g,int rt){
        this.setName(n);
        this.setScore(s);
        this.setRate(r);
        this.setGenre(g);
        this.setRun(rt);
    }

    public void setName(String n){
        assert n.length() > 0;
        this.name = n;
    }
    public void setScore(double s){
        assert s > 0 && s < 100;
        this.score = s;
    }
    public void setRate(String r){
        assert r.length() > 0;
        this.rating = r;
    }

    public void setGenre(String g){
        assert g.length() > 0;
        this.genre = g;
    }
    public void setRun(int rt){
        assert rt> 0;
        this.runnning_time = rt;
    }

    public double getScore(){
        return this.score;
    }
    
    public int getRun() {
        return this.runnning_time;
    }

    public String getGenre(){
        return this.genre;
    }

    public String toString() {
        return String.format("%-30s %-2.1f %-7s %-15s %-3d", this.name, getScore(), this.rating, getGenre(),getRun());
    }


}
