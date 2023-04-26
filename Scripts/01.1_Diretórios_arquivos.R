######################################################################################################################################################
######################################################################################################################################################

#DIRETÓRIOS - ARQUIVOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ARQUIVOS DO DIRETÓRIO

#Verificar os aquivos e subdiretórios do diretório atual

  list.files()

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificar os arquivos de um diretório especificado

#O parâmetro 'path' identifica o caminho

  list.files(path = "E:\\GITHUB\\RProject\\Subdiretorios")

#Omitindo o parâmetro:/././;./"/;l.;/


  list.files("E:\\GITHUB\\RProject\\Subdiretorios")

#Ou como uma variável intermediária

  caminho <- "E:\\GITHUB\\RProject\\Subdiretorios"
  
  list.files(caminho)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Definindo se mostra os arquivos ocultos ou apenas os visíveis

  list.files(path = caminho, all.files = FALSE)
  
  list.files(path = caminho, all.files = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------   
#Definindo se exibe o nome completo do caminho ou só o do arquivo principal

  list.files(caminho, full.names = FALSE)
  
  list.files(caminho, full.names = TRUE)
  
#Também vale para arquivos ocultos
  
  list.files(caminho, all.files = TRUE, full.names = FALSE)

  list.files(caminho, all.files = TRUE, full.names = TRUE)
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Lista recursiva
  
#Se FALSE, mostra apenas os arquivos e subdiretórios do diretório atual.
#Se TRUE, mostra todos os arquivos e subdiretórios e todos os arquivos dos subdiretórios do diretório atual.
  
  list.files(caminho, recursive = FALSE)
  
  list.files(caminho, recursive = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#SUBDIRETÓRIOS
  
#Verificar todos os subdiretórios do diretório atual. 
  
#O parâmetro 'path' identifica o caminho
  
  list.dirs(path = "E:\\GITHUB\\RProject\\Subdiretorios")
  
#Omitindo o parâmetro
  
  list.dirs("E:\\GITHUB\\RProject\\Subdiretorios")
  
#Ou como uma variável intermediária
  
  caminho <- "E:\\GITHUB\\RProject\\Subdiretorios"
  
  list.dirs(caminho)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo se queremos os nomes completos do caminho ou não
  
  list.dirs(path = caminho, full.names = TRUE)
  
  list.dirs(path = caminho, full.names = FALSE)
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Definir se queremos ver os diretórios e subdiretórios dentro deles. Por padrão é TRUE
  
  list.dirs(path = caminho, recursive = FALSE)
  
  list.dirs(path = caminho, recursive = TRUE)
  
  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Argumentos faltantes:
  
  #list.files()
    #pattern
    #ignore.case
    #include.dirs
    #no..
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------