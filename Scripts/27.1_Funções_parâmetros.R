######################################################################################################################################################
######################################################################################################################################################

#FUNÇÕES - PARÂMETROS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#PARÂMETROS

#As funções em R possuem parâmetros. Alguns são obrigatórios; outros não.

#Os parâmetros obrigatórios são chamados de parâmetros não nomeados. Isso ocorre porque, na documentação da ajuda, eles não têm um nome próprio sendo
#representados por nomes genéricos. Além disso, por serem obrigatórios, não possuem nenhum valor padrão.

#Os argumentos opcionais são os argumentos nomeados. Eles possuem nomes próprios fixos na documentação de ajuda e possuem valores padrão que são 
#utilizados sempre que não explicitamente fornecidos.

#Se fizermos questão de explicitar todos os parâmetros, podemos colocá-los em qualquer ordem pois os nomes evitam confusão. Se não explicitarmos os
#nomes, devemos colocar os parâmetros na ordem definida na documentação.

#Os parâmetros obrigatórios devem sempre vir antes dos demais.

#Na função runif(), n é obrigatório e min e max são parâmetros opcionais cujos valores padrão são 0 e 1 respectivamente.

  runif(n, min=0, max=1)

#Informando outros valores para os parâmetros nomeados, são eles que serão utilizados.

  runif(n, min=5, max=10)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Funções de um só parâmetro

  novaMensagem = function(string){
    
    msg = paste("Mensagem", string, sep = ": ")
    
    print(msg)
  }
  
  novaMensagem("Olá, mundo!")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Funções com mais de um parâmetro
  
  novaMensagem = function(nome, sobrenome, idade){
    
    msg = paste(nome, sobrenome, "tem", idade, "anos.")
    
    print(msg)
  }
  
  novaMensagem("Leandro", "Luz", 32)  
  
#Ou fora de ordem explicitando os parâmetros
  
  novaMensagem(idade = 32, sobrenome = "Luz", nome = "Leandro") 
  
#Se passarmos os nomes dos parâmetros fora de ordem, fica fora de ordem
  
  novaMensagem(32, "Luz", "Leandro") 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Funções com vários parâmetros 01
  
#O parâmetro especial '...' permite criar funções que rebem um número arbitrário de argumentos. No comando c(...) estamos dizendo que a variável
#vetor é todo o conjunto indefinido de valores que passarmos para a função de forma concatenada. Obviamente, a função deve fazer sentido no contexto
#de receber uma quantidade arbitrária de entradas.
  
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
  
#Parâmetros definidos misturados com um número de parâmetros indefinidos
  
#Na função abaixo, o último parâmetro informado será tratado como parâmetro definido e todos os parâmetros antes dele serão considerados como a 
#quantidade indefinida de parâmetros a ser passada. 
  
#Poderia ser o contrário: informarmos o parâmetro definido antes e uma miscelânea de parâmetros indefinidos depois. Obviamente, se informarmos o
#nome do parâmetro definido, independentemente da ordem, os demais serão os indefinidos. 
  
#O valor teste como sendo TRUE no protótipo da função define que esse é o valor padrão do parâmetro teste.
  
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
  
#Nomeando o parâmetro teste em posições diferentes para mostrar que quando explicitamos um parâmetro sua posição não importa.
  
  print(soma(teste = TRUE, 5, 6, 7, 8, 2:4, c(1, 1, 1)))  
  
  print(soma(5, 6, 7, 8, teste = TRUE, 2:4, c(1, 1, 1))) 
  
  print(soma(5, 6, 7, 8, 2:4, c(1, 1, 1), TRUE)) 
  
#Como por padrão o valor de teste é TRUE, a função sempre executará a soma caso ele não seja informado como FALSE. Dessa forma, se omitirmos o 
#parâmtero, a função executará a soma normalmente.
  
  print(soma(5, 6, 7, 8, 2:4, c(1, 1, 1))) 
  
#Além disso, o valor TRUE fora de ordem e sem a designação do parâmetro é tratado como seu valor inteiro correspondente 1 e entra na soma pois não
#foi informado que ele representa o valor de 'teste'.
  
  print(soma(TRUE, 5, 6, 7, 8, 2:4, c(1, 1, 1))) 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------