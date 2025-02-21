# Data Science

![1000155226](https://github.com/user-attachments/assets/6d755ab5-83d8-49ab-868e-2e918b1da18b)


### Mínimos Quadrados em 2 Estágios

 assumir que os termos de erro no modelo
 de regressão linear são contemporaneamente não
 correlacionados com as variáveis explanatórias, ou mesmo que
 eles seriam independentes de todas as variáveis explanatórias.1 Com
 efeito, poderíamos interpretar o modelo de regressão linear como
 descrevendo a expectativa condicional de yt, dado um conjunto de
 variáveis xt


Os Mínimos Quadrados em Dois Estágios (MQ2E), = caso onde não podemos assumir exogeneidade das
 variáveis explanatórias, o que implica que os estimadores de MQO
 serão viesados e inconsistentes

 $y =Xβ+ε$


β é um estimador de MQO não viesado para β se estamos
 assumindo que ε possui média zero, dado X, isto é, E {ε|X} = 0.
 Isso implica que o conhecimento sobre qualquer uma das variáveis
 explanatórias não informa nada sobre o valor esperado dos termos
 de erro. 

  Em muitos casos, a hipótese de que ε é independente de X é
 muito forte (erro nao teeem relacao com as variáveix explnatrorias)


 Como exemplo, considere a hipótese de mercados
 eficientes, sob retornos esperados constantes. Essa hipótese implica
 que o retorno de qualquer ativo será imprevisível a partir de
 informações públicas. Sob sua forma fraca, o retorno de ativos não
 pode ser previsto a partir dos retornos passados. A hipótese pode
 ser, aliás, estatisticamente testada, considerando um modelo de
 regressão linear e testando se os retornos passados explicam o
 retorno presente

yt = β1 +β2yt−1 +β3yt−2 +εt

 onde yt denota o retorno no período t, a hipótese nula implica que
 β2 = β3 =0. Dado que as variáveis explanatórias são variáveis
 defasadas (sendo assim função dos termos de erro defasados), a
 premissa de que E {ε|X} = 0 é inapropriada. Se a autocorrelação
 nos termos de erro for, de algum modo, restringida, será ainda
 possível fazer inferência de modo apropriado, utilizando a estimativa
 de Newey-West para a matriz de covariância

também conhecidos como Two-Stage Least Squares (2SLS), são uma técnica utilizada em econometria para estimar modelos de regressão quando há endogeneidade nas variáveis explicativas. A endogeneidade pode ocorrer quando uma variável independente está correlacionada com o erro do modelo, o que pode levar a estimativas viesadas e inconsistentes.


Método de Momentos Generalizados (MMG)






 Mínimos Quadrados Ordinários (MQO): Este é o método mais comum de estimativa em regressão linear. O MQO busca minimizar a soma dos quadrados das diferenças entre os valores observados e os valores previstos pelo modelo.

Mínimos Quadrados Generalizados (MQG): Este método é uma extensão do MQO que é utilizado quando as suposições de homocedasticidade (variância constante dos erros) não são atendidas. O MQG leva em conta a estrutura de variância dos erros.

Regressão de Mínimos Quadrados Pesados: Utiliza pesos diferentes para as observações, o que pode ser útil em situações onde algumas observações são mais confiáveis do que outras

Máxima Verossimilha (MV)
