
generate velhos=0

edit velhos

replace velhos=1 if age>=85
(312 real changes made)

* criando variavel dummy

tab age if age >=85

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

edit velhos

* criando variável Log

gen lage=log(age)

edit age lage

sum age lage

    Variable |        Obs        Mean    Std. dev.       Min        Max
-------------+---------------------------------------------------------
         age |      3,064    74.17167    6.372938         65         90
        lage |      3,064    4.302728    .0853122   4.174387    4.49981

tab age

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

* criar dummy para cada idade

tabulate age, generate(age_)

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

* criamos varias dummies

scatter age famsze

* criando diagrama de dispersão

scatter age totexp

graph matrix age totexp

hist age
(bin=34, start=65, width=.73529412)

corr age famsze
(obs=3,064)

             |      age   famsze
-------------+------------------
         age |   1.0000
      famsze |  -0.1663   1.0000


* calculado correlação

* fazendo teste de significancia

pwcorr age famsze, star(.1)

             |      age   famsze
-------------+------------------
         age |   1.0000 
      famsze |  -0.1663*  1.0000 

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

* a ordem é variavel dependente e depois as variaveis explicativas
* estimação de todos os elementos é sempre usando MQO
* std. err = erros padrões
* se o meu modelo passa no teste global eu não preciso fazer os testes individuais
* leitura coeficiente -> controlado pela variavel idade quando vc aumenta o tamanho da familia em 1 unidade os dados em media os gastos de saude caem 482 dolares
* R-Squared * 100 = significa que 24% da idade e o do tamanho da familia explicam os gastos totais
* analisando coeficientes -> age é positivo então o aumento da idade aumenta os gastos da família, já o tamanho da família é negativo, isso significa que familias maiores gastam menos

***** Teste Global (Teste F) ******

H0 -> B1 e B2 = 0 -> modelo não é significativo
H1 -> B1 ≠ 0 e ou B2 ≠ 0 -> modelo é significativo

**** Metodo de avaliação *****

Deveria comparar o F com o F-crítico, mas é maís facil usar o P > F (P-valor)
Se o F for maior que o F-crítico eu rejeito a hipotese H0 e aceito a hipotese alternativa

*** OU ***

F > Prob>F - rejeito H0
F < Prob>F - não rejeito H0

**** Teste individuais (Teste T) *****

*H0 -> B1 = 0 -> modelo não é significativo (T > T-critico)
*H1 -> B1 ≠ 0 -> modelo é significativo

**** Metodo de avaliação ***** ------------------> Por isso a variável age não é significativa e o tamanho da família é significativa 

t > t-critico - rejeito H0
t < t-critivo - não rejeito H0

*** OU ***

P<T é menor que o nível de significancia- rejeito H0
P>T é maior que o nível de significancia- nao rejeito H0

**** Avaliar Multicolinearidade ****

* VIF -> Variance inflation factor (baseado no R2 de regressões auxiliares) ---> Geralmente maior que 5 é considerado a presença de multicolinearidade
* R-squared muito alto pode signficar multicolinearidade 

vif

    Variable |       VIF       1/VIF  
-------------+----------------------
         age |      1.03    0.972341
      famsze |      1.03    0.972341
-------------+----------------------
    Mean VIF |      1.03

**** Avaliar Homocedasticidade ****

**** Teste BP ****

hettest

    chi2(1) =   0.18
Prob > chi2 = 0.6749

* H0 -> homocedasticidade
* H1 -> Heterocedasticidade

* Prob > chi2 > intervalo de confianca -> não rejeita h0
* Prob > chi2 < intervalo de confianca -> rejeita h0
* Se eu rejeito H0 heterocedasticidade se eu não rejeito H0 homocedasticidade


**** Teste de white ****

imtest, white

    chi2(5) =   4.92
Prob > chi2 = 0.4251

Cameron & Trivedi's decomposition of IM-test

--------------------------------------------------
              Source |       chi2     df         p
---------------------+----------------------------
  Heteroskedasticity |       4.92      5    0.4251
            Skewness |      43.03      2    0.0000
            Kurtosis | -249213.50      1    1.0000
---------------------+----------------------------
               Total | -249165.54      8    1.0000
--------------------------------------------------

**** Previsão ****

*valores totais
edit totexp

*valores previstos
predict totexp_ajus
edit totexp totexp_ajus
sum totexp totexp_ajus

* as previsoes são péssimas, pois estamos usando um modelo de regressao simples = não é o modelo adequado (R-squared era ridículo)

predict residuos, resid -> erros estimados
edit residuos
hist residuos, normal 

**** Teste Normalidade dos Erros ****

edit totexp

gen ltotexp=log(totexp)

reg ltotexp suppins female phylim actlim income totchr, robust

Linear regression                               Number of obs     =      2,955
                                                F(6, 2948)        =     147.83
                                                Prob > F          =     0.0000
                                                R-squared         =     0.2286
                                                Root MSE          =     1.2023

------------------------------------------------------------------------------
             |               Robust
     ltotexp | Coefficient  std. err.      t    P>|t|     [95% conf. interval]
