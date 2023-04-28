######################################################################################################################################################
######################################################################################################################################################

#AJUDA - SITE

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#AJUDA PELO SITE

#Abrir a ajuda inicial
#No RStudio, abre na aba 'Help'. NO RGui abre no navegador

  ?help.start()

#Uma só palavra na busca

  RSiteSearch("cosine")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Mais de uma palavra será buscada individualmente ou em conjunto como numa frase

  RSiteSearch("cosine sine")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Para definir que as palavras devam ser buscadas obrigatoriamente organizadas como frases
#Para mais de uma frase numa mesma string, elas devem estar separadas por chaves {} ou \" 
#Uma só frase

  RSiteSearch("{logistic regression}")

#Mais de uma frase

  RSiteSearch("{logistic regression} {glm object}") 

  RSiteSearch("\"logistic regression\" \"glm object\"")
  
#Ou uma junção de ambos
  
  RSiteSearch("{logistic regression} \"glm object\"")

#Podemos substituir os símbolos de \" por aspas simples ou aspas duplas se usarmos externamente aspas duplas ou simples, respectivamente
  
  RSiteSearch("'logistic regression' 'glm object'")  
  
  RSiteSearch('"logistic regression" "glm object"')

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Podemos também procurar em locais possíveis onde podemos achar a resposta usando o parâmetro restrict

  RSiteSearch("cosine", restrict = c("functions", "descriptions", "news", "Rfunctions"))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#sortby define de que modo organizar a pesquisa na janela de resultados
#score para relevância

  RSiteSearch("cosine", sortby = "score")

#date para filtrar pela data: early para mais antigo e late para mais recente

  RSiteSearch("cosine", sortby = "date:late")

  RSiteSearch("cosine", sortby = "date:early")

#subject para ordem alfabética e subject:descending para ordem alfabética inversa

  RSiteSearch("cosine", sortby = "subject")

  RSiteSearch("cosine", sortby = "subject:descending")

#size para buscar pelo tamanho do documento: size para crescente e size:descending para decrescente

  RSiteSearch("cosine", sortby = "size")

  RSiteSearch("cosine", sortby = "size:descending")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#matchesPerPage para definir quantos itens por página da pesquisa

  RSiteSearch("cosine", matchesPerPage = 5)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definir que elementos da pesquisa exibir por link: (all) para todos eles e (any) para qualquer um deles

  RSiteSearch("cosine sine", words = "all")

  RSiteSearch("cosine sine", words = "any")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  