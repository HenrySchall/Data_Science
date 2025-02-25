## Introduction
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

- Creating working directory
```stata
cd "C:\Stata"
```

- Open settings
```stata
set
```

- Sets comma as decimal separator
```stata
set dp comma
```

- Return to default (dot decimal separator)
```stata
set dp period
```

- Disable auto-pause when displaying long lists of results on the screen
```stata
set more off
```

- Open doedit
```stata
doedit
```

- Generate a new variable
```stata
generate
```

- Summarize variables
```stata
summarize ou sum
```

- Describe variables
```stata
describe
```

- Create frequency tables
```stata
tab
```

- Clear the old base and load a new one
```stata
clear
```

- Base visualization 
```stata
view 
```

- Clear results
```stata
cls
```

- Organize in ascending order
```stata
bysort
```

- Ask Help
```stata
help
```

### Arithmetic Operations
- Soma
```stata
+
```

- substracao
```stata
-
```

- multiplicacao 
```stata
*
```

- divisao 
```stata
/
```

- potencia
```stata
^
```

- igualdade
```stata
==
```

- maior que
```stata
> or =>
```

- menor que 
```stata
< or <=
```

- diferenca 
```stata
~
```

- e (duas condicoes precisam ser satisfeitas ao mesmo tempo)
```stata
&
```

- ou (uma condicoes ou outra precisa ser satisfeita)
```stata
|
```

- atribuindo valor
```stata
=
```

### Manipulate Variables 
- Delete variables
```stata
drop
```

- Reclassify variables
```stata
recode idade (0/17 = 1 "Jovem") (18/64 = 2 "Adulto") (65/max = 3 "Idoso")
```
- Replace variables
```stata
replace idade = 25 if sexo == 1
```

- excluir informações faltantes
```stata
drop if missing(x)
```

- excluir informações expecíficas
```stata
drop if ==X
```

- manter apenas variáveis específica
```stata
keep
```

```stata
keep
```

// manter a variável com modificações
keep if  V8005>=18 & V8005<=24 /*(manter apenas individuos jovens)*/

// renomear variáveis de interesse
rename x y

// mudar descrição da variável
label variable ano "V0101-ANO DE REFERÊNCIA"

// alterando rótulos das dados das variáveis
label define x 1 "y" 2 "w", replace //especificando mudancas //
label values x x //aplicando as mudancas//


### Practical Demonstration
> The example and the database are taken from the book: "*Econometric Analysis of Cross Section and Panel Data, Second Edition, by Jeffrey M. Wooldridge*"

Carregar Base -> health.dta

```Stata
sum
```

```Stata
    Variable |        Obs        Mean    Std. dev.       Min        Max
-------------+---------------------------------------------------------
    dupersid |      3,064    6.24e+07    3.43e+07   2.00e+07   9.83e+07
      year03 |      3,064           1           0          1          1
         age |      3,064    74.17167    6.372938         65         90
      famsze |      3,064    1.907963    .9883496          1         13
      educyr |      3,064    11.77546    3.435878          0         17
-------------+---------------------------------------------------------
      totexp |      3,064    7030.889    11852.75          0     125610
     private |      3,064    .5812663    .4934321          0          1
      retire |      3,064    .5946475    .4910403          0          1
      female |      3,064    .5796345    .4936982          0          1
       white |      3,064    .9742167    .1585141          0          1
-------------+---------------------------------------------------------
        hisp |      3,064    .0848564    .2787134          0          1
       marry |      3,064    .5558094    .4969567          0          1
      northe |      3,064    .1517624     .358849          0          1
       mwest |      3,064    .2310705    .4215862          0          1
       south |      3,064    .3962141    .4891897          0          1
-------------+---------------------------------------------------------
      phylim |      3,064    .4255875    .4945125          0          1
      actlim |      3,064    .2836162    .4508263          0          1
         msa |      3,064    .7415144    .4378737          0          1
      income |      3,064    22.47472    22.53491         -1     312.46
      injury |      3,064    .1964752    .3973968          0          1
-------------+---------------------------------------------------------
    priolist |      3,064    .8028721    .3978947          0          1
      totchr |      3,064    1.754243    1.307197          0          7
         omc |      3,064    .4461488    .4971727          0          1
         hmo |      3,064    .1158616    .3201111          0          1
         mnc |      3,064    .0192559    .1374454          0          1
-------------+---------------------------------------------------------
       ratio |      3,064    .0120952    .0958159          0          1
      posexp |      3,064    .9644256    .1852568          0          1
     suppins |      3,064    .5812663    .4934321          0          1
        hvgg |      3,064    .6054178    .4888406          0          1
         hfp |      3,064    .2078982    .4216508          0          2
-------------+---------------------------------------------------------
        hins |      1,506           1           0          1          1
        hdem |      1,737           1           0          1          1
```

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


