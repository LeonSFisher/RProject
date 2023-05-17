######################################################################################################################################################
######################################################################################################################################################

#FUNÇÕES - PARÂMETROS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#PARÂMETROS DE FUNÇÕES

#Se não especificarmos um valor padrão, o parâmetro é requerido
#Se especificarmos um valor padrão, o parâmetro é opcional e será usado seu valor padrão
#Parâmtros sem valores padrão devem ser passados primeiro

#Funções de um só parâmetro

  nova = function(string){
    
    msg = paste("Mensagem", string, sep = ": ")
    
    print(msg)
  }
  
  nova("Olá,mundo!")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Funções com mais de um parâmetro
#Se omitirmos os nomes dos argumentos, eles devem ser passados na ordem em que foram criados
#Caso informemos o nome dos argumentos, eles podem ser passados em qualquer ordem
  
  nova = function(nome, sobrenome, idade){
    
    msg = paste(nome, sobrenome, "tem", idade, "anos.")
    
    print(msg)
  }
  
  nova("Leandro", "Luz", 32)  
  
#Ou fora de ordem
  
  nova(idade = 32, sobrenome = "Luz", nome = "Leandro") 
  
#Sem passarmos os nomes dos parâmteros fora de ordem, fica fora de ordem
  
  nova(32, "Luz", "Leandro") 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Funções com vários parâmetros 01
#O parâmetro especial '...' permite criar funções que rebem um número arbitrário de argumentos
#No comando c(...) estamos dizendo que a variável vetor é todo o conjunto indefinido de valores que passarmos para a função de forma concatenada
  
  soma_arbit = function(...){
    
    vetor = c(...)
    
    soma = 0
    
    for(valor in vetor){
      
      soma = soma + valor
    }
    
    return(soma)
  }
  
  print(soma_arbit(5, 6, 7, 8, 2:4))
  
  print(soma_arbit(5, 6, 7, 8, 2:4, c(1, 1, 1)))
  
  print(soma_arbit(5, 6, 7, 8, 2:4, c(1, 1, 1), c(-5,-5,-5)))
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Funções com vários parâmetros 02
#Parâmetros definidos misturados com indefinidos
#Na função abaixo,o último parâmetro informado será tartado como o definido e todos os antes dele serão considerados como a quantidade indefinida
#Poderia ser o contrário: informarmos o parâmetro definido antes e uma miscelânea de parâmetros indefinidos depois
#Obviamente, se informarmoso nome do parâmetro definido, independentemente da ordem, os demais serão os indefinidos
#O valor teste como sendo TRUE no protótipo da função define que esse éo valor padrão do parâmetro teste
  
  soma = function(..., teste = TRUE){
    
    if(teste){
      
      vetor = c(...)
      
      soma = 0
      
      for(valor in vetor){
        
        soma = soma + valor
      }
      
      return(soma)
      
    }else{
      
      return(0)    
    }
  }
  
#Usando o parâmetro como sendo FALSE (valor não-padrão)
  
  print(soma(teste = FALSE, 5, 6, 7, 8, 2:4, c(1, 1, 1)))
  
#Nomeando o parâmetro teste em posições diferentes
  
  print(soma(teste = TRUE, 5, 6, 7, 8, 2:4, c(1, 1, 1)))  
  
  print(soma(5, 6, 7, 8, teste = TRUE, 2:4, c(1, 1, 1))) 
  
  print(soma(5, 6, 7, 8, 2:4, c(1, 1, 1), TRUE)) 
  
#Como por padrão o valor de teste é TRUE, a função sempre executará a soma caso ele não seja informado como false
#Dessa formas se omitirmos o parâmtero a função executará a soma normalmente
#Além disso, o valor TRUE fora de ordem e sem a designação do parâmetro é tratado como seu valor inteiro correspondente 1 e entra na soma
  
  print(soma(TRUE, 5, 6, 7, 8, 2:4, c(1, 1, 1))) 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------