# Tema **TabLan**, grupo **tablan-08**
-----

## Constituição dos grupos e participação individual global

| NMec | Nome | email | Participação |
|:---:|:---|:---|:---:|
|  98584 | AFONSO SILVA CASTANHETA | castanheta@ua.pt | 17.0% |
|  98432 | GUILHERME MENDONÇA CLARO | gui@ua.pt | 16.0% |
|  97772 | LEONARDO FRANCISCO SOUSA FIÚZA | l.fiuza@ua.pt | 13.0% |
|  65081 | RUI MIGUEL FONSECA COIMBRA MACHADO | ruimmachado@ua.pt | 19.0% |
| 103690 | SEBASTIAN DUQUE GONZÁLEZ | sebastian.duque@ua.pt |16.0% |
| 103944 | TIAGO FIGUEIRA MOSTARDINHA | tiago.mostardinha@ua.pt | 19.0%|

## Estrutura do repositório

- **src** - deve conter todo o código fonte do projeto.

- **doc** -- deve conter toda a documentação adicional a este README.

- **examples** -- deve conter os exemplos ilustrativos das linguagens criadas.

    - Estes exemplos devem conter comentários (no formato aceite pelas linguagens),
      que os tornem auto-explicativos.

 **correr program** -- ./build.sh + ./compile.sh + ./run.sh

## Relatório
Neste trabalho nós conseguimos atingir os requisitos minimos com

**-Instrução para definir um novo tipo de dados tabela. Nesta definição de um tipo de**
**dados para tabela, as colunas podem ser independentes, ou dependentes. Neste  ́ultimo**
**caso a definição usa uma expressao aritmetica para a respectiva definicao (o que faz comque o seu valor seja automaticamente definido uma vez** **definidos os valores dos quais depende)**

**table** - 
O objeto Table geralmente possui os seguintes atributos:
 - rows: Este atributo representa o número de linhas na tabela e armazena um valor inteiro.
 - columns: Este atributo representa o número de colunas na tabela e também armazena um valor inteiro.
 - data: Este atributo é uma matriz ou lista bidimensional que contém os valores reais dos dados da tabela. Possui dimensões [rows][columns] e armazena os valores de acordo com a estrutura da tabela.

**•Os tipo de de dados inteiro, real e texto**
Na gramática é feita a distinção entre os três tipo de dados.

**•Aceitar expressoes aritmeticas standard para os tipos de dados numericos. Aceita a operacao de concatenacao de texto (operador da soma)**

**•Instrução de escrita no standard output (com e sem mudanca de linha no fim)-**
printTable() imprime a representação textual de uma tabela com os seus conteudos formatados numa forma legivel.
Isto é feito atraves do calculo da largura maxima de cada coluna, que é feito para iterar os dados e encontra o comprimento maximo de cada coluna, incluido os headers, o que vai determinar o numero de linhas maximo. Finalmente imprime os dados com o comprimento maximo de cada coluna.

**•Instrucao de leitura de texto a partir do standard input-**
readAsCSV() - a função le os ficheiros csv e guarda-os na "data" do objeto.Depois cria-se um "BufferedReader" para ler os ficheiros localizados num "path" especifico". Inicializa-mos um "ArrayList<T> headers" para guardar os headers do CSV para depois se iniacializar um "ArrayList<ArrayList<T>> col" para armazenar as colunas do arquivo CSV.
Percorre as colunas em col, crie uma chave para cada coluna usando o formato "key\tstring\t \t" + cabeçalho e adicione a coluna ao mapa de dados com a chave.

**•Operadores de conversao entre tipos de dados (por exemplo, text(10) para converter para texto; ou integer("10") para converter para inteiro)-**

**•Instrucao para adicionar linha no fim de uma tabela**
 O método addRow() recebe um array de objetos como entrada, onde cada objeto representa um valor para uma coluna específica na tabela. Se o comprimento do array de entrada for 0, isso significa que a linha está vazia e será criada uma linha com valores nulos para cada coluna. O método itera sobre as colunas da tabela e adiciona o valor correspondente do array de entrada à coluna. É usado o LinkedHashMap data para aceder às colunas e suas respectivas ArrayLists.O LinkedHashMap data armazena os nomes das colunas como chaves e as ArrayLists como valores.

**•Instrucao para adicionar cabecalho `a tabela ou a cada coluna da tabela-**
O método renameHeader adiciona cabeçalho a cada coluna. Ele recebe dois parâmetros: key e header.
  O parâmetro key representa a chave da coluna no HashMap varTable. Recupera o nome da variável correspondente da varTable usando a key. O parâmetro header representa o novo nome do cabeçalho que será atribuído à coluna.
  O método então modifica o nome da variável substituindo o cabeçalho existente pelo novo nome do cabeçalho e atualiza a varTable com o nome da variável modificado.
  Finalmente, o método atualiza o HashMap data adicionando o nome da variável modificado como chave e transferindo os dados da coluna associados ao nome antigo da variável para a nova chave. E remove o nome antigo da variável do HashMap data.

**•Instrucao de iteracao (loop) das linha de tabelas**
A classe axiliar contem um iterador "doLambda()" que ira receber uma funçao lambda e ira atribuir a todas as linhas no campo dedicado o resultado dessa mesma função. Ou seja se pretendesse fazer t.name+ ":" iria atribuir a todas as linhas o nome da tabela seguido de ":". 




**•Verificação semântica do sistema de tipos-**
A verificação semantica do sistema de tipos é efetuada no visitor, no método visitDeclarationStatement(). Onde cada tipo (real/text/String) é tratado em correspondência com int, float, e String.

## Contribuições

- Use esta secção para expôr as contribuições individuais dos vários elementos do grupo e que
  justificam as participações individuais globais apresentadas no início.

## Guilherme Claro - 98432
  primary-semantic-analysis (16%)
  code-generation (5%)
  grammar(20%)
  examples (20%)
  testing (20%)
  other (19%) (report and helping others)

## Tiago Mostardinha- 
  primary-semantic-analysis (25%)
  code-generation (5%)
  grammar(40%);
  examples (18%)
  testing (20%)
  other (13%) (report and helping others)
## Afonso Castanheta - 98584
  primary-semantic-analysis (16%)
  code-generation (5%)
  grammar(10%)
  examples (25%)
  testing (20%)
  other (19%) (report and helping others)

## Sebastian Gonzalez -
  primary-semantic-analysis (15%)
  code-generation (5%)
  grammar(10%)
  examples (18%)
  testing (20%)
  other (16,6%) (report and helping others)
## Rui Machado -
  primary-semantic-analysis (16%)
  code-generation (80%)
  grammar(10%)
  examples (5%)
  testing (10%)
  other (16,6%) (report and helping others)
## Leonardo Fiuza -
  primary-semantic-analysis (12%)
  code-generation (0%)
  grammar(10%)
  examples (14%)
  testing (10%)
  other (15,6%) (report and helping others)
