######################################################################################################################################################
######################################################################################################################################################

#DIRETÓRIOS - SUBDIRETÓRIOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#SUBDIRETÓRIOS

#Damesma forma que temos uma função para listar arquivos, temos uma para listar diretórios que nos permite verificar todos os subdiretórios
#que estão dentro do diretório atual. fazemos isso com a função list.dir()

  list.dirs("E:\\GITHUB\\RProject\\Subdiretorios")

#Podemos explicitar o parâmetro 'path'

  list.dirs(path = "E:\\GITHUB\\RProject\\Subdiretorios")

#Também podemos usar uma variável intermediária

  caminho <- "E:\\GITHUB\\RProject\\Subdiretorios"
  
  list.dirs(caminho)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo se queremos os nomes completos do caminho ou não

#O parâmetro full.names permite executar essa ação

#Se FALSE (valor padrão) mostra os nomes dos diretórios normalmente

  list.dirs(path = caminho, full.names = FALSE)

#Se TRUE, mostra o caminho completo

  list.dirs(path = caminho, full.names = TRUE)

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Definir se queremos ver os diretórios e subdiretórios dentro deles. 

#Fazemos isso com o parâmetro recursive. Por padrão é TRUE, por isso, vimos todos os subdiretório anteriormente

  list.dirs(path = caminho, recursive = TRUE)

#Caso não queiramos saber todos os subdiretórios, mas somente os diretórios imediatos, usamos o valor FALSE no parâmetro

  list.dirs(path = caminho, recursive = FALSE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Listando subdiretórios de vários diretórios diferentes  
  
#Podemos criar um vetor de diretórios com todos os caminhos a pesquisar subdiretórios
  
  caminhos <- c("E:\\GITHUB\\RProject\\Subdiretorios\\dir5", "E:\\GITHUB\\RProject\\Subdiretorios\\dir6")
  
  list.dirs(caminhos, recursive = FALSE)
  
  
  
  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------