## Introduction
- Dowload Windows: https://drive.proton.me/urls/D0BESH8MZW#EAHz8YJyyWYF
- Dowload MacOS:
- Other Alternatives: 
- Comunidade: https://www.statalist.org/forums/
  
> Stata is a statistical software created by the company StataCorp, headquartered in College Station, Texas, USA. It was initially developed in 1985 by William Gould, the company's founder, who sought to create software with simple navigation to analyze statistical data. Unlike its more popular open source competitors, such as Python and R, Stata is a close source software, It this mean that, all updates performed by the controlling company, not allowing users to download or create content to the software.

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
- Sum
```stata
+
```

- Subtraction
```stata
-
```

- Multiplication
```stata
*
```

- Division
```stata
/
```

- Potentiation
```stata
^
```

- Equality
```stata
==
```

- Greater than
```stata
> or =>
```

- Less than
```stata
< or <=
```

- Difference 
```stata
~
```

- e (duas condicoes precisam ser satisfeitas ao mesmo tempo)
```stata
&
```

- or (uma condicoes ou outra precisa ser satisfeita)
```stata
|
```

- Assigning value
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

- Delete missing information
```stata
drop if missing(x)
```

- Delete specific information
```stata
drop if ==X
```

- Keep only specific variables
```stata
keep
```

- Keep the variable with modifications
```stata
keep if  V8005>=18 & V8005<=24 /*(manter apenas individuos jovens)*/
```

- Rename variables of interest
```stata
rename x y
```

- Change variable description
```stata
label variable ano "V0101-ANO DE REFERÊNCIA"
```

- Change data labels of variables
```stata
label define x 1 "y" 2 "w", replace //especificando mudancas //
```
```stata
label values x x 
```

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

```Stata
tab age
```

```Stata
        Age |      Freq.     Percent        Cum.
------------+-----------------------------------
         65 |        249        8.13        8.13
         66 |        165        5.39       13.51
         67 |        166        5.42       18.93
         68 |        153        4.99       23.92
         69 |        145        4.73       28.66
         70 |        151        4.93       33.58
         71 |        162        5.29       38.87
         72 |        191        6.23       45.10
         73 |        167        5.45       50.55
         74 |        153        4.99       55.55
         75 |        147        4.80       60.35
         76 |        145        4.73       65.08
         77 |        117        3.82       68.90
         78 |        117        3.82       72.72
         79 |        113        3.69       76.40
         80 |         97        3.17       79.57
         81 |         89        2.90       82.47
         82 |         73        2.38       84.86
         83 |         80        2.61       87.47
         84 |         72        2.35       89.82
         85 |        295        9.63       99.45
         86 |          4        0.13       99.58
         87 |          4        0.13       99.71
         88 |          3        0.10       99.80
         89 |          2        0.07       99.87
         90 |          4        0.13      100.00
------------+-----------------------------------
      Total |      3,064      100.00
```
> We can see that the database presents ages ranging from 65 to 90 years old.

```Stata
tab age female

           |     =1  if female
       Age |         0          1 |     Total
-----------+----------------------+----------
        65 |       123        126 |       249 
        66 |        65        100 |       165 
        67 |        80         86 |       166 
        68 |        76         77 |       153 
        69 |        55         90 |       145 
        70 |        65         86 |       151 
        71 |        72         90 |       162 
        72 |        77        114 |       191 
        73 |        75         92 |       167 
        74 |        66         87 |       153 
        75 |        71         76 |       147 
        76 |        66         79 |       145 
        77 |        61         56 |       117 
        78 |        49         68 |       117 
        79 |        47         66 |       113 
        80 |        35         62 |        97 
        81 |        23         66 |        89 
        82 |        21         52 |        73 
        83 |        31         49 |        80 
        84 |        25         47 |        72 
        85 |        99        196 |       295 
        86 |         2          2 |         4 
        87 |         1          3 |         4 
        88 |         2          1 |         3 
        89 |         1          1 |         2 
        90 |         0          4 |         4 
-----------+----------------------+----------
     Total |     1,288      1,776 |     3,064 
```
> número de indivíduos totais da amostra separados pela idade e genero (1=female e 0=male)

```
sum age
```

```
    Variable |        Obs        Mean    Std. dev.       Min        Max
-------------+---------------------------------------------------------
         age |      3,064    74.17167    6.372938         65         90
```

```
sum age if female==1
```
> obtendo o resumo da variável age, condicionado ao fator de ser mulher

```
    Variable |        Obs        Mean    Std. dev.       Min        Max
-------------+---------------------------------------------------------
         age |      1,776    74.61655    6.498272         65         90
```

```
sum age if female==0
```
> Obtendo o resumo da variável age, condicionado ao fator de não ser mulher

```
    Variable |        Obs        Mean    Std. dev.       Min        Max
-------------+---------------------------------------------------------
         age |      1,288    73.55823    6.145834         65         89
```

```
sort female
by female:sum age
```
> Obtendo o resumo da variável female, condicionado ao fator idade (age)

