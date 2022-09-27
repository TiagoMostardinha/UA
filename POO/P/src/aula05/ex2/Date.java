package aula05.ex2;


public class Date {
    private int day;
    private int month;
    private int year;

    //set(d,m,y)
    void set(int d, int m, int y){
        this.day = d;
        this.month = m;
        this.year = y;
    }

    //getDay()
    public int getDay() {
        return this.day;
    }

    //getMonth();
    public int getMonth() {
        return this.month;
    }
    
    //getYear()
    public int getYear() {
        return this.year;
    }

    //increment()
    public void increment(){
        if((day + 1) < monthDays(month, year)){
            day++;
        }else{
            day = 1;
            if(validMonth(month + 1)){
                month++;
            }else{
                month = 1;
                year++;
            }
        }
    }
    //decrement()
    public void decrement(){
        if((day - 1) > 0){
            day--;
        }else{
            if(validMonth(month - 1)){
                month--;
            }else{
                month = 12;
                year--;
            }
            day = monthDays(month, year);
        }
    }

    //toString()
    public String toString() {
        return String.format("%4d -%2d -%2d",year,month,day);
    }




    //validMonth(month)
    public static boolean validMonth(int month){
        return (month <= 12 && month >= 1) ? true : false; 
    }
    //monthDays(month,year)
    public static int monthDays(int month,int year) {
        int[] y = {31,0,31,30,31,30,31,31,30,31,30,31};
        y[1] = leapYear(year) ? 29 : 28;
        return validMonth(month) ? y[month - 1] : -1;
    }
    //leapYear(year)
    public static boolean leapYear(int year) {
        return (year % 4 == 0 || year % 400 == 0) ? true : false;
    }
    //valid(day,month,year)
    public static boolean valid(int day,int month,int year) {
        return (day <= monthDays(month, year) && day > 0 && year > 0) ? true : false;
    }



}
