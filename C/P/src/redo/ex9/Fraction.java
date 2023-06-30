public class Fraction {
    Integer num;
    Integer den;

    Fraction(Integer n, Integer d) {
        this.num = n;
        this.den = d;

        if (this.den == null) {
            this.den = 1;
        }
        this.checkNegative();
    }

    void print() {
        if (this.den == 1) {
            System.out.printf("%d\n", this.num);
            return;
        }

        System.out.printf("%d/%d\n", this.num, this.den);
    }

    private Fraction checkNegative() {
        if (this.num < 0 && this.num < 0) {
            this.num = -this.num;
            this.den = -this.den;
        } else if (this.num > 0 && this.den < 0) {
            this.num = -this.num;
            this.den = -this.den;
        }
        return this;
    }

    Fraction negative() {
        this.num = -this.num;
        return this;
    }

    Fraction reduce() {
        Integer a = this.num;
        Integer b = this.den;

        while (b != 0) {
            int temp = a;
            a = b;
            b = temp % b;
        }

        this.num = this.num / a;
        this.den = this.den / a;

        this.checkNegative();
        return this;
    }

    Fraction add(Fraction f) {
        return new Fraction(this.num * f.den + f.num * this.den, this.den * f.den).checkNegative();
    }

    Fraction sub(Fraction f) {
        return new Fraction(this.num * f.den - f.num * this.den, this.den * f.den).checkNegative();
    }

    Fraction mult(Fraction f){
        return new Fraction(this.num*f.num,this.den*f.den).checkNegative();
    }

    Fraction div(Fraction f) {
        return new Fraction(this.num * f.den, this.den * f.num).checkNegative();
    }

    Fraction pow(Fraction p){
        Double aux = Double.valueOf(p.num) / Double.valueOf(p.den);
        return new Fraction((int)Math.pow(this.num, aux),(int)Math.pow(this.den, aux));
    }

}
