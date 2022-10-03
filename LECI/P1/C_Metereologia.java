import java.util.Scanner;

public class C_Metereologia {
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		System.out.print("N Dias: ");
		int d = sc.nextInt();
		System.out.printf("%n");
		dia[] meteo = new dia[d];
		
		for (int i = 0; i < meteo.length; i++){
			System.out.printf("Dia %d%n",i);
			meteo[i] = readClass();	
			System.out.printf("Amp. T.: %4.2f%n%n", meteo[i].ampt());
		}
		
		eleito p = dia_d(meteo);
		printEleito(p);	
	}
	

	public static dia readClass(){
		double min,max;
		
		do{
			System.out.print("T Min: ");
			min = sc.nextDouble();
		}while(min >50 || min<-20);
		do{
			System.out.print("T Max: ");
			max = sc.nextDouble();
		}while(max >50 || min > max);
		dia a = new dia(min,max);
		return a;
	}
	
	public static eleito dia_d(dia[] ndias){
		double max_at=ndias[0].ampt();
		int cdia =0;
		for (int i = 1; i < ndias.length; i++){
			if(ndias[i].ampt()>max_at){
				max_at = ndias[i].ampt();
				cdia = i;
			}
		}
		
		eleito ok = new eleito(cdia,max_at);
		return ok;
	}
	
	public static void printEleito(eleito crl){
		System.out.println("Amplitude Maxima: "+crl.atm);
		System.out.println("Dia em que ocorreu: "+(crl.day+1));
	}
}
class dia{
	double tmin;
	double tmax;
	
	dia(double _tmin, double _tmax){
		tmin=_tmin;
		tmax=_tmax;
	}
	
	double ampt(){
		return tmax-tmin;
	}
}

class eleito{
	int day;
	double atm;
	
	eleito(int _day, double _atm){
		day = _day;
		atm = _atm;
	}
}

