
iris
lm(Petal.Length ~ Sepal.Length, data = iris)

cor.test()

################################################################################
################################################################################

#Amostras

################################################################################
################################################################################

#-------------------------------------------------------------------------------
#CRIANDO AMOSTRAS
#amostra com reposição

sample(mtcars$hp, 5, replace = TRUE, prob = NULL)

#amostra sem reposição

sample(mtcars$hp, 5, replace = FALSE, prob = NULL)

#permutação (sample sem parâmetros)

sample(mtcars$hp)

#-------------------------------------------------------------------------------
#amostras com probabilidades associadas

valores <- c("tulipa", "rosa", "azaléa", "lírio", "girassol")

probs <- c(0.1, 0.5, 0.1, 0.05, 0.1)

flores <- sample(valores, 30, replace = TRUE, prob = probs)

#-------------------------------------------------------------------------------
#GERANDO SEMENTES
#sem semente aleatória

rnorm(10)
rnorm(10)
rnorm(10)

#gerar com semente aleatória

set.seed(8)
rnorm(10)

set.seed(7)
rnorm(10)

set.seed(8)
rnorm(10)

set.seed(7)
rnorm(10)

#gerando 2 vezes seguidas a seed é resetada

set.seed(8)
rnorm(10)
rnorm(10)

#Gerando sequências aleatórias
#20 elementos de 5 a 55

sequnif <- runif(20, 5, 55)


#quantis
quantile(mtcars$hp, 0.1)

#números aleatórios
rnorm(15, 3, 2.5)

runif(15, 2, 3)

rbeta(15, 5, 5)

rbinom(15, 30, 0.3)

rcauchy()

rchisq()

rexp()

rgamma()

rgeom()

rhyper()

rlnorm()

rlogis()

rmultinom()

rnbinom()

rpois()

rsignrank()

rsmirnov()

rt()

rweibull()

rwilcox()


################################################################################
################################################################################

#Resumo de dados

################################################################################
################################################################################

#-------------------------------------------------------------------------------
#resume variáveis discretizadas
#mostrar as variáveis de forma categórica e suas respectivas quantidades
table(mtcars$cyl)

#resume todas as variáveis de um dataframe
summary(mtcars)

#resumir coluna em específico
summary(mtcars$mpg)

#pedir para gerar 5 intervalos (mostra o intervalo em que cada observação está)
cut(mtcars$mpg, 5)

#especificarmos nossos intervalos
cut(mtcars$mpg, seq(10, 35, 5))

#ou colocar os intervalos numa variável
intervalo <- seq(10, 35, 5)
cut(mtcars$mpg, intervalo)



#média
mean()

#desvio padrão
sd()

#combinatória

#fatorial
factorial()

#resumindo dados selecionados
summary(tabela1[c(1, 2), c(2, 3)])

summary(subset(mtcars, mpg > 3))

#Amostras

fivenum()
#probabilidades



?replicate
