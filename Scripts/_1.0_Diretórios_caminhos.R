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
#O caminho deve ser colocado com \\ para que a \ simples junto com a letra seguinte não seja confundida com uma sequência de escape
#Informando o diretório para a função diretamente

  setwd("E:\\GITHUB\\RProject")

#Ou usando uma variável para armazenar o diretório

  caminho <- "E:\\GITHUB\\RProject"
  
  setwd(caminho)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Selecionando o diretório por uma caixa de diálogo
  
  setwd(choose.dir())
  
#Podemos escolher que pasta abrir inicialmente (Para facilitar) - No windows só abre na pasta 'Meu Computador'
  
  choose.dir(default = "E:\\GITHUB")
  
#Dar um título para a janela (Evitar confusão)  
  
  choose.dir(caption = "Escolha o Workspace do R")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Observação
#Apesar de getwd() retornar o endereço com \ simples e setwd() requerer o endereço com \\, o seguinte funcionará:

  setwd(getwd())

  
 
 
   
#-----------------------------------------------------------------------------------------------------------------------------------------------------