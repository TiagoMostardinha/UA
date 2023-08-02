# Tema **FigLan**, grupo **figlan-g1**
-----

## Constituição dos grupos e participação individual global

| NMec | Nome | email | Participação |
|:---:|:---|:---|:---:|
|  98432 | GUILHERME MENDONÇA CLARO | gui@ua.pt | 50.0% |
| 103944 | TIAGO FIGUEIRA MOSTARDINHA | tiago.mostardinha@ua.pt | 50.0% |

## Estrutura do repositório

- **src** - deve conter todo o código fonte do projeto.

- **doc** -- deve conter toda a documentação adicional a este README.

- **examples** -- deve conter os exemplos ilustrativos das linguagens criadas.

    - Estes exemplos devem conter comentários (no formato aceite pelas linguagens),
      que os tornem auto-explicativos.

## Relatório

- Use esta secção para fazer um relatório sucinto mas explicativo dos objetivos concretizados.

## Gramatica
FigLan.g4 - Foi criada uma gramatica que permite a criação de figuras geometricas, como pontos,linhas,circulos e figuras, e a sua manipulação, como mostrar,esconder,atribuir valores,declarar variaveis,imprimir strings e ciclos.
## Estruturas
Na produção da gramática, foram utilizadas as seguintes estruturas:

1. 'declare' - Declaração de variáveis
2. 'assign' - Atribuição de valores a variáveis
3. 'show' - Mostrar a ponto,linha,circulo ou figura definida numa janela grafica
4. 'hide' - Esconder a ponto,linha,circulo ou figura definida numa janela grafica
5. 'print' - Imprimir uma string
6. 'println' - Imprimir uma string e mudar de linha
7. 'loop'- Ciclos,(for) para repetir um conjunto de instruções um determinado numero de vezes 

## Tipos
Na produção da gramática, foram utilizados os seguintes tipos:

1. 'int' - Números inteiros
2. 'real' - Números reais
3. 'text' - Strings
4. 'point' - Pontos
5. 'line' - Linhas
6. 'circle' - Circulos
7. 'figure' - Figuras

## Expressões
As expressões mais comuns na gramatica são, relacionadas principalmente com operaçoẽs de alguma forma retornaram um valor.
Que são as seguintes:

- Criação de um novo circulo feito de duas maneiras
- Criação de uma nova linha feito de duas maneiras
- Expressões com maior importancia(parenteses)
- Expressões unarias
- Operações aritméticas de soma,subtração, multiplicação e divisão
- Operacão de leitura de um valor e inseção de input pelo utilizador
- Operção de conversão de um valor
- Expressão de criação de um ponto

## Expressões terminais
- ID - qualquer sequencia de caracteres que comece com uma letra e que contenha apenas letras e digitos
- INT - qualquer sequencia de digitos
- REAL - qualquer sequencia de digitos seguida de um ponto e de uma sequencia de digitos
- TEXT - qualquer sequencia de caracteres entre aspas duplas
- COMMENT- qualquer sequencia de caracteres que comece com o caracter '#' sera ignorada
## Compilador

Compiler.java -Foi usado um visitor que à medida que percorre a árvore gera o código java correspondente com o uso de string templates.

## Analisador semântico
FigLanSemantic.java -

O analisador semântico é responsável por verificar se as variáveis são declaradas antes de serem usadas, se os tipos das expressões são compatíveis com os tipos dos operadores e se as expressões são válidas.

*Ler Aspetos não feitos*
## Funções auxiliares

-Point - Criação de um ponto a partir de dois valores
-Circle - Criação de um circulo a partir de um ponto e de um raio
-Line - Criação de uma linha a partir de dois pontos
-Figure - Criação de uma figura a partir de um conjunto de pontos
-Gui - Criação de uma janela grafica para desenhar as figuras
-Geometrics - Classe pai


## Aspetos nao feitos
Todo envolvimento de conversão e leitura que estão presentes no exemplo 3 nao foram implementados nem na Analise Semantica nem no Compilador.

A anaĺise semantica não foi propriamente implementada, apenas foram feitas algumas verificações. 
Por falta de tempo e, o facto de sermos so dois elementos fez consumir muito tempo em outros aspetos do projeto.

## Contribuições
Fui tudo dividido bastante 50/50 já que fizemos a divisão mais correta do trabalho e fomos mais dinamicos porque trabalhamos juntos e não em separado e no inicio sem o git fizemos tudo ao pe um do outro(gramatica e funçoes auxiliares)
