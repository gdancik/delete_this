# Test connection to MySQL DB from lamp-rm docker service.
# See: https://github.com/gdancik/lamp-rm

library(RMariaDB)

# Connect to employee database using a configuration file,
# which should be in the working directory
 con <- dbConnect(MariaDB(), group = "clientdbemployees")

  # # connect to database without configuration file 
  #  cat("reconnecting using arguments...\n")
  #   con <- dbConnect(MariaDB(), user = 'root', password = 'password',
  #                   host = '0.0.0.0', port = '3000', 
  #                   dbname = 'mysql')
 
# test query
employees <- dbGetQuery(con, 'SHOW DATABASES;')

# print output
print(employees)

# disconnect from database
dbDisconnect(con)
