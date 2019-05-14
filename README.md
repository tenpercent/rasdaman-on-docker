# rasdaman-on-docker
The purpose of this repository is to set up a docker image where RasDaMan database can be run and sample queries can be issued.
```
$ docker run -ti tenpercent/rasdaman
# start_rasdaman.sh 
start_rasdaman.sh: starting rasdaman server complex...
/opt/rasdaman/bin/start_rasdaman.sh: line 196: cd: /opt/rasdaman/log/: No such file or directory
start_rasdaman.sh:   starting rasmgr... ok, pid 23.
start_rasdaman.sh:   starting all rasdaman servers... ok.
start_rasdaman.sh: done.
# rasql -q 'select {1+1, 1-1}' --out string
...
  Result element 1: { 2, 0 }
# rasql -q 'select encode((marray x in [0:1, -1:1] values 1), "JSON")' --out string
...
  Result object 1: [[1,1,1],[1,1,1]]
# rasql -q 'select encode((marray x in [0:2, 0:2] values x[1]+x[0]), "JSON")' --out string
...
  Result object 1: [[0,1,2],[1,2,3],[2,3,4]]  
```
