package aula04.ex44;
import java.util.*;

public class monthCalendar {
    private static Scanner sc = new Scanner(System.in);
    private static Date data = new Date();
    public static void main(String[] args) {
        System.out.print("Date format(weekday/month/year): ");
        String d = sc.nextLine();

        convertToDate(d);
        howManyDays();
        monthName();
        String[] c = fillCalendar();
        printCalender(c);
    }
    public static void convertToDate(String s1) {
        String[] a = s1.split("/");
        data.weekday = Integer.parseInt(a[0]);
        data.month = Integer.parseInt(a[1]);
        data.year = Integer.parseInt(a[2]);
    }
    public static void howManyDays() {
        int[] months = {31,0,31,30,31,30,31,31,30,31,30,31};
        if(data.month != 2) data.ndays = months[data.month-1];
        else data.ndays = ((data.year % 4) == 0 || (data.year % 400) == 0) ? 29 : 28;
    }
    public static void monthName() {
        String[] nm = {"janeiro","fevereiro","março","abril","maio","junho","julho","agosto","setembro","outubro","novembro","dezembro"};
        data.mname = nm[data.month-1];
        
    }
    public static String[] fillCalendar() {
        String[] calendar = new String[42];
        calendar[0] = data.mname;
        calendar[1] = Integer.toString(data.year);
        int ct = 2;
        for (int i = 0; i < data.weekday-1; i++) {
            calendar[ct] = "  ";
            ct++;
        }
        for (int i = 0; i < data.ndays; i++) {
            calendar[ct] = Integer.toString(i+1);
            ct++;
        }
        do{
            calendar[ct] = "  ";
            ct++;
        }while(ct != calendar.length);
        return calendar;
    }
    public static void printCalender(String[] calendar) {
        System.out.printf("    %2s %2s\nSu Mo Tu We Th Fr Sa\n%2s %2s %2s %2s %2s %2s %2s\n%2s %2s %2s %2s %2s %2s %2s\n%2s %2s %2s %2s %2s %2s %2s\n%2s %2s %2s %2s %2s %2s %2s\n%2s %2s %2s %2s %2s %2s %2s\n%2s",calendar[0],calendar[1],calendar[2],calendar[3],calendar[4],calendar[5],calendar[6],calendar[7],calendar[8],calendar[9],calendar[10],calendar[11],calendar[12],calendar[13],calendar[14],calendar[15],calendar[16],calendar[17],calendar[18],calendar[19],calendar[20],calendar[21],calendar[22],calendar[23],calendar[24],calendar[25],calendar[26],calendar[27],calendar[28],calendar[29],calendar[30],calendar[31],calendar[32],calendar[34],calendar[35],calendar[36],calendar[37],calendar[38],calendar[39],calendar[40]);
    }
}

class Date{
    int weekday;
    int ndays;
    int month;
    int year;
    String mname;
}
