######################################################################################################################################################
######################################################################################################################################################

#APRESENTAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#HISTÓRIA DO R

#O R é um dialeto da linguagem S originalmente desenvolvida por John Chambers na Bell Telephone Laboratories, que fazia parte da AT&T Corp.
#R também possui influência da linguagem Scheme. Assim, é muito similar em aparência com S, mas sua implementação e semântica é derivada de Scheme

#John Chambers assim resumiu a linguagem S: 
#“We wanted users to be able to begin in an interactive environment, where they did not consciously think of themselves as programming.
#Then as their needs became clearer and their sophistication increased, they should be able to slide gradually into programming, when the
#language and system aspects would become more important.”

#Um dos problemas de S é que ela estava limitada ao pacote comercial S-PLUS

#Assim, R começou a ser desenvolvida por Robert Gentleman e Ross Ihaka (R & R) na Universidade de Aukland, Nova Zelândia em 1991.

#O primeiro relato da distribuição do R foi em 1993 no StatLib, um sistema de distribuição de softwares estatísticos.

#Com o incentivo de um dos primeiros usuários deste programa, Martin Mächler (do Instituto Federal de Tecnologia de Zurique, na Suíça),
#“R & R”, em 1995, lançaram o código fonte do R, disponível por ftp.

#Em 1997, foi formado um grupo de profissionais que têm acesso ao código fonte do R, possibilitando, assim, a atualização mais rápida do software. 
#Desde então, o R vem ganhando cada vez mais adeptos em todo o mundo.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#VANTAGENS DO R

#Gratuito (Licença Pública Geral (GNU) da Free Software Foundation)

#Grande comunidade

#Pode ser usado nos sistemas operacionais Windows, Linux e Mac OS

#Amplamente utilizado no meio acadêmico.

#Possui uma vastidão de pacotes

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CARACTERÍSTICAS DO R

#Linguagem interpretada

#Orientada a objetos

#Linguagem de script

#É case-sensitive

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#FUNCIONAMENTO DO R

#As funções do R podem tanto serem usadas como forma de consulta como de atribuição

  names(objeto)

  names(objeto) <- c("nome1","nome2")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Parâmetros das funções
  
#As funções em R possuem parâmetros. Alguns são obrigatórios; outros não.
#Os argumentos obrigatórios são chamados de argumentos não nomeados e os argumentos opcionais são os argumentos nomeados.
#Os argumentos não nomeados são mostrados sem valores na ajuda da função enquanto os nomeados mostram valores.
#Os valores dos parâmetros nomeados mostrados na ajuda são os seus valores padrões. 
#Caso não se informe os valores dos parâmetros nomeados, serão utilizados os valores padrões.
  
#Na função runif(), n é obrigatório e min e max são parâmetros opcionais cujos valores padrão são 0 e 1 respectivamente.
  
  runif(n, min=0, max=1)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#BOAS PRÁTICAS
  
#Utilizar sempre comentários para explicar seções do código
#Nomear objetos efêmeros (aqueles usados dentro de uma mesma seção) com nomes curtos
#Nomear objetos persistentes (aqueles usados entre seções distintas) com nomes significativos
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#EXPRESSÕES
  
#Para colocar duas expressões ou mais numa mesma linha, usamos o ponto-e-vírgula  
  
  x <- c(1, 2, 3); x

  y <- c(2, 3, 0); z <- c(-2, -3, 0); y + z
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------