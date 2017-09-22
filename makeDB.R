dbWriteTable(mydb, "mtcars", mtcars)  # "mtcars" 는 table 이름 
dbWriteTable(mydb, "iris", iris)         # “iris” 는 table 이름 
dbListTables(mydb)

dbGetQuery(mydb, 'SELECT * FROM mtcars LIMIT 5')
dbGetQuery(mydb, 'SELECT * FROM iris WHERE "Sepal.Length" < 4.6')
dbGetQuery(mydb, 'SELECT * FROM iris WHERE "Sepal.Length" < :x', 
           params = list(x = 4.6))

#dbDisconnect(mydb)
#unlink("my-db.sqlite")