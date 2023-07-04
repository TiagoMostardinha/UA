public class Fraction {
    private Integer num, den;

    Fraction(Integer n, Integer d) {
        this.num = n;
        this.den = d;

        if (d == null)
            this.den = 1;
        this.checkNegative();
    }

    void print() {
        if (this.den == 1) {
            System.out.printf("%d\n", this.num);
        } else {
            System.out.printf("%d/%d\n", this.num, this.den);
        }
    }

    Fraction add(Fraction f) {
        Fraction aux = new Fraction(this.num * f.den + this.den * f.num, this.den * f.den);
        return aux.checkNegative();
    }

    Fraction sub(Fraction f) {
        Fraction aux = new Fraction(this.num * f.den - this.den * f.num, this.den * f.den);
        return aux.checkNegative();
    }

    Fraction mult(Fraction f) {
        Fraction aux = new Fraction(this.num * f.num, this.den * f.den);
        return aux.checkNegative();
    }

    Fraction div(Fraction f) {
        Fraction aux =  new Fraction(this.num * this.den * f.num, this.den * f.num);
        return aux.checkNegative();
    }

    Fraction negate() {
        this.num = -this.num;
        return this;

    }

    Fraction checkNegative() {
        if (this.num < 0 && this.den < 0) {
            this.num = -this.num;
            this.den = -this.den;
        } else if (this.num > 0 && this.den < 0) {
            this.num = -this.num;
            this.den = -this.den;
        }

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
}
