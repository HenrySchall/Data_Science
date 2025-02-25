
################
## Introdução ##
################

"A linguagem R possui um conjunto de bases de dados, que podem ser 
usadas como exemplo, para vê-las usamos o código data()"

data()
library(help = "datasets")

############################
## OPERADORES MATEMÁTICOS ##
############################

5 + 3 #Soma
8 - 6 #Subtração
4 * 3 #Multiplicação
20 / 5 #Divisão
4 ** 2 ou 4 ^ 2 #Potenciação
sqrt (81) ou 81**(1/2) #Radiciação (quadrada)
125**(1/3) #Radiciação (cúbica)
abs (-10) #Módulo
factorial(3) #Fatorial
exp(1) #Exponencial
log(2.718281828) #Logatimo natural
log2(8) ou 2^3 = 8 #Logaritmo 

#Notação científica
2e32 #(2x10^32)
2e3 #(2x10^3)
2e-26 #(2x10^-26)
2e5 + 4e5 #(2x10^5 + 2x10^4)
3e20 * 2e12 #(3x10^20 * 2x10^12)
15e16 / 5e6 #(15x10^16 / 5x10^6)

###############
## VARIÁVEIS ##
###############

"A linguagem R é orientada ao objeto, por isso podemos atribuir a operação à uma variável,
para isso podemos usar os símbolos = ou <-"

resultado <- 4 * 7
print(resultado)

flores vermelhas <- 5
flores laranjas  <- 6
boque <- flores laranjas + flores vermelhas
print(boque)

###########################
## TIPO BÁSICO DO OBJETO ##
###########################

#numeric: numérico
#integer: inteiro
#complex: número complexo
#character (string): caractere
#logical (boolean): lógicos (True e False)
#factor: categorias bem definidas. ex: gênero(masculino e feminino)
#estado civil(casado, solteiro, viúvo...), ano(2019, 2020, 2021...)

#Identificando variável
x = 2
class(x)

#Convertendo variável
x <- as.integer(x)
class(x)

genero <- c("masculino","feminino")
genero
class(genero)
genero <- as.factor(genero)
class(genero)

#Comprimento Variável
length(genero) #possui dois fatores
length(x) #possui apenas um fator

q <- "bom dia" 
length(q)

u <- c("1","2","3")
length(u)







