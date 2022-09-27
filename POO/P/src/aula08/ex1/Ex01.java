package aula08.ex1;

import java.util.*;

public class Ex01 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Empresa empresa = new Empresa("AutootuA", "3800-100", "autootua@gmail.com");

        ClassA m1 = new ClassA ("AB-11-BA", "Honda", "CMX500 Rebel ", 471, Tipo.ESTRADA);

        ClassB al1 = new ClassB("BA-11-AB", "Toyota", "GR Yaris Extreme Rally", 1618, 54544, 174);

        Taxi tx1 = new Taxi("AA-22-BB", "Mercedes-Benz", "S 400 CDi", 3996, 54534, 300, 123);

        ClassC pm1 = new ClassC("BB-11-AA", "MAN", "TGM", 6871, 54783, 12000, 20000);

        ClassD pp1 = new ClassD("CC-11-DD", "Volvo", "B12", 12130, 83461, 13000, 56);

        empresa.add(m1);
        empresa.add(al1);
        empresa.add(tx1);
        empresa.add(pm1);
        empresa.add(pp1);

        m1.trajeto(20000);
        al1.trajeto(400000);
        tx1.trajeto(1000000);
        pm1.trajeto(600000);
        pp1.trajeto(500000);

        int op;

        do {
            System.out.println("Operações com Empresa de Transportes :");
            System.out.println("1  - Dados da Empresa");
            System.out.println("2  - Adicionar Motociclo");
            System.out.println("3  - Adicionar Automóvel Ligeiro");
            System.out.println("4  - Adicionar Taxi");
            System.out.println("5  - Adicionar Pesado de Mercadorias");
            System.out.println("6  - Adicionar Pesado de Passageiros");
            System.out.println("7  - Remover Motociclo");
            System.out.println("8  - Remover Outro Veículo");
            System.out.println("9  - Quilómetros Percorridos Por Veículo");
            System.out.println("10 - Veículo com Mais Quilómetros");
            System.out.println("11 - Adicionar Automovel Ligeiro eletrico");
            System.out.println("12  - Adicionar Pesado de Passageiros eletrico");
            System.out.println("0  - Sair");
            System.out.println();
            System.out.print("Operação? ");
            op = sc.nextInt();
            System.out.println();

            switch (op) {

                case 0:
                    break;

                case 1:
                    System.out.println(" ==== Informações Sobre a Empresa ==== ");
                    System.out.println(" - Nome : " + empresa.getNome());
                    System.out.println(" - Código Postal : " + empresa.getPostal());
                    System.out.println(" - Email : " + empresa.getEmail());
                    System.out.println();

                    System.out.println(" ============= Veículos ============= ");
                    System.out.println();
                    for (Veiculo v : empresa.getVeiculo()) {
                        System.out.println(v.toString());
                        System.out.println("======================================");
                    }
                    System.out.println();

                    break;

                case 2:
                    System.out.println(" -- Dados do Motociclo --");
                    System.out.print("Matrícula (XX-XX-XX): ");
                    String matricula1 = sc.next();
                    System.out.print("Marca : ");
                    String marca1 = sc.next();
                    System.out.print("Modelo : ");
                    String modelo1 = sc.next();
                    System.out.print("Cilindrada : ");
                    int cilindrada1 = sc.nextInt();
                    System.out.print("Tipo (Estrada/Desportivo): ");
                    String tipoString = sc.next();
                    Tipo tipo1 = tipoString.toUpperCase().equals( "ESTRADA") ? Tipo.ESTRADA : Tipo.DESPORTIVO;

                    ClassA m = new ClassA(matricula1, marca1, modelo1, cilindrada1, tipo1);
                    empresa.add(m);

                    System.out.println(" ! Motociclo Adicionado ! \n");
                    break;

                case 3:
                    System.out.println(" -- Dados do Automóvel Ligeiro --");
                    System.out.print("Matrícula (XX-XX-XX): ");
                    String matricula2 = sc.next();
                    System.out.print("Marca : ");
                    String marca2 = sc.next();
                    System.out.print("Modelo : ");
                    String modelo2 = sc.next();
                    System.out.print("Cilindrada : ");
                    int cilindrada2 = sc.nextInt();
                    System.out.print("Número do Quadro : ");
                    int numQuadro1 = sc.nextInt();
                    System.out.print("Capacidade da Bagageira : ");
                    int capBagageira1 = sc.nextInt();
                    ClassB al = new ClassB(matricula2, marca2, modelo2, cilindrada2, numQuadro1,capBagageira1);
                    empresa.add(al);

                    System.out.println(" ! Automóvel Ligeiro Adicionado ! \n");
                    break;

                case 4:
                    System.out.println(" -- Dados do Taxi --");
                    System.out.print("Matrícula (XX-XX-XX): ");
                    String matricula3 = sc.next();
                    System.out.print("Marca : ");
                    String marca3 = sc.next();
                    System.out.print("Modelo : ");
                    String modelo3 = sc.next();
                    System.out.print("Cilindrada : ");
                    int cilindrada3 = sc.nextInt();
                    System.out.print("Número do Quadro : ");
                    int numQuadro2 = sc.nextInt();
                    System.out.print("Capacidade da Bagageira : ");
                    int capBagageira2 = sc.nextInt();
                    System.out.print("Número de Licença : ");
                    int numLicenca1 = sc.nextInt();
                    Taxi t = new Taxi(matricula3, marca3, modelo3, cilindrada3, numQuadro2, capBagageira2, numLicenca1);
                    empresa.add(t);

                    System.out.println(" ! Taxi Adicionado ! \n");
                    break;

                case 5:
                    System.out.println(" -- Dados do Pesado de Mercadorias --");
                    System.out.print("Matrícula (XX-XX-XX): ");
                    String matricula4 = sc.next();
                    System.out.print("Marca : ");
                    String marca4 = sc.next();
                    System.out.print("Modelo : ");
                    String modelo4 = sc.next();
                    System.out.print("Cilindrada : ");
                    int cilindrada4 = sc.nextInt();
                    System.out.print("Número do Quadro : ");
                    int numQuadro3 = sc.nextInt();
                    System.out.print("Peso : ");
                    int peso1 = sc.nextInt();
                    System.out.print("Carga Máxima : ");
                    int cargaMax1 = sc.nextInt();
                    ClassC pdm = new ClassC(matricula4, marca4, modelo4, cilindrada4,
                            numQuadro3, peso1,
                            cargaMax1);
                    empresa.add(pdm);

                    System.out.println(" ! Pesado de Mercadorias Adicionado ! \n");
                    break;

                case 6:
                    System.out.println(" -- Dados do Pesado de Passageiros --");
                    System.out.print("Matrícula (XX-XX-XX): ");
                    String matricula5 = sc.next();
                    System.out.print("Marca : ");
                    String marca5 = sc.next();
                    System.out.print("Modelo : ");
                    String modelo5 = sc.next();
                    System.out.print("Cilindrada : ");
                    int cilindrada5 = sc.nextInt();
                    System.out.print("Número do Quadro : ");
                    int numQuadro4 = sc.nextInt();
                    System.out.print("Peso : ");
                    int peso2 = sc.nextInt();
                    System.out.print("Número Máximo de Passageiros : ");
                    int maxPassageiros1 = sc.nextInt();
                    ClassD pdp = new ClassD(matricula5, marca5, modelo5, cilindrada5,
                            numQuadro4, peso2, maxPassageiros1);
                    empresa.add(pdp);

                    System.out.println(" ! Pesado de Passageiros Adicionado ! \n");
                    break;

                case 7:
                    System.out.print("Número de Série do Motociclo : ");
                    int numSerie = sc.nextInt();
                    empresa.remove(numSerie);
                    System.out.println(" ! Motociclo Removido ! \n");
                    break;

                case 8:
                    System.out.print("Número do Quadro do Veículo : ");
                    int numQuadro = sc.nextInt();
                    empresa.removeV(numQuadro);
                    System.out.println(" ! Veículo Removido ! \n");
                    break;

                case 9:
                    for (Veiculo v : empresa.getVeiculo()) {
                        System.out.println(v.getMat() + " - " + v.distanciaTotal() + "km");
                    }
                    System.out.println();
                    break;

                case 10:
                    int maxKm = 0;
                    Veiculo vComMaisKm = null;
                    for (Veiculo v : empresa.getVeiculo()) {
                        if (v.distanciaTotal() > maxKm) {
                            maxKm = v.distanciaTotal();
                            vComMaisKm = v;
                        }
                    }
                    System.out.println(
                            " -- Veículo Com Mais Quilómetros Percorridos -- \n" + vComMaisKm.toString()
                                    + "\nQuilómetros : " + vComMaisKm.distanciaTotal());
                    System.out.println();
                    break;
                case 11:
                    System.out.println("matricula, brand, model, power, num_quadro, capacity, Weight, charge");
                    empresa.add(new ClassBe(sc.nextLine(),sc.nextLine(),sc.nextLine(),sc.nextInt(),sc.nextInt(),sc.nextInt(),sc.nextInt(),sc.nextInt()));
                    break;
                case 12:
                    System.out.println("String matricula, String brand, String model, int power, int num_quadro, int max_capacity, int Weight, int c");
                    empresa.add(new ClassDe(sc.nextLine(),sc.nextLine(),sc.nextLine(),sc.nextInt(),sc.nextInt(),sc.nextInt(),sc.nextInt(),sc.nextInt()));
                    break;
            }

        } while (op != 0);
        sc.close();
    }
}
