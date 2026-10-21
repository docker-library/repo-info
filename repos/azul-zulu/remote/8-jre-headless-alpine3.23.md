## `azul-zulu:8-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:081f63d285c95690ae51bdecf579491ba3d7285ba65fb4d0680e8183b205b09a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:66aa9de3b0111cfdd83ef11072af9e65093a2434d8c97033105cf85762fc9686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45536198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:607fac21220df57e75ccc1a1e611b120f48cc4d6e2132cb58228c149a3172a8c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:18 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:17:18 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.504-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:17:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 21 Oct 2026 21:17:18 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8070e9128914a0e4669d18803d5dee4679182e1e202ded0dbb746ea394307c`  
		Last Modified: Wed, 21 Oct 2026 21:17:26 GMT  
		Size: 41.7 MB (41683971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:381e9bc9a20f7581687513fefd9617bea663fff411748e512375c48193aaa569
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0a994c97347782c3fb4a674403c1c6a2f9076670a9ac4541f446c8dab66610f`

```dockerfile
```

-	Layers:
	-	`sha256:a79a09ada646b72585611a0b7b2a05c221ce526492084678fb6b6c497e5de4cc`  
		Last Modified: Wed, 21 Oct 2026 21:17:25 GMT  
		Size: 7.6 KB (7567 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5003d7512ffcab8f47c69752821ef3ce744283ccd38540d8485c65baa3b44f2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45601843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d01555f523cd7a9c50fb733bb80b5a2e86df84d5c921b0040e090d242eadca`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:53 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:17:53 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:53 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.504-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:17:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 21 Oct 2026 21:17:53 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71c2c156e6900f1be9a5ec1f179a0e83e6d970e227e8981de7d578967495d4d5`  
		Last Modified: Wed, 21 Oct 2026 21:18:02 GMT  
		Size: 41.4 MB (41412349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9d4d7b1ed6a19710c03450a6de8caad701716ec5a8d83786ffec906f2a5ebc41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9601b8ae24d853194f828f3380a4b59bbdd6a51a2cf517e762dbf00971ed1348`

```dockerfile
```

-	Layers:
	-	`sha256:9ce09610f3d59d6e0ea7ecb259fea93273801264421adb3cf530fd7a23f84ebb`  
		Last Modified: Wed, 21 Oct 2026 21:18:01 GMT  
		Size: 7.7 KB (7658 bytes)  
		MIME: application/vnd.in-toto+json
