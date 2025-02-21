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


  Observe, ademais, que mesmo que consideremos a hipótese de que
 E {εtxt} = 0, isto é, que os termos de erro e as variáveis
 explanatórias não são contemporaneamente correlacionadas, haverá
 casos em que isso não será necessariamente válido. Para esses, não
 mais poderemos dizer que o estimador de MQO será não viesado e
 consistente. Exemplos desses casos são: presença de variáveis
 dependentes defasadas e correlacionadas com o termo de erro, erros
 de medida e simultaneidade ou endogeneidade dos regressores.
 Vamos tratar a seguir do último e mais interessante caso

também conhecidos como Two-Stage Least Squares (2SLS), são uma técnica utilizada em econometria para estimar modelos de regressão quando há endogeneidade nas variáveis explicativas. A endogeneidade pode ocorrer quando uma variável independente está correlacionada com o erro do modelo, o que pode levar a estimativas viesadas e inconsistentes.


Viés = O problema de viés gerado por variável omitida aparece se uma
 variável explanatória relevante, correlacionada com os regressores
 incluídos, é omitida do modelo  Esse viés é particularmente preocupante
 quando estamos interessados em fazer uma interpretação
 causal dos nossos coeficientes estimados

 yi = x1iβ1 + x2iβ2 + uiγ +vi

 onde, yi é o salário em log de um determinado indivíduo, x1i é um
 vetor de características individuais, incluindo o intercepto e x2i
 denota anos de escolaridade. Ademais, ui é uma variável não
 observado que reflete a habilidade de um determinado indivíduo.
 Pessoas com níveis elevados de habilidade tendem a possuir salários
 mais altos (γ > 0), mas também mais prováveis de terem maior
 escolaridade.

  Assim, podemos esperar que cov {x2i,ui} > 0. Dado que ui é não
 observado, o econometrista irá estimar


yi = x′iβ +εi,

 Assumindo E {xiei} = 0, isso nos permite mostrar que o limite de
 probabilidade para b é dado por

habilidade não obseervacvel  a habilidade não observada deveria
 ser não correlacionada com a escolaridade e as demais
 variáveis do modelo

Causalidade inversa
Uma outra forma do problema de endogeneidade é a causalidade
 reversa


 Isto é, não apenas xi possui impacto sobre yi, como ao
 mesmo tempo yi tem impacto sobre um ou mais elementos de xi,
 como x2i. Por exemplo, o nível de criminalidade em uma
 determinada cidade será afetada pelo quantidade de dinheiro gasto
 no cumprimento da lei, enquanto funcionários públicos podem
 decidir aumentar o orçamento da segurança em função do nível
 esperado de criminalidade. Estimar o impacto causal da aplicação
 da lei sobre o nível de criminalidade usando uma amostra de corte
 transversal estará assim sujeito ao viés de endogeneidade

Se considerarmos uma equação
 onde um ou mais variáveis explanatórias são determinadas
 conjuntamente com a variável do lado esquerdo (a variável
 independente), o estimador de MQO proverá estimativas
 inconsistentes para os parâmetros comportamentais.


Variáveis instrumentais

 De forma a contornar o problema da endogeneidade, podemos
 deixar a variável não observada no termo de erro, mas ao
 invés de estimar o modelo por MQO, nós fazemos uso de um
 método de estimação que reconhece a presença da variável
 omitida. É basicamente isso que o método de variáveis
 instrumentais faz. Variáveis instrumentais são, a propósito, uma
 poderosa ferramenta para identificar e estimar relações causais


  Para ilustrar, considere o modelo simples de regressão linear abaixo
 especificado
 y =β0+β1x +u

 O estimador de MQO para o parâmetro de inclinação é dado por
 ˆ
 βMQO = Cov(x,y) / Var(x)

 Se supormos, por suposto, que o regressor x é correlacionado com o
 termo de erro u, esse estimador será viesado e inconsistente.

  Se tivermos um instrumento válido z, nós podemos estimar β1 de
 forma consistente usando o estimador de variáveis instrumentais
 ˆ
 βIV =Cov(z,y) / Cov(z,x)

 Isto é, um instrumento válido é correlacionado com o regressor
 x, o que implica que o denominador de 11 é diferente de zero.
 Ele também deve ser não correlacionado como o termo de
 erro u.

Método de Momentos Generalizados (MMG)






 Mínimos Quadrados Ordinários (MQO): Este é o método mais comum de estimativa em regressão linear. O MQO busca minimizar a soma dos quadrados das diferenças entre os valores observados e os valores previstos pelo modelo.

Mínimos Quadrados Generalizados (MQG): Este método é uma extensão do MQO que é utilizado quando as suposições de homocedasticidade (variância constante dos erros) não são atendidas. O MQG leva em conta a estrutura de variância dos erros.

Regressão de Mínimos Quadrados Pesados: Utiliza pesos diferentes para as observações, o que pode ser útil em situações onde algumas observações são mais confiáveis do que outras

Máxima Verossimilha (MV)
