package aula08.ex2;

public abstract class Alimento {
    protected double proteinas = 100, calorias = 100, peso;

    public Alimento(double proteinas, double calorias, double peso) {
        this.proteinas = proteinas;
        this.calorias = calorias;
        this.peso = peso;
    }

    public double getProteinas() {
        return proteinas;
    }

    public double getCalorias() {
        return calorias;
    }

    public double getPeso() {
        return peso;
    }

    protected abstract boolean vegetariano();

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;

        long temp = Double.doubleToLongBits(proteinas);
        result = prime * result + (int) (temp ^ (temp >>> 32));

        temp = Double.doubleToLongBits(calorias);
        result = prime * result + (int) (temp ^ (temp >>> 32));

        temp = Double.doubleToLongBits(peso);
        result = prime * result + (int) (temp ^ (temp >>> 32));

        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }

        if (obj == null) {
            return false;
        }

        if (getClass() != obj.getClass()) {
            return false;
        }

        Alimento a = (Alimento) obj;

        if (this.hashCode() != a.hashCode()) {
            return false;
        }

        return true;
    }

    public String toString() {
        return ", Proteinas: " + proteinas + ", Calorias: " + calorias + ", Peso: " + peso;
    }
}