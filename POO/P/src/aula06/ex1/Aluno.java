package aula06.ex1;
import java.time.LocalDateTime;

public class Aluno extends Pessoa{
    private int nMec;
    private Date DataInsc;

    private static int nMecGen = 100;

    Aluno(String iNome, int iBI, Date iDataNasc, Date iDataInsc){
        super(iNome, iBI, iDataNasc);
        setDateInsc(iDataInsc);
        this.nMec = nMecGen++;
    }
    Aluno(String iNome, int iBI, Date iDataNasc){
        super(iNome, iBI, iDataNasc);
        setDateInsc(LocaltoDate());
        this.nMec = nMecGen++;
    }

    public void setnMec(int nM){
        assert nM > 0;
        this.nMec = nM;
    }

    public void setDateInsc(Date d){
        assert Date.valid(d.getDay(),d.getMonth(),d.getYear());
        this.DataInsc = d;
    }

    public int getNMec() {
        return this.nMec;
    }
    
    private Date LocaltoDate(){
        String s = LocalDateTime.now().toString();
        return new Date(Integer.parseInt(s.substring(0,4)),Integer.parseInt(s.substring(5,7)),Integer.parseInt(s.substring(8,10)));
    }
        
    @Override
    public String toString() {
        return String.format("%s; nMec: %d; inscDate: %s", super.toString(), this.nMec, this.DataInsc);
    }
}
