package aula07.ex2;

public class DateND extends Date {
    private int day;
	private int month;
	private int year;

    private int days;

	public DateND(int days) {
        assert days >= 0;
		this.days = days;
	}

	public void increment(int days) {
        this.days += days;
	}

	public void decrement(int days) {
		this.days -= days;
	}

	public int getDay() { return this.day; }
	public int getMonth() { return this.month; }
	public int getYear() { return this.year; }

	public String toString() {
        DateYMD date = new DateYMD(1, 1, 2000);
        date.increment(this.days);
		return date.toString();
	}
}