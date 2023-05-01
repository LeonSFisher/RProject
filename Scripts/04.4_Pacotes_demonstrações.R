######################################################################################################################################################
######################################################################################################################################################

#PACOTES - DEMONSTRAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#DEMONSTRAÇÕES

#Podemos exibir demonstrações de pacotes. As demonstrações permitem visualizar algumas funcionalidades e estilos de uso disponíveis para estes
#pacotes (necessário apertar ENTER para alguns pacotes).

#Para isso, usamos a função demo()

  demo(graphics)
  
  demo(persp)
  
  demo(plotmath)
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Definindo se o tópico a ser procurado deve ser uma string de caracteres
  
#Procurando como nome do pacote

  demo(graphics, character.only = FALSE) 
  
  demo(graphics, character.only = TRUE)
  
#Procurando como uma string de caracteres
  
  demo("graphics", character.only = FALSE)
  
  demo("graphics", character.only = TRUE)
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Definindo em que pacotes procurar a demonstração
  
#Listará todas as demonstrações disponíveis
  
  demo(package = "graphics") 
  
  demo(package = "base") 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#O parâmetro 'verbose' também existe na função demo()
  
  demo(graphics, verbose = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Onde mostrar o exemplo da demonstração
  
#No console da aplicação   
  
  demo("graphics", type = "console")
  
#Em um arquivo html
  
  demo("graphics", type = "html")
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Interatividade na demonstração
  
#O parâmetro 'echo' refere-se a se queremos que sejam exibidos os inputs utilizados pela demosntração no console
  
#O parâmetro 'ask' diz se queremos que a demonstração espere nosso input 'ENTER' para prosseguir em cada estágio ou se deve ser executada
#de uma única vez sem interação.
  
#Mostrando os inputs no console e realizando a demonstração com interatividade
  
  demo("graphics", echo = TRUE, ask = TRUE)
  
#Mostrando os inputs no console e realizando a demonstração sem interatividade  
  
  demo("graphics", echo = TRUE, ask = FALSE)
  
#Não mostrar os inputs no console e realizar a demonstração com interatividade   
  
  demo("graphics", echo = FALSE, ask = TRUE)
  
#Não mostrar os inputs no console e realizando a demonstração sem interatividade    
  
  demo("graphics", echo = FALSE, ask = FALSE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  