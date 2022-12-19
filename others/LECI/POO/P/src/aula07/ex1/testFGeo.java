package aula07.ex1;

public class testFGeo {
    public static void main(String[] args) {

        Forma[]  anArray = new Forma[30];
        for (int i = 0; i < anArray.length; i++) {
            switch((int)(Math.random() * 3)){
                case 0: anArray[i] = new Circulo((int)(Math.random() * 5 + 1)); break;
                case 1: anArray[i] = new Triangulo((int)(Math.random() * 5 + 1),(int)(Math.random() * 5 + 1),(int)(Math.random() * 5 + 1)); break;
                case 2: anArray[i] = new Retangulo((int)(Math.random() * 5 + 1),(int)(Math.random() * 5 + 1)); break;
            }
        }

        for (int i = 0; i < anArray.length; i++) {
            System.out.printf("Forma: %s | Char.: %s | area: %.2f | perimeter: %.0f\n",anArray[i].doWork(),anArray[i].toString(),anArray[i].area(),anArray[i].perimeter());
        }


        int e = 0;
        for (int i = 0; i < anArray.length - 1; i++) {
            for (int j = i + 1; j < anArray.length; j++) {
                if(anArray[i].doWork() == anArray[j].doWork()){
                    if(anArray[i].doWork() == "Circulo"){
                        e = ((Circulo) anArray[i]).equals((Circulo) anArray[j]) ? e + 1 : e;
                    }
                    if(anArray[i].doWork() == "Triangulo") e = ((Triangulo) anArray[i]).equals((Triangulo) anArray[j]) ? e + 1 : e;
                    if(anArray[i].doWork() == "Retangulo") e = ((Retangulo) anArray[i]).equals((Retangulo) anArray[j]) ? e + 1 : e;
                }
            }
        }

        System.out.println("equals: " + e);
    }
}
