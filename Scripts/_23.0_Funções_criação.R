######################################################################################################################################################
######################################################################################################################################################

#FUNÇÕES - CRIAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#PARÂMETROS

#As funções em R possuem parâmetros. Alguns são obrigatórios; outros não.

#Os parâmetros obrigatórios são chamados de parâmteros não nomeados. Isso ocorre porque, na documentação da ajuda, eles não têm um nome próprio
#sendo representados por nomes genéricos. Além disso, por serem obrigatórios, não possuem nenhum valor padrão.

#Os argumentos opcionais são os argumentos nomeados. Eles possuem nomes próprios fixos na documentação de ajuda e possuem valores padrão que
#são utilizados sempre que não explicitamente fornecidos.

#Se fizermos questão de explicitar todos os parâmetros, podemos colocá-los em qualquer ordem pois os nomes evitam confusão
#Se não explicitarmos os nomes, devemos colocar os parâmetros na ordem definida na documentação
#Os parâmetros obrigatórios devem sempre vir antes dos demais

#Na função runif(), n é obrigatório e min e max são parâmetros opcionais cujos valores padrão são 0 e 1 respectivamente.
  
  runif(n, min=0, max=1)

#Informando outros valores para os parâmetros nomeados, são eles que serão utilizados.
  
  runif(n, min=5, max=10)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#FUNCIONAMENTO DAS FUNÇÕES NO R

#Nomes de objetos

#Algumas funções do R podem tanto serem utilizadas como forma de consulta ou como meio de atribuição:

#Consultando os nomes de um objeto

  names(objeto)

#Atribuindo nomes a objetos

  names(objeto) <- c("nome1","nome2")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CRIAÇÃO DE FUNÇÕES

#A impressão da frase faz parte da função neste exemplo
#Não é necessário return

  nova = function(string){
    
    msg = paste("Mensagem", string, sep = ": ")
    
    print(msg)
  }
  
  nova("Olá,mundo!")
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Podemos armazenar o retorno da função em uma variável
#A impressão da mensagem é externa à função
#Necessário usar return para que o computador saiba o que retornar
  
  nova = function(string){
    
    msg = paste("Mensagem", string, sep = ": ")
    
    return(msg)
  }
  
  frase = nova("Olá,mundo!")
  
  print(frase)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Caso não haja o return, o último valor da função será retornado
  
  nova = function(string){
    
    msg = paste("Mensagem", string, sep = ": ")
    
    toupper(msg)
    
  }
  
  frase = nova("Olá,mundo!")
  
  print(frase)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Funções (função lambda)
#É um recurso para escrever uma função em uma única linha
  
  nova = function(string) msg = paste("Mensagem", string, sep = ": ");
  
  frase = nova("Olá,mundo!")
  
  print(frase)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Visualizando o código de funções
#Digitando no prompt o nome da função sem os parênteses ou rodando-o sem os parênteses no script,podemos ver o código da função
  
  nova

#-----------------------------------------------------------------------------------------------------------------------------------------------------