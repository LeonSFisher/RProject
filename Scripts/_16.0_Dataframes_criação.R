######################################################################################################################################################
######################################################################################################################################################

#DATAFRAMES - CRIAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CRIANDO DATAFRAMES

#Criando dataframes a partir de vetores (mesmo tamanho)
#Criando os vetores

  numeros = c(1, 2, 3, -1, -4)
  objetos = c("carro", "casa", "faca", "bola", "foice")
  salario = c(500, 550, 600, 900, 630)
  valores = c(1.2, 2.5, 6.7, 4.4, 9.0)
  classes = c(3, 3, 4, 3, 5)
  
#Gerando o dataframe
  
  tabela = data.frame(numeros, objetos, salario, valores, classes)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Criando dataframes a partir de uma matriz
  
#Perceba que as colunas do dataframe serão automaticamente nomeadas
  
  as.data.frame(matrix(1 : 24, nrow = 4, ncol = 6))
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Detalhes sobre strings no dataframe
#Algumas vezes pode haver a conversão automática de strings para fatores ao criarmos dataframes
  
  is.character(tabela[,2])
  
  is.factor(tabela[,2])
  
#Caso, indevidamente, tenha sido feita esta conversão, podemos reatribuir a coluna a ela mesma já convertida:
  
  tabela[,2] <- as.character(tabela[,2])
  
#Ou, para evitar esse trabalho, podemos alterar o comportamento do R ao trabalhar com strings em dataframes
#Para evitar que haja conversão na seção de trabalho, podemos fazer:
  
  options(stringsAsFactors = FALSE)
  
#Ou, caso queiramos que sempre haja conversão de strings para fatores:
  
  options(stringsAsFactors = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#COMPONDO DATAFRAMES
  
#Adicionando nova coluna simples
  
  tabela$depart = c(0, 0, 0, 1, 1)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Adicionando uma tabela inteita contígua
#Com o operador de coluna nomeada
  
  tabela$junc = tabela
  
#Com a função cbind
  
  cbind(tabela, tabela)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Adicionando outro dataframe nas linhas abaixo
  
  tabela <- rbind(tabela, tabela)  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CRIANDO TIBBLES

#Carregando o pacote tibble() 
  
  library(tibble)
 
#Criando um Tibble a partir de um dataframe 
  
  tibble(tabela)
  
  tibble(mtcars)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#EDITANDO DATAFRAMES
  
#A função fix abre uma janela para edição de dataframes
  
  novo <- mtcars
  
  fix(novo)
  
  novo[1,]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#DATAFRAMES INSTALADOS

#Abre uma lista dos dataframes disponíveis
  
  data()
  
#Carrega um dataframe particular
  
   data("mtcars") 
  
  #print para table
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------