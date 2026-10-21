## `azul-zulu:8-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:4b477f8bd9f9839ffc69a0c0b8566244111be77f33a2e1d551083f69c5678c0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:7f612c379920d86a02cf7804dcc04e316cef5842aa4f4053abba7b15b1080461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (56979983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcf75fca87845947cee5af2059e7aa94ec25007235fa83a8bcd239ed55fd3764`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:06 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:17:06 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk-headless=8.0.504-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:17:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 21 Oct 2026 21:17:06 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7319183ae10cc9e393ed24dcc07b5d16c4a7202dc1de2041c65ee5e3603658d6`  
		Last Modified: Wed, 21 Oct 2026 21:17:15 GMT  
		Size: 53.1 MB (53127756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:406ab1ddadbc6e01e9caad9741b4f043907b836cedb90df7aa29200b0ebe576b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92582d0682c72b8e3e5aafdf36624a4dfc02d07f43ce78d9e68fedb0cf10ef49`

```dockerfile
```

-	Layers:
	-	`sha256:626ca7024ae305f7383d282266b942c1e97de15d97d5a90de0e02b9e2bdd1e78`  
		Last Modified: Wed, 21 Oct 2026 21:17:14 GMT  
		Size: 7.5 KB (7550 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:bd67b65c9796abe68fce38b47cec18aef9a8f139f29e16d2eccbd17bf7683bb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57033609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6b54217e180185e9fff768f0c655b64645d01db4f63a43784d27dab87e249b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:43 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:17:43 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:43 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk-headless=8.0.504-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:17:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 21 Oct 2026 21:17:43 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729639701339a40681d8b6d111dd8b2144a51c7fc8d3d4785a3f60ae0089ce7d`  
		Last Modified: Wed, 21 Oct 2026 21:17:53 GMT  
		Size: 52.8 MB (52844115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ec78abb5ec61fd957b736491c9c6efac20825c64e5ae8021a4177fa7156f619e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f760ab7758ba3aeac6e2d3e308a78b26d55fa1c438b4d42b2819fcc62304ce5`

```dockerfile
```

-	Layers:
	-	`sha256:7dbf000c4a881216bd5d2fbfbf49fe9e4dc4bf08052345c71254dd58b9ae9a39`  
		Last Modified: Wed, 21 Oct 2026 21:17:51 GMT  
		Size: 7.6 KB (7643 bytes)  
		MIME: application/vnd.in-toto+json
