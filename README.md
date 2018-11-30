# Spark SQL with Metabase
Spark SQL doesn't work out of the box with Metabase, so this repo brings together some public docker images together and adds the spark sql driver to the base Metabase image.

```
docker-compose --project-name cluster -f docker-compose-spark-cluster.yml up
docker-exec -it spark-master /bin/bash
```

then

```
cd /spark/sbin
./start-thriftserver.sh --master spark://spark-master:7077 --hiveconf hive.server2.thrift.port=10015 --executor-memory 8G --executor-cores 8
```

Then Start the app:

```
docker-compose --project-name cluster -f docker-compose-metabase.yml
```

Create a table from existing data
```
create table XXXX
USING PARQUET
LOCATION '/datasets/github.parquet';
```
