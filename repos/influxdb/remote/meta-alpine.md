## `influxdb:meta-alpine`

```console
$ docker pull influxdb@sha256:9c037eadb6579c6f447cb20153bde5dcc9f9f40f1a4dfc2ca856fb1abd0f4b31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:9e093321874695f079fac08a6ef12b6d752456f63371d1a46f8ab82305f22c98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24134033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0157093745c77877e974faa6a32c229ea707eda56e9d4b1de2c6e8085cdf514a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:24:14 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:17 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Thu, 05 Nov 2026 19:24:17 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 19:24:17 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Thu, 05 Nov 2026 19:24:17 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influxd-ctl'             'influxdb-*/influxd-meta' &&     rm "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:24:17 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Thu, 05 Nov 2026 19:24:17 GMT
EXPOSE map[8091/tcp:{}]
# Thu, 05 Nov 2026 19:24:17 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:24:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:17 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc8ab5fee5721dbc8d3c12dd1ebac2d8e87e9d7e45df830542e83b7e00a6909`  
		Last Modified: Thu, 05 Nov 2026 19:24:24 GMT  
		Size: 1.2 MB (1180332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bbe76f12ea057eddd521c1b2fa51184fbc6c0707d3daf2afa65d1f4a6dab6b8`  
		Last Modified: Thu, 05 Nov 2026 19:24:25 GMT  
		Size: 19.3 MB (19327733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbec1f1c351e4bfdcf6b3ba50be7c5edf893f075446f7e2391608e4e5810c87`  
		Last Modified: Thu, 05 Nov 2026 19:24:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd5e9c3d1c1fa36036a36de43e2290872fd9cd967f39d61a491c1152f5a012e`  
		Last Modified: Thu, 05 Nov 2026 19:24:24 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:48e1922c1841a009f4423bda44f2f4d031eadf8d8f0d4a9a07be757a334ac29b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **677.8 KB (677792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7028cc68fb474b405e46796dacae5331000d0cabc8b873ec7f8f4a0c0dd0cb`

```dockerfile
```

-	Layers:
	-	`sha256:65f54acff01023789d4d4d8bc3757293d8a0aaf0a157d54761931d23c5b0a651`  
		Last Modified: Thu, 05 Nov 2026 19:24:24 GMT  
		Size: 663.9 KB (663860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d48392e609366b8cb680b2bf413894d23fa6fa0315c0c4292e103ab681a12e2`  
		Last Modified: Thu, 05 Nov 2026 19:24:24 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json