-------------+----------------------------------------------------------------
     suppins |   .2512797   .0463629     5.42   0.000     .1603728    .3421866
      female |  -.0825354   .0456855    -1.81   0.071     -.172114    .0070433
      phylim |   .3103849   .0566753     5.48   0.000     .1992578    .4215121
      actlim |   .3625158   .0630662     5.75   0.000     .2388576    .4861739
      income |    .002447   .0010454     2.34   0.019     .0003972    .0044968
      totchr |   .3755429   .0187169    20.06   0.000     .3388433    .4122425
       _cons |   6.984852   .0647095   107.94   0.000     6.857971    7.111732
------------------------------------------------------------------------------

* Robust regression is an alternative to least squares regression (MQO)

predict erro, resid

hist erro, normal

scatter ltotexp age

. * deletar esse último comando

.  * a os betas nao mudam, o que muda é a formula que se usa para calcularar a variancia dos erros

. se plotarmos o historgrama eles seram iguais
-set plotarmos- not allowed; 'plotarmos' not recognized
r(199);

. estimador de variancia de erro diferenca wue retorna um padrao diferente
command estimador is unrecognized
r(199);

. swilk -> shapiro wilk semelhante ao JAque-bera
- invalid name
r(198);

. dar um help para ver como funciona a performace
command dar is unrecognized
r(199);

. * sao baseados na logica jaque-bera, teste de hipotese conjunta de dois momentos de uma distribuicao normal, assimetria (diferen
> ca entre mediana e média, o useja graficamente se a massa da distribuicao tende mais para a esquerda ou para a direita) = assime
> tria da normal = 0 (igualmente disitrbuida dos dois lados) e curtose (densidade = disitrubicao mais alonga ou achatada normal = 
> 3), comparar os erros estimados (residuos) com a assimetria e a curtose da normal. a ideia e uma diferenca quadratica do valor c
> om a normal, se o valor é proximo da normal ele se aproxima de 0, jaque bera é pequeno

. H0 -> erro segue a disitruicao normal
command H0 is unrecognized
r(199);

. H1 -> erros seguem uma disitrbuição normal
command H1 is unrecognized
r(199);

. *tem performaces muito pequenas em amostrar pequenas

. swilk erro

                   Shapiro–Wilk W test for normal data

    Variable |        Obs       W           V         z       
> Prob>z
-------------+------------------------------------------------
> ------
        erro |      2,955    0.99187     13.743     6.759    0
> .00000

Note: The normal approximation to the sampling distribution of W'
      is valid for 4<=n<=2000.

. sfrancia erro

                  Shapiro–Francia W' test for normal data

    Variable |       Obs       W'          V'        z       P
> rob>z
-------------+------------------------------------------------
> -----
        erro |     2,955    0.99170     14.915     6.628    0.
> 00001

. help sfrancia

. Prob>P = 0 o valor calculado e tao alto que a area que sobrar dele é virtualmente zero, se o nivel de significancia e 
> 10% por exemplo, entao o valor calculado é muito maior que o valor critico, reijeito H) nao sao normais
command Prob not defined by Prob.ado
r(199);

. se o p vaor for maior que o nivel de significficancia nos podemos aceitar a hipotese H0
-set o- not allowed; 'o' not recognized
r(199);

. sktest erro

Skewness and kurtosis tests for normality
                                                         ----- Joint test -----
    Variable |       Obs   Pr(skewness)   Pr(kurtosis)   Adj chi2(2)  Prob>chi2
-------------+-----------------------------------------------------------------
        erro |     2,955         0.0000         0.0000         71.95     0.0000

. p valor e a area da estatica calculada para mais infinito da
>  distirbuicao
command p is unrecognized
r(199);

*-----------------------------------*
*        VARIÁVEIS DISCRETAS        *
*-----------------------------------*

* Criar uma tabela de frequências da variável "regiao"
tabulate regiao
tabulate regiao, missing

* Criar tabelas para várias variáveis em um único comando
tab1 regiao genero

* Criar tabelas cruzadas entre duas variáveis
tab regiao genero

* Criar tabelas cruzadas entre duas variáveis com opções
tab regiao genero, col
tab regiao genero, row
tab regiao genero, cel

* Criar tabela de frequências entre duas variáveis para um subgrupo da população
tab raca if genero==0

*--------------------------*
*   VARIÁVEIS CONTÍNUAS    *
*--------------------------*

** Para algumas variáveis
summarize idade anosestudo rendafampc

** Para informações detalhadas
summarize rendafampc, detail 

** Média
tabstat idade anosestudo rendafampc

** Com opções
tabstat idade anosestudo rendafampc, format(%10.2f)
tabstat idade anosestudo rendafampc, by(regiao) format(%10.2f)

** Definindo as estatísticas
tabstat idade anosestudo rendafampc, statistics( mean median sd min max ) format(%10.2f)

** Definindo as informações das colunas
tabstat idade anosestudo rendafampc, statistics( mean median sd min max ) columns(statistics) format(%10.2f)

* Calcular a correlação entre duas ou mais variáveis
correlate anosestudo V4719


 
