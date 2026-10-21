## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:74052dd430b2c2407da24f45570e837d0e207649c961f1c89cbcdda109bae35a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4c263b951d78c93b911ec79dccdad57ce89aa632c282dbde869292ffdfa6da17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47930809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a0245b92288e21101280f4a51274228beb6218cb74c37e7d1de412439e1665`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:24:09 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:24:13 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Wed, 21 Oct 2026 21:24:13 GMT
ENV INFLUXDB_PR=
# Wed, 21 Oct 2026 21:24:13 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Wed, 21 Oct 2026 21:24:13 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Wed, 21 Oct 2026 21:24:13 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 21 Oct 2026 21:24:13 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 21 Oct 2026 21:24:13 GMT
VOLUME [/var/lib/influxdb]
# Wed, 21 Oct 2026 21:24:13 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:24:13 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 21 Oct 2026 21:24:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 21:24:13 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5459e4aaa2d19b063ebf079928bc19bb9d324c509406de6ea8ec9eb4272cd2c6`  
		Last Modified: Wed, 21 Oct 2026 21:24:24 GMT  
		Size: 1.2 MB (1180323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b7e456013024ec945dabd54b77a53530995d328377e3dd76b6ce4374b22693`  
		Last Modified: Wed, 21 Oct 2026 21:24:25 GMT  
		Size: 43.1 MB (43123321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bc24d35876ce636e22235617a90f1a7ad9570d272a11982c2adac8cd26ffdf5`  
		Last Modified: Wed, 21 Oct 2026 21:24:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6483c843800eb5abb284f16b1723191ee7a1a4cfe15ee9a4a0766ac121b9cdc`  
		Last Modified: Wed, 21 Oct 2026 21:24:24 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1756ffc07156494544c4133bed4c68f075de343071fac3726444cd2ef49421ed`  
		Last Modified: Wed, 21 Oct 2026 21:24:25 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:aa1f5d0743b53e4ada83f34f38b30bcdca000c77724b9412fc964228ed282d9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **778.5 KB (778530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffebfca455d4dd77755c589e12d6f0fd35a7bdda07fc8261b70aec8ac00c8a9`

```dockerfile
```

-	Layers:
	-	`sha256:b715ba98e096e5c4d5ac749c0b006383d3ad2d3d4b48a6ac6ae83fc2fd588bcf`  
		Last Modified: Wed, 21 Oct 2026 21:24:24 GMT  
		Size: 763.0 KB (763000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81e110149f5501a6062d7ba7cd885ab4797b10ca6c5c7c3750467dccb39aea9b`  
		Last Modified: Wed, 21 Oct 2026 21:24:24 GMT  
		Size: 15.5 KB (15530 bytes)  
		MIME: application/vnd.in-toto+json
