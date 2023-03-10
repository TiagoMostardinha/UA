## SQL 

### Hieraquia de Objetos
- Catalog > schema > table > column

---
### Data Definition Language (DDL)
- Permite definir várias entidades da BD
- Utilizada para especificar a informação acerca de cada relação:
	- O esquema de cada relação
	- O domínio de valores associados com cada atributo
	- Restrições de integridade(entidade e referencial)
	- ...

---
### Schema
- Schema é um “namespace” que agrupa tabelas e outros elementos pertencentes à mesma aplicação, como um sistema de ficheiros.

##### Criar um Schema
```
CREATE SCHEMA COMPANY AUTHORIZATION ‘CCosta’
```

##### Eliminar um Schema
```
DROP SCHEMA COMPANY;
```

---
### Tipos de Dados - SQL
- Tipos de dados básicos:
	- Numbers
	- Characters, strings
	- Date & time
	- Binary objects


- Alguns mais utilizados
	- char(n) -> cadeia de caracteres de tamanho fixo n
	- varchar(n) -> cadeia de caracteres com tamanho máximo n
	- int -> números inteiros (4 bytes)
	- numeric(precisão, escala) -> números reais "sem limite de tamanho"
	- date e time
	- boolean


- **Recomendação:** Utilizar, na medida do possível, tipos de dados compatíveis com o standard.
	- Aumenta a portabilidade da solução

---
### Definição de Domínio
- O comando create domain permite definir novos tipos de dados.
- Um domain pode conter um valor de defeito(default) e restrições do tipo not null e check.

##### CREATE DOMAIN domainname
```
CREATE DOMAIN compsalary INTEGER  
	NOT NULL CHECK (compsalary > 475);  
	
Utilização...  
CREATE TABLE EMPLOYEE (  
	...  
	Salary compsalary,  
	...);
```

---

### Definição de Novo Tipo
- Como alternatica ao domain podemos criar só um novo tipo (alias) com o comando **create type**.

##### CREATE TYPE ... em SQL SERVER
```
Criação...  
CREATE TYPE SSN FROM varchar(9) NOT NULL;  

Utilização...  
CREATE TABLE EMPLOYEE (  
	...  
	Ssn SSN,  
	...);
```

---
### DDL - Criar uma Tabela
```
CREATE TABLE tbname ( A1 D1, A2 D2, ..., An Dn,  
(integrity-constraint1),  
...  
(integrity-constraintK) );  
tbname - nome da relação (tabela)  
CREATE TABLE COMPANY.EMPLOYEE (...)  
CREATE TABLE EMPLOYEE (...)  
COMPANY - nome do schema  
A1 D1, A2 D2, ..., An Dn  
A1...An – Atributos da relação  
D1...Dn – Domínio dos atributos  
Restrições de Integridade  
integrity-constraint1,  
...,  
integrity-constraintN
```
- ex : ( CREATE TABLE... )
	- definindo atributos e respetivo domínio
```
CREATE TABLE EMPLOYEE (  
	Fname VARCHAR(15),  
	Minit CHAR,  
	Lname VARCHAR(15),  
	Ssn CHAR(9),  
	Bdate DATE,  
	Address VARCHAR(30),  
	Sex CHAR,  
	Salary DECIMAL(10,2),  
	Super_ssn CHAR(9),  
	Dno INT);
```

---

### Atributos - Valores por Omissão  
- Podem ser definidos valores por omissão para cada  coluna  
	- utilizando o termo “default”  

##### CREATE com default ...  
```
CREATE TABLE EMPLOYEE (  
	Fname VARCHAR(15),  
	...  
	Salary DECIMAL(10,2) DEFAULT 0,  
	...  
	Dno INT);
```

---
### Restrições de Integridade
- check (P)  
	- impor uma regra a um atributo  
- not null  
	- atributo não pode ser null  
- primary key (A1, ..., An)  
	- definir chave primária  
- unique (A1, ..., An)  
	- chaves candidatas não primárias  
- foreign key
	- definir chave estrangeira

- As restrições podem ser de:  
	- **coluna** -> referem-se a apenas uma coluna e são descritas em frente à coluna  
	- **tabela** -> referem-se a mais do que a uma coluna e ficam separadas da definição das colunas


---
### Restrição Check

##### Restrição CHECK na coluna... 
``` 
CREATE TABLE EMPLOYEE (  
...  
Salary DECIMAL(10,2) CHECK (Salary > 12),  
...);  
```

##### Restrição CHECK na tabela...  
```
CREATE TABLE DEPARTMENT (  
...  
Dept_create_date DATE NOT NULL,  
Mgr_start_date DATE,  
...  
CHECK (Dept_create_date <= Mgr_start_date);
```

- Restrição aplicada a cada atributo referenciado sempre que um tuplo é introduzido ou modificado.

---
### Restrição PRIMARY KEY
- Só podemos definir uma chave primária na tavela
	- Por definilão, a chave primária não pode conter valores repetidos ou nulos.

##### Restrição PRIMARY KEY na coluna...
```
CREATE TABLE EMPLOYEE (  
	...  
	Ssn CHAR(9) PRIMARY KEY,  
	...);
```

##### Restrição PRIMARY KEY na tabela...  
(obrigatório se PK for composta por mais do que um atributo)
```
CREATE TABLE EMPLOYEE (  
	...  
	Ssn CHAR(9),  
	...  
	PRIMARY KEY (Ssn));
```

