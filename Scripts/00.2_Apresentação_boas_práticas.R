######################################################################################################################################################
######################################################################################################################################################

#APRESENTAÇÃO - BOAS PRÁTICAS DE PROGRAMAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#BOAS PRÁTICAS DE PROGRAMAÇÃO

#Utilizar sempre comentários. 

#Os comentários são feitos com o símbolo de '#'. Ao chegar um símbolo de '#', o R ignorará aquela linha completamente e prosseguirá com a execução na 
#linha seguinte. Os comentários podem ser utilizados para:

#--Explicar seções do código. Os comentários são executados após um símbolo de '#' e vão até o fim da linha.
#--Anular comandos durante a fase de testes do script.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Utilizar, quando possível, indentações

#Indentações servem para promever clareza no código. Trata-se do uso de linhas em branco para espaçar os comandos verticalmente e tabulações para
#espaçá-los horizontalmente. isso permite identificar apenas olhando o escopo de funções, blocos de códigos, loopings, condicionais etc., gerando
#organização para o código e, consequentemente, facilitando seu entendimento e manutenção.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Limpeza do console

#Quando possível, limpar o console para despoluir a visualização das saídas. (ctrl + l).

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Nomeando objetos de forma inteligente

#Nomear objetos efêmeros (aqueles usados dentro de uma mesma seção) com nomes curtos para facilitar. Nomear objetos persistentes (aqueles usados 
#entre seções distintas), ou seja, possuem utilização frequente, com nomes significativos que transmitam sua utilidade.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Bom uso de recursos

#Nunca deixar de descarregar pacotes depois de utilizados para evitar conflitos de funções de mesmo nome oriundas de outros pacotes e redução de 
#desempenho por sobrecarga da memória.

#Utilzar ao máximo funções otimizadas para vetorização objetivando ganho de eficiência.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Organização de arquivos

#Separar scripts por projeto, não por tema.

#Não esquecer de salva o workspace para caso de precisar continuar o trabalho depois.

#-----------------------------------------------------------------------------------------------------------------------------------------------------