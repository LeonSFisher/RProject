######################################################################################################################################################
######################################################################################################################################################

#APRESENTAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#HISTÓRIA DO R

#O R é um dialeto da linguagem S que foi originalmente desenvolvida por John Chambers na Bell Telephone Laboratories que fazia parte da AT&T Corp.
#R também possui influência da linguagem Scheme. Assim, é muito similar em aparência com S, mas sua implementação e semântica é derivada de Scheme.

#John Chambers assim resumiu a linguagem S: 
#“We wanted users to be able to begin in an interactive environment, where they did not consciously think of themselves as programming.
#Then as their needs became clearer and their sophistication increased, they should be able to slide gradually into programming, when the
#language and system aspects would become more important.”

#Um dos problemas de S é que ela estava limitada ao pacote comercial S-PLUS. Assim, R começou a ser desenvolvida por dois pesuisadores
#chamados Robert Gentleman e Ross Ihaka (R & R) na Universidade de Aukland, Nova Zelândia em 1991.

#O primeiro relato da distribuição do R foi em 1993 no StatLib, um sistema de distribuição de softwares estatísticos.

#Com o incentivo de um dos primeiros usuários deste programa, Martin Mächler (do Instituto Federal de Tecnologia de Zurique, na Suíça),
#“R & R”, em 1995, lançaram o código fonte do R, disponível por ftp.

#Em 1997, foi formado um grupo de profissionais que têm acesso ao código fonte do R, possibilitando, assim, a atualização mais rápida do software. 
#Desde então, o R vem ganhando cada vez mais adeptos em todo o mundo.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#VANTAGENS DO R

#Gratuito (Licença Pública Geral (GNU) da Free Software Foundation).

#Grande comunidade auxiliando o aprendizado de novos usuários.

#Facilidade de se encontrar material escrito ou digital.

#Multiplataforma - Pode ser usado nos sistemas operacionais Windows, Linux e Mac OS.

#Amplamente utilizado no meio acadêmico e se popularizando no mercado privado.

#Possui uma vastidão de pacotes que facilitam as tarefas.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CARACTERÍSTICAS DO R

#Linguagem interpretada, mas pode incorporar códigos compilados de outras linguagens.

#Multiparadigma - pode ser usada de forma orientada a objetos, estruturada, funcional etc.

#Linguagem de script - permite que partes do código sejam executadas isoladamente.

#É case-sensitive - diferencia letras maiúsculas das minúsculas.

#É uma linguagem vetorial e este fato é importante para a compreensão de seu funcionamento.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#FUNCIONAMENTO DO R

#Nomes de objetos

#Algumas funções do R podem tanto serem utilizadas como forma de consulta ou como meio de atribuição:

#Consultando os nomes de um objeto

  names(objeto)

#Atribuindo nomes a objetos

  names(objeto) <- c("nome1","nome2")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Parâmetros das funções
  
#As funções em R possuem parâmetros. Alguns são obrigatórios; outros não.
  
#Os parâmetros obrigatórios são chamados de parâmteros não nomeados. Isoocorre porque, na documentação da ajuda, eles não têm um nome próprio
#sendo representados por nomes genéricos. Além disso, por serem obrigatórios, não possuem nenhum valor padrão.
  
#Os argumentos opcionais são os argumentos nomeados. Eles possuem nomes próprios fixos na documentação de ajuda e possuem valores padrão que
#são utilizados sempre que não explicitamente fornecidos.
  
#Na função runif(), n é obrigatório e min e max são parâmetros opcionais cujos valores padrão são 0 e 1 respectivamente.
  
  runif(n, min=0, max=1)
  
#Informando outros valores para os parâmetros nomeados, são eles que serão utilizados.
  
  runif(n, min=5, max=10)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#BOAS PRÁTICAS
  
#Utilizar sempre comentários para explicar seções do código. Os comentários são executados após um símbolo de '#' e vão até o fim da linha
  
#Nomear objetos efêmeros (aqueles usados dentro de uma mesma seção) com nomes curtos para facilitar e nomear objetos persistentes 
#(aqueles usados entre seções distintas), ou seja, possuem utilização frequente, com nomes significativos que transmitam sua utilidade.
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#EXPRESSÕES
  
#Para colocar duas expressões ou mais numa mesma linha, usamos o ponto-e-vírgula.  
  
  x <- c(1, 2, 3); x

  y <- c(2, 3, 0); z <- c(-2, -3, 0); y + z
  
  
  
  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------