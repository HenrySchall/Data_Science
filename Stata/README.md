## Introdução
- Dowload Stata 17 MP:
- Dowload Stata 18 SE: 
- Comunidade: https://www.statalist.org/forums/
  
> Stata is a statistical software created by the company StataCorp, headquartered in College Station, Texas, USA. It was initially developed in 1985 by William Gould, the company's founder, who sought to create software with simple navigation to analyze statistical data. Unlike its more popular open source competitors, such as Python and R, Stata is a close source software, with all its updates carried out by the parent company, not allowing users to download content to the application.

### Data Types
Qualitative (non-numeric attributes).
- Nominal: Denominations (colors, gender, race, titles, etc.)
- Ordinal: attributes that can be classified (e.g., rating of most-watched movies, level of education, level of satisfaction, etc.).

Quantitative (numerical attributes).
- Discrete: finite or enumerable values ​​(number of people in a room, number of cars in a parking lot, etc.)
- Continuous: infinite possible values ​​in an interval (income, time, height, etc.).

### Doedit
> In Stata, you can create a file called doedit, with the extension .do. These files are scripts that can store commands typed into Stata in text format, as if it were a notepad. They help automate data analysis by allowing users to execute a series of commands in a sequential and repeatable manner.

### Basic Commands

- Criando diretório de trabalho
```stata
cd "C:\Stata"
```

- Abrir configuracoes
```stata
set
```

- Define a vírgula como separador decimal
```stata
set dp comma
```

- Retornar ao padrão (separador decimal ponto)
```stata
set dp period
```

- Desativar a pausa automática ao exibir longas listas de resultados na tela
```stata
set more off
```

- Abrir doedit
```stata
doedit
```
- Gerar nova variavel
```stata
generate
```

-
// resumir variaveis
summarize ou sum
-
// descrever variáveis
describe 
-
// criar tabelas de frequência
tab
-
// usar para limpar a base anterior e carregar uma nova
clear
-
// visualizar base
view 
-
// limpar aba de resultados
cls
-
// re-classificar variávies
recode
recode idade (0/17 = 1 "Jovem") (18/64 = 2 "Adulto") (65/max = 3 "Idoso")

// substituir variáveis
replace
replace idade = 25 if sexo == 1

// organizar de forma crescente
bysort

// pedir ajuda
help



























### Practical Demonstration
> The example and the database are taken from the book: "*Econometric Analysis of Cross Section and Panel Data, Second Edition, by Jeffrey M. Wooldridge*"

Carregar Base -> health.dta

```r
sum
```
![1](https://github.com/user-attachments/assets/6a0e0bb3-380f-484e-8d34-abcdbac26e37)

```r
tab age
```
![2](https://github.com/user-attachments/assets/be67fa1b-0776-40ad-8d9a-1d28ca7c24f3)

> Podemos observar que a base de dados apresenta idades que vão de 65 anos até 90 anos

```r
sum age if female==1
```
![3](https://github.com/user-attachments/assets/1f93dd99-31f0-4dcb-9bc3-649b2d38803f)

> Obtendo o resumo da variável age, condicionado ao fator de ser mulher

```r
sum age if female==0
```
![4](https://github.com/user-attachments/assets/acc6c15e-877e-4133-b4aa-b80cc7e502cb)

> Obtendo o resumo da variável age, condicionado ao fator de não ser mulher
 
```r
sort female
by female:sum age
```
![5](https://github.com/user-attachments/assets/bc362efb-010d-4667-85c0-be9e96431a4c)
> Obtendo o resumo da variável female, condicionado ao fator idade (age)

```r
generate log_age = log(age)
gen ln_age = ln(age)
```
> Gerando os logs da variável age

```r
pwcorr age famsze, star(.1)
```
![7](https://github.com/user-attachments/assets/3f2dd87e-5de6-416e-b975-f2cfdcc75f83)
> Gerando matriz de Correlação.
  - O comando star(.1) adiciona asteriscos à matriz de correlação para indicar a significância estatística com um nível de significância de 0.1 (10%)

```r
reg totexp age famsze
```
![8](https://github.com/user-attachments/assets/53122f77-059c-4324-9bad-a2da4bd94bd9)

* a ordem é variavel dependente e depois as variaveis explicativas
* estimação de todos os elementos é sempre usando MQO
* std. err = erros padrões
* se o meu modelo passa no teste global eu não preciso fazer os testes individuais
* leitura coeficiente -> controlado pela variavel idade quando vc aumenta o tamanho da familia em 1 unidade os dados em media os gastos de saude caem 482 dolares
* R-Squared * 100 = significa que 24% da idade e o do tamanho da familia explicam os gastos totais
* analisando coeficientes -> age é positivo então o aumento da idade aumenta os gastos da família, já o tamanho da família é negativo, isso significa que familias maiores gastam menos correlcao e o grau de associacao eentre duas variavies