```
-----------------------------------------------------------------------------

    Variable |        Obs        Mean    Std. dev.       Min        Max
-------------+---------------------------------------------------------
         age |      1,288    73.55823    6.145834         65         89

-----------------------------------------------------------------------------

    Variable |        Obs        Mean    Std. dev.       Min        Max
-------------+---------------------------------------------------------
         age |      1,776    74.61655    6.498272         65         90
```

```
generate velhos=0
```

```
edit velhos
```
> Create dummy variable

```
replace velhos=1 if age>=85
(312 real changes made)
```

```
tab age if age >=85
```

```

        Age |      Freq.     Percent        Cum.
------------+-----------------------------------
         85 |        295       94.55       94.55
         86 |          4        1.28       95.83
         87 |          4        1.28       97.12
         88 |          3        0.96       98.08
         89 |          2        0.64       98.72
         90 |          4        1.28      100.00
------------+-----------------------------------
      Total |        312      100.00
```

```
generate log_age = log(age)
```
> Gerando os logs da variável age

```
sum age lage
```

```
    Variable |        Obs        Mean    Std. dev.       Min        Max
-------------+---------------------------------------------------------
         age |      3,064    74.17167    6.372938         65         90
        lage |      3,064    4.302728    .0853122   4.174387    4.49981
```

```
tab age
```
```
        Age |      Freq.     Percent        Cum.
------------+-----------------------------------
         65 |        249        8.13        8.13
         66 |        165        5.39       13.51
         67 |        166        5.42       18.93
         68 |        153        4.99       23.92
         69 |        145        4.73       28.66
         70 |        151        4.93       33.58
         71 |        162        5.29       38.87
         72 |        191        6.23       45.10
         73 |        167        5.45       50.55
         74 |        153        4.99       55.55
         75 |        147        4.80       60.35
         76 |        145        4.73       65.08
         77 |        117        3.82       68.90
         78 |        117        3.82       72.72
         79 |        113        3.69       76.40
         80 |         97        3.17       79.57
         81 |         89        2.90       82.47
         82 |         73        2.38       84.86
         83 |         80        2.61       87.47
         84 |         72        2.35       89.82
         85 |        295        9.63       99.45
         86 |          4        0.13       99.58
         87 |          4        0.13       99.71
         88 |          3        0.10       99.80
         89 |          2        0.07       99.87
         90 |          4        0.13      100.00
------------+-----------------------------------
      Total |      3,064      100.00
```
```
tabulate age, generate(age_)
```
```

        Age |      Freq.     Percent        Cum.
------------+-----------------------------------
         65 |        249        8.13        8.13
         66 |        165        5.39       13.51
         67 |        166        5.42       18.93
         68 |        153        4.99       23.92
         69 |        145        4.73       28.66
         70 |        151        4.93       33.58
         71 |        162        5.29       38.87
         72 |        191        6.23       45.10
         73 |        167        5.45       50.55
         74 |        153        4.99       55.55
         75 |        147        4.80       60.35
         76 |        145        4.73       65.08
         77 |        117        3.82       68.90
         78 |        117        3.82       72.72
         79 |        113        3.69       76.40
         80 |         97        3.17       79.57
         81 |         89        2.90       82.47
         82 |         73        2.38       84.86
         83 |         80        2.61       87.47
         84 |         72        2.35       89.82
         85 |        295        9.63       99.45
         86 |          4        0.13       99.58
         87 |          4        0.13       99.71
         88 |          3        0.10       99.80
         89 |          2        0.07       99.87
         90 |          4        0.13      100.00
------------+-----------------------------------
      Total |      3,064      100.00
```

```
scatter age famsze
```
> criando diagrama de dispersão

```
scatter age totexp
```
graph matrix age totexp

```
hist age
```

```
corr age famsze
```
> calculado correlação
```

             |      age   famsze
-------------+------------------
         age |   1.0000
      famsze |  -0.1663   1.0000
```

```
pwcorr age famsze, star(.1)
```
> fazendo teste de significancia
```
             |      age   famsze
-------------+------------------
         age |   1.0000 
      famsze |  -0.1663*  1.0000
```





































----------------------------------------------------------------------------------------------------------------




* valor dentro do parenteses é o nível de significancia, .1 = 10%, .05 = 5%

* os asterisco (*) significa que a correlação é significantiva, ao nivel de significancia definido

reg totexp age famsze

      Source |       SS           df       MS      Number of obs   =     3,064
-------------+----------------------------------   F(2, 3061)      =      3.74
       Model |  1.0483e+09         2   524158380   Prob > F        =    0.0239
    Residual |  4.2927e+11     3,061   140237044   R-squared       =    0.0024
-------------+----------------------------------   Adj R-squared   =    0.0018
       Total |  4.3031e+11     3,063   140487727   Root MSE        =     11842

------------------------------------------------------------------------------
      totexp | Coefficient  Std. err.      t    P>|t|     [95% conf. interval]
-------------+----------------------------------------------------------------
         age |   42.13606   34.04935     1.24   0.216    -24.62584     108.898
      famsze |  -482.6316   219.5523    -2.20   0.028    -913.1164   -52.14688
       _cons |   4826.431   2636.526     1.83   0.067    -343.1088     9995.97
------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------
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







