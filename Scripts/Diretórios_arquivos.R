######################################################################################################################################################
######################################################################################################################################################

#DIRETÓRIOS - ARQUIVOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ARQUIVOS DO DIRETÓRIO

#Verificar os aquivos e subdiretórios do diretório de trabalho atual

#Usamos a função no formato vazio

  list.files()

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificar os arquivos de um diretório especificado

#Usamos a função com o diretório como uma string de carcteres

  list.files("E:\\GITHUB\\RProject")

#Explicitanedo o parâmetro 'path' que identifica o caminho

  list.files(path = "E:\\GITHUB\\RProject")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Usando uma variável para armazenar o caminho do arquivo
  
  caminho <- "E:\\GITHUB\\RProject"
  
#Utilizando a variável na função
  
  list.files(caminho)
  
#Ou explicitando o parâmetro
  
  list.files(path = caminho)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Definindo se mostra os arquivos ocultos ou apenas os visíveis
  
#Os nomes de arquivo que começam com o ponto '.' são tomados como ocultos e não são mostrados numa pesquisa de arquivos usual. Para exibir na lista
#esses arquivos, devemos utilizar o par6ametro 'all.files'. Por padrão, o valor do parâmetro all.files é FALSE (não mostra os arquivos ocultos).

  list.files(path = caminho, all.files = FALSE)
  
#Para exibir os arquivos ocultos, definimos o seu valor para TRUE
  
  list.files(path = caminho, all.files = TRUE)
  
#Se quisermos excluir os arquivos ocultos '.' e '..', usamos o parâmetro 'no..'
  
#Por padrão, seu valor é FALSE
  
  list.files(path = caminho, all.files = TRUE, no.. = FALSE)
  
#Com valor TRUE no par6ametro, os arquivos '.' e '..' serão excluídos da listagem
  
  list.files(path = caminho, all.files = TRUE, no.. = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------   
#Definindo se exibe o nome completo do caminho ou só o nome do arquivo principal
  
#Por padrão, o valor do parâmetro full.names é false e o nome completo não é mostrado

  list.files(caminho, full.names = FALSE)
  
#Ao definirmos seu valor para TRUE, veremos o nome completo do arquivo, melhor dizendo, seu endereço
  
  list.files(caminho, full.names = TRUE)
  
#Também podemos usar esse parâmetro para verificar os nomes completos dos arquivos ocultos

  list.files(caminho, all.files = TRUE, full.names = TRUE)
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Lista recursiva
  
#Listagem recursiva trata-se de um procedimento para exibir todos os arquivos e arquivos de subdiretórios. A verificação recursiva ocorre com o uso 
#do parâmetro 'recursive'.
  
#Se FALSE (valor padrão), exibe apenas os arquivos e subdiretórios imediatos do diretório atual
  
  list.files(caminho, recursive = FALSE)
  
#Se TRUE, mostra todos os arquivos e subdiretórios e todos os arquivos dos subdiretórios do diretório atual
  
  list.files(caminho, recursive = TRUE)
  
#No caso de querermos listas recursivas, podemos decidir se queremos exibir os nomes dos subdiretórios isoladamente. Fazemos isso com a ajuda do
#parâmetro 'include.dirs' que só faz sentido para o caso de 'recursive = TRUE'. Se FALSE não fará diferença.
  
#Com o valor do parâmetro include.dirs sendo TRUE, vemos o nome do subdiretório listado antes do nome dos arquivos que ele contém.
  
  list.files("E:\\GITHUB\\RProject", recursive = TRUE, include.dirs = TRUE)
  
#Com o valor do parâmetro include.dirs sendo FALSE, apenas os nomes dos arquivos são listados
  
  list.files("E:\\GITHUB\\RProject", recursive = TRUE, include.dirs = FALSE)
  
#A opção de exibi-los ou não é apenas para listas recursivas. Em listagem não-recurssiva, os subdiretórios são sempre listados. 
  
  list.files("E:\\GITHUB\\RProject", recursive = FALSE, include.dirs = TRUE)
  
  list.files("E:\\GITHUB\\RProject", recursive = FALSE, include.dirs = FALSE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Listando arquivos através de expressões regulares
  
#Podemos utilizar expressões regulares para filtrar aruivos específicos dentro de uma pasta
  
#Definindo um diretório
  
  local <- "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts"
  
#Abaixo, filtramos os arquivos a exibir por formato: .csv ou.txt
  
  list.files(local, pattern = "\\.csv$")
  
  list.files(local, pattern = "\\.txt$")
  
#Podemos utilizar o parâmetro ignore.case para determinar se devemos filtrar nomes de arquivos diferenciando maiúsculas de minúsculas

#Por padrão é FALSE, o que significa que a busca será case-sensitive. Buscará exatamente da forma como digitado.
  
  list.files(local, pattern = "vend")
  
#Podemos também explicitar o parâmetro:
  
#Se TRUE, tratará minúsculas e maiúsculas como iguais
  
  list.files(local, pattern = "ven", ignore.case = TRUE)
  
  list.files(local, pattern = "VEN", ignore.case = TRUE)
  
#Se FALSE, tratará minúsculas e maiúsculas como diferentes
  
  list.files(local, pattern = "ven", ignore.case = FALSE)
  
  list.files(local, pattern = "VEN", ignore.case = FALSE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Listando arquivos de vários diretórios distintos
  
#Podemos criar um vetor de diretórios com todos os caminhos a pesquisar arquivos
  
  caminhos <- c("E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts", "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_outros")
  
  list.files(caminhos, all.files = FALSE, recursive = FALSE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#UMA ALTERNATIFA À FUNÇÃO list.files()  
  
#A função dir() é um alias (apelido) para a função list.files(). Desse modo, pode ser usada da mesma forma com os mesmos parâmetros:
  
  dir(path = caminhos, all.files = FALSE, full.names = FALSE, recursive = FALSE, include.dirs = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  