######################################################################################################################################################
######################################################################################################################################################

#DIRETÓRIOS - CAMINHOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OPERAÇÕES DE DIRETÓRIO

#Verificar o diretório atual no formato de endereço
#Se o diretório não estiver disponível, retorna NULL

  getwd()

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Podemos armazenar o caminho numa variável

  caminho <- getwd()

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Alterar o diretório
#Se não funcionar, retorna um erro
#O caminho deve ser colocado com \\ para que a \ simples não seja confundida com uma sequência de escape
#Informando o diretório para a função diretamente

  setwd("C:\\Users\\Leandro Luz\\Desktop\\RProject\\Scripts")

#Ou usando uma variável para armazenar o diretório

  caminho <- "C:\\Users\\Leandro Luz\\Desktop\\RProject\\Scripts"
  
  setwd(caminho)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Selecionando o diretório por uma caixa de diálogo
  
  setwd(choose.dir())
  
#Podemos escolher que pasta abrir inicialmente (Para facilitar) - No windows só abre na pasta 'Meu Computador'
  
  choose.dir(default = "C:\\Users\\Leandro Luz\\Desktop")
  
#Dar um título para a janela (Evitar confusão)  
  
  choose.dir(caption = "Escolha o Workspace do R")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Observação
#Apesar de getwd() retornar o endereço com \ simples e setwd() requerer o endereço com \\, o seguinte funcionará:

  setwd(getwd())

  
 
 
   
#-----------------------------------------------------------------------------------------------------------------------------------------------------