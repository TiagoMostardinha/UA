package aula07.ex2;


public class DateYMD extends Date{
    private int day;
    private int month;
    private int year;


    //Constructor
    DateYMD(int d, int m, int y){
        this.set(d, m, y);
    }
    
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
    public void increment(int ndays){
        while(ndays > 0) {
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
            ndays--;
        }
    }
    //decrement()
    public void decrement(int ndays){
        while(ndays > 0){
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
    }

    
    //toString()
    @Override
    public String toString() {
        return String.format("%4d -%2d -%2d",year,month,day);
    }
}
