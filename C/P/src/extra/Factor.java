import java.util.ArrayList;
import java.util.List;

public class Factor {
    private Integer num;
    private Integer dem = 1;

    public Factor(Integer n, Integer d) {
        this.num = n;
        this.dem = d;
    }

    public Factor(Integer n) {
        this.num = n;
    }

    public Factor multiply(Factor a, Factor b) {
        return new Factor(a.num * b.num, a.dem * b.dem);
    }

    public void display() {
        System.out.printf("FRAC: %2d / %2d%n", this.num, this.dem);
    }

    public List<Integer> findFactors(int number) {
        List<Integer> factors = new ArrayList<>();
        for (int i = 1; i <= number; i++) {
            if (number % i == 0) {
                factors.add(i);
            }
        }
        return factors;
    }

    public void displayFactors() {
        List<Integer> numFactors = findFactors(this.num);
        List<Integer> demFactors = findFactors(this.dem);
        System.out.println("Numerator factors: " + numFactors);
        System.out.println("Denominator factors: " + demFactors);
    }
}
