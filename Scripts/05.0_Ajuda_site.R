######################################################################################################################################################
######################################################################################################################################################

#AJUDA - SITE

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#AJUDA PELO SITE

#No RStudio, abre na aba 'Help'. NO RGui abre no navegador

  help.start()

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo em que navegador desejamos abrir a ajuda. Devemos passar o endereço do aplicativo ao parâmetro 'browser'

#Abrindo a página de ajuda no Google Chrome

  help.start(browser =  "C:\\Program Files\\Google\\Chrome\\Application\\chrome")
 
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Abrindo a página de ajuda no Brave
  
  help.start(browser = "C:\\Program Files\\BraveSoftware\\Brave-Browser\\Application\\brave")
 
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Abrindo a página de ajuda no Mozilla Firefox
  
  help.start(browser = "C:\\Program Files\\Mozilla Firefox\\firefox")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Abrindo a página de ajuda no Opera
  
  help.start(browser = "C:\\Users\\Leandro Luz\\AppData\\Local\\Programs\\Opera\\opera")
 
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Abrindo a página de ajuda no Microsoft Edge
  
  help.start(browser = "C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#BUSCA ESPECÍFICA

#Podemos fazer a busca no site por tópicos específicos
  
#Uma só palavra na busca

  RSiteSearch("cosine")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Mais de uma palavra será buscada individualmente ou em conjunto como numa frase

#Abaixo, o comando busca tanto por 'cosine' quanto por 'sine' quanto por 'cosine sine'

  RSiteSearch("cosine sine")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definir que as palavras devam ser buscadas obrigatoriamente organizadas como frases

#Para mais de uma frase numa mesma string, elas devem estar separadas por chaves {} ou \" 

#Uma só frase buscada como um todo

  RSiteSearch("{logistic regression}")

#Perceba que as {} fazem total diferença na busca como frase, sendo que o comando acima e diferente deste:

  RSiteSearch("logistic regression")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Mais de uma frase dentro de uma mesma string
  
#Frases separadas por {}

  RSiteSearch("{logistic regression} {glm object}") 
  
#Frases separadas por "\ e \"

  RSiteSearch("\"logistic regression\" \"glm object\"")

#Ou uma junção de ambos os separadores
  
  RSiteSearch("{logistic regression} \"glm object\"")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Podemos substituir os símbolos de \" por aspas simples ou aspas duplas se usarmos externamente aspas duplas ou simples, respectivamente
  
  RSiteSearch("'logistic regression' 'glm object'")  
  
  RSiteSearch('"logistic regression" "glm object"')

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Podemos também procurar em locais possíveis onde podemos achar a resposta usando o parâmetro restrict
  
#Os valores do parâmetro 'restrict' correspondem à caixa de seleção no topo da página de busca
  
#Usamos 'functions' procura em páginas de ajuda do CRAN
#Usamos 'descriptions' para buscar por descrições extendidas dos pacotes do CRAN
#Usamos 'Rfunctions' para buscar páginas de ajuda do pacote base do R
#Usamos 'Rmanuals' para manuais do R
#Usamos 'news' para novos pacotes
#Usamos 'READMEs' para arquivos de README
#Usamos 'views' para task views que ajudam com pacotes relacionados a um certo tema
#Usamos 'vignettes' para vingnettes que são uma espécie de guia mais robusto

  RSiteSearch("cosine", restrict = c("functions", "descriptions", "news", "Rfunctions"))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#O parâmetro sortby define de que modo organizar a pesquisa na janela de resultados
  
#Usamos 'score' para relevância

  RSiteSearch("cosine", sortby = "score")

#Usamos 'date' para filtrar pela data: early para mais antigo e late para mais recente

  RSiteSearch("cosine", sortby = "date:late")

  RSiteSearch("cosine", sortby = "date:early")

#Usamos 'subject' para ordem alfabética e subject:descending para ordem alfabética inversa

  RSiteSearch("cosine", sortby = "subject")

  RSiteSearch("cosine", sortby = "subject:descending")

#Usamos 'size' para buscar pelo tamanho do documento: size para crescente e size:descending para decrescente

  RSiteSearch("cosine", sortby = "size")

  RSiteSearch("cosine", sortby = "size:descending")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Usamos 'matchesPerPage' para definir quantos itens por página da pesquisa

  RSiteSearch("cosine", matchesPerPage = 5)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definir que elementos da pesquisa exibir por link: (all) para todos eles e (any) para qualquer um deles
  
#Exibirá resultados para seno e cosseno juntos

  RSiteSearch("cosine sine", words = "all")
  
#Exibirá para seno, cosseno, ou ambos

  RSiteSearch("cosine sine", words = "any")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  