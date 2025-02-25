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


 