--- 
### Restrição UNIQUE
- Utilizada para as chaves candidatas alternativas.
	- Não pode conter valores repetidos mas pode ter valores null.

##### Restrição UNIQUE na coluna...
```
CREATE TABLE DEPARTMENT (  
	Dname VARCHAR(15) UNIQUE NOT NULL,  
	Dnumber INT NOT NULL,  
	PRIMARY KEY (Dnumber),  
	... );
```

##### Restrição UNIQUE na tabela...
```
CREATE TABLE DEPARTMENT (  
	Dname VARCHAR(15) NOT NULL,  
	Dnumber INT NOT NULL,  
	PRIMARY KEY (Dnumber),  
	UNIQUE (Dname), ... );
```

---
### Restrição FOREIGN KEY
- Utilizada para declarar chaves estrangeiras.
- Uma chave estrangeira deve referenciar uma chave primária ou única.

##### Restrição FOREIGN KEY na coluna..
```
CREATE TABLE EMPLOYEE (  
	...  
	Super_ssn CHAR(9) REFERENCES EMPLOYEE(Ssn),  
	Dno INT REFERENCES DEPARTMENT(Dnumber) NOT NULL,  
	...);
```

##### Restrição FOREIGN KEY na tabela...
```
CREATE TABLE EMPLOYEE (  
	...  
	Ssn CHAR(9),  
	Dno INT NOT NULL,  
	...  
	FOREIGN KEY (Super_ssn) REFERENCES EMPLOYEE(Ssn),  
	FOREIGN KEY (Dno) REFERENCES DEPARTMENT(Dnumber) );
```

###### Integridade Referencial
- Pode haver uma violação quando são inseridos ou eliminados tuplos ou quando os atributos chave estrangeira ou primária são modificados, resultando numa rejeição da operação.
- Podemos definir as seguintes ações alternativas: “on delete” e “on update”, com as seguintes opções:
	- restrict - nã o deixa efetuar a operação.
	- cascade - apaga os registos associados (delete) ou altera a chave estrangeira (update).
	- set null - a chave estrangeira passa a null.
	- set default - a chave estrangeira passa a ter o valor por omissão.

##### Restrição FOREIGN KEY
```
CREATE TABLE EMPLOYEE (  
	...  
	Ssn CHAR(9),  
	Dno INT NOT NULL,  
	...  
	FOREIGN KEY (Super_ssn) REFERENCES EMPLOYEE(Ssn)  
				ON DELETE SET NULL ON UPDATE CASCADE,  
	FOREIGN KEY (Dno) REFERENCES DEPARTMENT(Dnumber)  
				ON DELETE SET DEFAULT ON UPDATE CASCADE);
```

- Se o tuplo do supervisor é eliminado, a coluna Super_ssn dos supervisionados passa automaticamente a Null.  
- Se o Ssn do supervisor é atualizado, a coluna Super_ssn dos  supervisionados é atualizada em cascata.

---
### Restrições - atribuição de nome 

- Queremos alterar uma restrição de uma tabela temos de “baptizar” a restrição com  
um nome próprio.

##### Restrições com nome...
```
CREATE TABLE EMPLOYEE (  
	...  
	...  
	CONSTRAINT EMPPK  
		PRIMARY KEY (Ssn),  
	CONSTRAINT EMPSUPERFK  
		FOREIGN KEY (Super_ssn) REFERENCES EMPLOYEE(Ssn)  
					ON DELETE SET NULL ON UPDATE CASCADE,  
	CONSTRAINT EMPDEPTFK  
		FOREIGN KEY (Dno) REFERENCES DEPARTMENT(Dnumber)  
					ON DELETE SET DEFAULT ON UPDATE CASCADE);
```

---
### Tabela - Drop
- O comando drop table remove da base de dados toda a informação sobre a tabela e os dados (tuplos).

##### Eliminar a tabela EMPLOYEE
```
DROP TABLE EMPLOYEE;
```

- Caso haja violação de restrições de integridade referencial, a operação é rejeitada, como not null.
- No entanto, a opção CASCADE* permite eliminar a tabela e os elementos referenciados na restrição.

##### Eliminar a tabela EMPLOYEE com opção CASCADE
```
DROP TABLE EMPLOYEE CASCADE;
```

---
### Tabela - Alter
- O comando alter table é utilizado para modificar o esquema da tabela ou restrições existentes.

##### Adicionar atributos à tabela
- ALTER TABLE tablename ADD Attribute Domain
```
ALTER TABLE EMPLOYEE ADD nofiscal INT;
```
	- Todos os tuplos existentes ficam com valor null no novo atributo

##### Adicionar restrições à tabela
- ALTER TABLE tablename ADD CONSTRAINT name theconstraint
```
ALTER TABLE EMPLOYEE ADD CONSTRAINT salarymin CHECK (Salary >475);
```

Eliminar atributos da tabela:  
```
ALTER TABLE tablename DROP COLUMN attributename  
ALTER TABLE EMPLOYEE DROP COLUMN nofiscal;  
```
• Eliminar restrições da tabela:  
```
ALTER TABLE tablename DROP CONSTRAINT name  
ALTER TABLE EMPLOYEE DROP CONSTRAINT salarymin;  
```
• Alterar um atributo de uma tabela:  
```
ALTER TABLE tablename ALTER Attribute Domain  
ALTER TABLE EMPLOYEE ALTER COLUMN noFiscal CHAR(9);
```
