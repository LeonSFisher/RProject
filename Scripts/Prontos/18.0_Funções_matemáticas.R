######################################################################################################################################################
######################################################################################################################################################

#FUNÇÕES MATEMÁTICAS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#FUNÇÕES PARA CÁLCULOS MATEMÁTICOS

#Função valor absoluto

  abs(2)

  abs(-3)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Função raiz quadrada

  sqrt(4)
  
  sqrt(-1)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Função exponencial
  
  exp(0)
  
  exp(1)
  
  exp(2)  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Função logarítmica
  
#Por padrao, calcula o logaritmo neperiano (base e)
  
  log(10)
  
  log(exp(1))
  
#Mas podemos escolher a base na qual trabalhar
  
#Calculando o logaritmo decimal

  log(7, base = 10)
  
  log(10, base = 10)
  
  log(exp(1), base = exp(1))
  
#Para o logaritmo de base 10 temos também:
  
  log10(7)
  
  log(7, base = 10)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Funçoes trigonométricas
  
#Função seno
  
  sin(0)
  
  sin(pi/2) 
  
#Função cosseno
  
  cos(2)
  
  cos(pi)
  
#O cosseno de 90 graus não é calculado como exatamente 0. Cuidado!
  
  cos(pi/2)

#Função tangente
  
  tan(2.5)
  
  tan(pi/4)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Funçoes trigonométricas inversas
  
#Função arco-seno
  
  asin(1)
  
#Função arco-cosseno
  
  acos(-1)
  
#Função arco-cotangente
  
  atan(1)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Funçoes hiperbólicas
  
#Função seno hiperbólico
  
  sinh(2)
  
#Função cosseno hiperbólico
  
  cosh(2)
  
#Função tangente hiperbólica
  
  tanh(2)
 
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Funçoes hiperbólicas inversas
  
#Arco-seno hiperbólico
  
  asinh(1.1)
  
#Arco-cosseno hiperbólico  
  
  acosh(1.1)
 
#Arco-tangente hiperbólico
  
  atanh(0.85)
 
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Produtório
  
#Usando o produtório com um vetor
  
  vetor <- c(2, 3, 8, 9, 4, 1, 2, 2)
  
  prod(vetor)
  
#Ou diretamente
  
  prod(c(2, 3, 8, 9, 4, 1, 2, 2))
  
#Usando o produtório com uma matriz
  
  matriz <- matrix(vetor, nrow = 2)
  
  prod(matriz)
  
#Usando o produtório com um array
  
  array_novo <- array(vetor, dim = c(2, 2, 2))
  
  prod(array_novo)
  
#Caso haja NA's no objeto no qual se deseja avaliar o produtório, podemos usar o parâmetro 'na.rm' para removê-los
  
  vetor <- c(NaN, 2, 3, 8, NA, 9, 4, NA, 1, 2, 2, NA, NA)
  
  prod(vetor)
  
  prod(vetor, na.rm = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Somatório
  
#Somatório usado com vetor
  
  sum(vetor)

#Ou diretamente
  
  sum(c(2, 3, 8, 9, 4, 1, 2, 2))
  
#Somatório usado com matriz
  
  sum(matriz)
  
#Somatório usado como array
  
  sum(array_novo)
  
#Caso haja NA's no objeto no qual se deseja avaliar o somatório, podemos usar o parâmetro 'na.rm' para removê-los
  
  vetor <- c(NaN, 2, 3, 8, NA, 9, 4, NA, 1, 2, 2, NA, NA)
  
  sum(vetor)
  
  sum(vetor, na.rm = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Funções relacionadas ao fatorial
  
#Fatorial simples
  
  factorial(77)
  
#Logaritmo natural do fatorial
  
  lfactorial(77)
  
#Fatorial para reais (gamma)
  
  gamma(4.66)
  
#E o seu logaritmo natural
  
  lgamma(4.66)
  
#Primeira derivada do logarítmo natural da função gamma
  
  digamma(4.66)
  
#Segunda derivada do logarítmo natural da função gamma
  
  trigamma(4.66)
  
#Derivada de ordem mais alta do logaritmo da função gamma
  
  psigamma(4.66, deriv = 5)
  
#Função Beta de parâmetros a e b
  
  beta(3, 2)
  
#Logarítmo natural da função beta
  
  lbeta(3, 2)
  
#Coeficientes binomiais (combinações)
  
  choose(10, 3)
  
#Logaritmos naturais dos valores absolutos dos coeficientes binomiais
  
  lchoose(10, 3)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Valores máximos e mínimos
  
#Valor máximo de um conjunto de dados

  max(vetor)

#Valor mínimo de um conjunto de dados
  
  min(vetor)
  
#Caso hajam NA's, podemos eliminá-los
  
  vetor <- c(NaN, 2, 3, 8, NA, 9, 4, NA, 1, 2, 2, NA, NA)
  
  max(vetor)
  
  max(vetor, na.rm = TRUE)
  
  min(vetor)
  
  min(vetor, na.rm = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Diferença consecultiva
  
  diff(vetor)

#Diferença entre cada valor e outro valor duas casas depois de cada um deles (por padrão é 1)
  
  diff(vetor, lag = 2)
  
#Podemos definir também quantas rodadas de diferença queremos
  
  diff(vetor, differences = 2)
  
  diff(vetor, differences = 3)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Arredondamento de valores
  
#Criando um valor quebrado para arredondar
  
  z <- log(10)

#Arredondando para a unidade mais próxima
  
  
  round(z)

#Definindo o número de casas decimais
  
  round(z, digits = 3)
  
#Arredondar para baixo
  
  floor(z)
  
#Arredondar para cima
  
  ceiling(z)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Truncar o número
  
  trunc(z)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Números significativos
  
#Por padrão mostra seis números significativos
  
  signif(z)
 
#Definindo quantos dígitos significativos queremos
  
  signif(z, digits = 4)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#numeros complexos
  
  z <- 3-2i
  
#Recuperando a parte real
  
  Re(z)
  
#Recuperando a parte imaginária
  
  Im(z)
  
#Módulo do número complexo
  
  Mod(z)
  
#Argumento do número complexo
  
  Arg(z)

#Conjugado do número complexo
  
  Conj(z)

#-----------------------------------------------------------------------------------------------------------------------------------------------------