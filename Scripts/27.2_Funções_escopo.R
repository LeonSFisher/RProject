######################################################################################################################################################
######################################################################################################################################################

#FUNÇÕES - ESCOPO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ESCOPO DE UMA FUNÇÃO

#Variáveis que não estão no workspace e têm seu escopo interno à uma função não podem ser acessadas fora dela. São variáveis locais.

  novaFunc <- function(valor){
    
    num <- 2 * valor
    
    num
  }

  novaFunc(3)
  
#Perceba que, por ser interna à função, R não reconhece externamente a variável 'num'
  
  num

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Se uma variável com o mesmo nome de uma variável de dentro de uma função já estiver no workspace, ela também não será alterada
  
  num <- 5
  
  novaFunc(3)
  
#O valor da vaiável num criada externamente permanece como sendo 5 e não foi alterado pelo valor da variável num dentro da função que recebeu o valor
#igual a 6 durante o processamento
  
  num

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Para tornar global uma variável interna a uma função, usamos o operador de atribuição <<- ou ->> que possui as mesmas regras de atribuição
#direcional dos operadores -> e <- que são os operadores de atribuição convencionais. 
  
  novaFunc <- function(valor){
    
    num <<- 2 * valor
    
    num
  }
  
  novaFunc(3)
  
#Perceba que agora o valor de 'num' foi criado no workspace e pode agora ser acessado externamente à função em outros processamentos.
  
  num

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Agora, neste caso, como a variável agora é global, se já houver um valor no workspace com o mesmo nome, ele será alterado
  
  num <- 0
  
  novaFunc(3)
  
#O valor de 'num' que havia sido determinado como sendo 0 agora é substituído por 6 durante o processamento da função.
  
  num
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------