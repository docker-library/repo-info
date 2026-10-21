## `azul-zulu:17-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:941548d2cdb7305b72846c51021c6c02175e8e1b9e882edf53a4a3d72afeed8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ce2235a703d54a970a7458eb9abc8ec95237783996a290faffedb77c82378551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67073695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02b7394c0b844856c01de4e7318837f75ac47c8fdfb383c399a8aec3bf32e0e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:50 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:17:50 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre-headless=17.0.20.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:17:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 21 Oct 2026 21:17:50 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f822dd898384c80c91a66cdc0161c802d603291a0adbbe6c5915c9a7a8f542`  
		Last Modified: Wed, 21 Oct 2026 21:18:01 GMT  
		Size: 63.2 MB (63221468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b8027b8aa32483a845a80d48ccf9f2f01dabdd615e8c84fa093a6a318464cae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07504789a81dab43916dbd044c4a76d7560adbcdfa9d395765325bea7ffa337e`

```dockerfile
```

-	Layers:
	-	`sha256:5fe8e4e39adfb1ec16abe3342f647afc481b7a7b50a632698e00177184ff1eba`  
		Last Modified: Wed, 21 Oct 2026 21:17:59 GMT  
		Size: 7.6 KB (7586 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:790a509a7074af35da3d45f8801fc77ba841b5ecc5d7d943930096cd8d0edde7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66698373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8322ea697db2e1682b4c977beb329a12b1cebc2aae20ad7b9251d261b94b50f4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:28 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:28 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre-headless=17.0.20.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 21 Oct 2026 21:18:28 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ac6230a35f263124a4d9f8292853cd333f69ce4b9f0c13c6ccddb587939d09`  
		Last Modified: Wed, 21 Oct 2026 21:18:39 GMT  
		Size: 62.5 MB (62508879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:11d64b4be94d45fc0af815c11ff3b1d7ff2296231ecce006065b0a993b668def
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f9f709e74ea3ae8cb47c85d06ed52c124784df7983cc2ddc53e302188819936`

```dockerfile
```

-	Layers:
	-	`sha256:6300f6a59ab9222853dca0066eb8023a7e46561072e9612f771e3dbe037d1461`  
		Last Modified: Wed, 21 Oct 2026 21:18:37 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.in-toto+json
