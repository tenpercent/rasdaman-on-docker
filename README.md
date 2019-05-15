# rasdaman-on-docker
The purpose of this repository is to set up a docker image where RasDaMan database can be run and sample queries can be issued.
```
## Run the container
$ docker run --user rasdaman -ti tenpercent/rasdaman
## Start a database within it
$ start_rasdaman.sh 
...
## Create the default database
$ create_db.sh
...
## Insert the example collections into the database
$ rasdaman_insertdemo.sh localhost 7001 /opt/rasdaman/share/rasdaman/examples/images rasadmin rasadmin
...
## Run queries
$ q 'select {1+1, 1-1}'
...
  Result element 1: { 2, 0 }
$ q 'select encode((marray x in [0:1, -1:1] values 1), "JSON")'
...
  Result object 1: [[1,1,1],[1,1,1]]
$ q 'select encode((marray x in [0:2, 0:2] values x[1]+x[0]), "JSON")'
...
  Result object 1: [[0,1,2],[1,2,3],[2,3,4]]  
```
