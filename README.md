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

* connect to Rserve

```python
import pyRserve
conn = pyRserve.connect()

# test a R function
conn.eval('rnorm(100)')
```
