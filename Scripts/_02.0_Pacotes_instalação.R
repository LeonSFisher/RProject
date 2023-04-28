######################################################################################################################################################
######################################################################################################################################################

#PACOTES - INSTALAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#DEFINIÇÕES

#Pacotes são coleções de funções, dados e códigos compilados em um formato bem definido
#Uma biblioteca é o diretório onde os pacotes são armazenados

#Os pacotes podem ser de três tipos:

# (1) Pacotes que vêm instalados com o R e são carregados automaticamente. Exemplo: pacote 'base'
# (2) Pacotes que vêm instalados com o R, mas não são carregados automaticamente e precisam ser carregados. Exemplo: pacote 'graphics'
# (3) Pacotes que não vêm instalados com o R, e precisam ser instalados e depois carregados. Exemplo: pacote 'agricolae'

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INSTALAÇÃO DE PACOTES JÁ BAIXADOS

#Pacotes que não vêm instalados com o R precisam ser instalados, por óbvio. 

#Instalar o pacote na pasta padrão (Obrigatório como string).

  install.packages("dplyr")
  
#Se utilizarmos como nome de pacote, obteremos um erro:
  
  install.packages(dplyr)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Instalando mais de um pacote
  
#Tentar instalar dois pacotes de uma vez no argumento da função não funciona  

  install.packages("dplyr", "agricolae")

#Para isso, usar um vetor de caracteres no argumento da função

  install.packages(c("dplyr", "agricolae"))

#Ou criar um vetor de pacotes externamente
  
  pacotes <- c("dplyr", "agricolae")
  
  install.packages(pacotes)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#BAIXAR PACOTES PARA INSTALAR

#Definindo de onde baixar os pacotes na nuvem (repositório)
  
  url1 <- "https://cran-r.c3sl.ufpr.br" #CRAN Brasil, UFPR
  
  url2 <- "https://cran.fiocruz.br"     #CRAN Brasil, Fiocruz
  
#Para instalar um pacote de cada repositório, devemos instalar um de cada vez. 
  
  install.packages("dplyr", repos = url1)
  
  install.packages("agricolae", repos = url2)
  
#Mais de um pacote de um mesmo repositório
  
  install.packages(c("dplyr", "ggplot2"), repos = url1)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo para onde baixar os pacotes (criar as pastas no PC antes de proceder)

  dir1 <- "E:\\GITHUB\\RProject\\Subdiretorios\\dir1"
  
  dir2 <- "E:\\GITHUB\\RProject\\Subdiretorios\\dir2"
  
  dir3 <- "E:\\GITHUB\\RProject\\Subdiretorios\\dir3"

#Instalar o mesmo pacote em mais de uma pasta
  
  install.packages(c("dplyr"), lib = c(dir1, dir2))
  
#Instalar vários pacotes em uma mesma pasta
  
  install.packages(c("dplyr", "ggplot2"), lib = dir3) 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo o diretório de download do pacote de instalação (compactado)
  
#Se não for informado, será baixado para a pasta de arquivo temporário e apagado depois de instalado (criar as pastas antes senão haverá um erro)
  
  arquivo_compactado <- "E:\\GITHUB\\RProject\\Subdiretorios\\dir4"
  
  install.packages(c("dplyr", "ggplot2"), destdir = arquivo_compactado)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INSTALAÇÃO DE DEPENDÊNCIAS
  
#Alguns pacotes possuem outros pacotes como prerrequisitos. São as suas dependências, ou seja, pacotes que guardam funções que são usadas por
#funções do pacote dependente. 
  
#Caso um pacote necessite de outro, será emitido um aviso e necessitamos instalar este a fim de utilizarmos aquele. É últil, ao instalar um
#pacote, intalar também as suas dependências de imediato.
  
#Para instalar pacotes com as suas dependências, fazemos:
  
  install.packages("dplyr", dependencies = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INFORMAÇÃO SOBRE A INSTALAÇÃO
  
#Exibir informaçòes adicionais
  
#Alguns pacotes são naturalmente silenciosos na instalação ou mostram poucas informações. Para forçar que pacotes exibam mais informações
#durante o processo de instalação, usamos o parâmetro 'verbose'. Caso o pacote realmente não tenha muita informação para mostrar, esta opção
#não terá, evidentemente, muita utilidade.
  
  install.packages(c("dplyr", "ggplot2"), verbose = TRUE)
 
#Reduzir a quantidade de outputs
  
#Contrariamente, pode ser que alguns pacotes exibam muitas informações desnecessárias para o momento tornando sua instalação muito verbosa.
#Para tentar diminuir a quantidade de informação mostrada, podemos usar o parâmetro 'quiet'. Caso o pacote realmente necessite mostrar as
#informações que mostra, esta opção não terá, evidentemente, muita utilidade.
  
  install.packages(c("dplyr", "ggplot2"), quiet = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#PROCESSAMENTO PARALELO  
  
#Instalação com processamento paralelo
  
#Algumas vezes, as instalações podem ser demoradas, principalmente quando muitos pacotes são instalados ou quando possuem muitas dependências.
#Um recurso interessante, nesse caso, é utilizar poder de processamento paralelo. O parâmetro 'Ncpus'determina quantos núcleos do processador 
#serão utilizados durante o processo. 
  
  install.packages(c("dplyr", "ggplot2"), Ncpus = 4)

#-----------------------------------------------------------------------------------------------------------------------------------------------------