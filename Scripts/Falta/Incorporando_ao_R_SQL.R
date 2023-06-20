#USANDO O PACOTE SQLDF
#baixando o pacote
install.packages("sqldf")

#carregando o pacote
library(sqldf)

#criando a consulta SQL
consulta = "
  SELECT 
    Month,
    AVG(Temp) AS media
  FROM airquality
  GROUP BY  
    Month
"

#fazendo a consulta
sqldf(consulta)

#BANCOS DE DADOS SQL
#faz a coneção com o SGBD (pacote RODBC)
odbcDriverConnect()

#consulta SQL
sqlQuery()

#fechar a conexão
odbcClose()