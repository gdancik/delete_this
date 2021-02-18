# Demo of a Github action with MySQL connections

## Connecting to the DB from the command line
```
mysql --host 0.0.0.0 --port 3000 -uroot -ppassword -e "SHOW DATABASES"
mysql --defaults-extra-file=.my.cnf --defaults-group-suffix=dbemployees -e "SHOW DATABASES"
```
## Connecting to MySQL from RMariaDB

For unknown reasons, using `default.file` does not work. However, RMariaDB will recognize the default ~/.my.cnf. 
Therefore, Github action should copy the local .my.cnf to ~/.my.cnf  

