package aula05.ex2;

public class Calendar {
    private int weekday;
    private int year;

    Calendar(int wd,int y){
        this.weekday = wd;
        this.year = y;
    }
    
    public int firstWeekdayOfYear(){
        return this.weekday;
    }

    public int year(){
        return this.year;
    }

    public int firstWeekdayOfMonth(int month) {
        int[] daysM = {0,31,59,90,120,151,181,212,243,273,304,334};

        return (Date.leapYear(year) && month > 2) ? (daysM[month -1] + this.weekday +1) % 7 : (daysM[month -1] + this.weekday) % 7;
    }

    
    public String printMonth(int month) {
        String[] calendar = new String[42];
        String[] monthName = {"janeiro","fevereiro","março","abril","maio","junho","julho","agosto","setembro","outubro","novembro","dezembro"};

        calendar[0] = monthName[month - 1];
        calendar[1] = Integer.toString(this.year);

        int ct = 2;
        for (int i = 0; i < firstWeekdayOfMonth(month); i++) {
            calendar[ct] = "  ";
            ct++;
        }
        for (int i = 0; i < Date.monthDays(month, year); i++) {
            calendar[ct] = Integer.toString(i+1);
            ct++;
        }
        do{
            calendar[ct] = "  ";
            ct++;
        }while(ct != calendar.length);

        return String.format("    %2s %2s\nSu Mo Tu We Th Fr Sa\n%2s %2s %2s %2s %2s %2s %2s\n%2s %2s %2s %2s %2s %2s %2s\n%2s %2s %2s %2s %2s %2s %2s\n%2s %2s %2s %2s %2s %2s %2s\n%2s %2s %2s %2s %2s %2s %2s\n%2s\n\n",calendar[0],calendar[1],calendar[2],calendar[3],calendar[4],calendar[5],calendar[6],calendar[7],calendar[8],calendar[9],calendar[10],calendar[11],calendar[12],calendar[13],calendar[14],calendar[15],calendar[16],calendar[17],calendar[18],calendar[19],calendar[20],calendar[21],calendar[22],calendar[23],calendar[24],calendar[25],calendar[26],calendar[27],calendar[28],calendar[29],calendar[30],calendar[31],calendar[32],calendar[34],calendar[35],calendar[36],calendar[37],calendar[38],calendar[39],calendar[40]);
    }

    public String toString(){
        String s = "";
        for (int i = 1; i <= 12; i++) {
            s += printMonth(i);
        }
        return s;
    }
}
