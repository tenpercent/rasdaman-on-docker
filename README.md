# rasdaman-on-docker
The purpose of this repository is to set up a docker image where RasDaMan database can be run and sample queries can be issued.
```
$ docker run -ti tenpercent/docker
# start_rasdaman.sh 
start_rasdaman.sh: starting rasdaman server complex...
/opt/rasdaman/bin/start_rasdaman.sh: line 196: cd: /opt/rasdaman/log/: No such file or directory
start_rasdaman.sh:   starting rasmgr... ok, pid 23.
start_rasdaman.sh:   starting all rasdaman servers... ok.
start_rasdaman.sh: done.
# rasql -q 'select {1+1, 1-1}' --out string
rasql: rasdaman query tool v1.0, rasdaman 9.8.0.
Opening database RASBASE at localhost:7001... ok.
Executing retrieval query... ok.
Query result collection has 1 element(s):
  Result element 1: { 2, 0 }
rasql done.
```
