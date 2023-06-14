######################################################################################################################################################
######################################################################################################################################################

#FUNÇÕES - CRIAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#FUNCIONAMENTO DAS FUNÇÕES NO R

#Algumas funções do R podem tanto ser utilizadas como forma de consulta ou como meio de atribuição:

#Consultando os nomes de um objeto

  names(objeto)

#Atribuindo nomes a objetos

  names(objeto) <- c("nome1","nome2")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CRIAÇÃO DE FUNÇÕES

#Para criar funções, utilizamos o comando function atribuindo valor a um identificador que será o nome da função. Dentro de function, estarão
#listados aqueles que serão os parâmetros que a função recebe. O comando return serve para informar para a função que valor processado no seu
#interior deve ser retornado para a variável de saída.

  novaMensagem = function(string){
    
    msg = paste("Mensagem", string, sep = ": ")
    
    print(msg)
  }
  
  novaMensagem("Olá, mundo!")
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Podemos armazenar o retorno da função em uma variável
  
#A impressão da mensagem é externa à função
  
#Necessário usar return para que o computador saiba o que retornar
  
  novaMensagem = function(string){
    
    msg = paste("Mensagem", string, sep = ": ")
    
    return(msg)
  }
  
  frase = novaMensagem("Olá, mundo louco!")
  
  print(frase)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Caso não haja o return, o último valor da função será retornado
  
  novaMensagem = function(string){
    
    msg = paste("Mensagem", string, sep = ": ")
    
    toupper(msg)
    
  }
  
  frase = novaMensagem("Olá,mundo!")
  
  print(frase)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Funções (expressão lambda)
  
#É um recurso para escrever uma função em uma única linha
  
  novaMensagem = function(string) msg = paste("Mensagem", string, sep = ": ");
  
  frase = novaMensagem("Olá,mundo!")
  
  print(frase)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Visualizando o código de funções
  
#Digitando no prompt o nome da função sem os parênteses ou rodando-o sem os parênteses no script, podemos ver o código da função no console
  
  novaMensagem

#-----------------------------------------------------------------------------------------------------------------------------------------------------