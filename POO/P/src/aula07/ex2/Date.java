package aula07.ex2;

abstract class Date {
    
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
