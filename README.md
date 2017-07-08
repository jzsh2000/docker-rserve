How to use
==========

* start Rserve

```bash
# build docker image
git clone https://github.com/jzsh2000/docker-rserve
cd docker-rserve
docker build -t rserve:v1.0 .

docker run -d -p 6311:6311 rserve:v1.0
```

* connect to Rserve (in python)

```python
import pyRserve
conn = pyRserve.connect()

# test a R function
conn.eval('rnorm(100)')
```

* stop Rserve

```bash
container_id=`docker ps | grep 'rserve:v1.0' | awk '{print $1}'`
docker stop $container_id
```
