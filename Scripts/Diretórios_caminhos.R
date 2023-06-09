######################################################################################################################################################
######################################################################################################################################################

#DIRETÓRIOS - CAMINHOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OPERAÇÕES DE DIRETÓRIO

#Podemos definir um diretório de trabalho arbitrário, mas quando criamos um projeto no RStudio, o diretório de trabalho é o do projeto.

#Verificar o diretório de trabalho atual (pasta de trabalho atual) no formato de endereço. Usamos a função no formato vazio. Se o diretório não
#estiver disponível, retorna NULL.

  getwd()

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Podemos armazenar o caminho do diretório de trabalho numa variável usando o retorno da função getwd().

  caminho <- getwd()

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ALTERAR DIRETÓRIO
  
#O caminho deve ser colocado com \\ para que a \ simples junto com a letra seguinte não seja confundida com uma sequência de escape.
  
#Informando o diretório para a função diretamente.

  setwd("E:\\GITHUB\\RProject")
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Ou usando uma variável para armazenar o diretório.

  caminho <- "E:\\GITHUB\\RProject"
  
  setwd(caminho)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#SELECIONANDO DIRETÓRIOS POR UMA CAIXA DE DIÁLOGO
  
#Com a função choose.dir() podemos escolher uma pasta para abrir. Ela retorna o endereço da pasta.
  
  choose.dir()
 
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Feito isso, podemos usar a função choose.dir() combinada com a função setwd().
  
  setwd(choose.dir())
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Esse retorno da função pode ser, inclusive, armazenado numa variável.
  
  endereco <- choose.dir()
  
  setwd(endereco)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Podemos escolher que pasta abrir inicialmente (Para facilitar) - No windows só abre na pasta 'Meu Computador'.
  
  choose.dir(default = "E:\\GITHUB")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Dar um título para a janela (Evitar confusão).  
  
  choose.dir(caption = "ESCOLHA A PASTA")
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OBSERVAÇÃO:
  
#Apesar de getwd() retornar o endereço com \ simples e setwd() requerer o endereço com \\, o seguinte funcionará:

  setwd(getwd())
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------