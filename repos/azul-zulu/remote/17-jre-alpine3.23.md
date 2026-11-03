## `azul-zulu:17-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:44b2fa3605c82fe86b0b900ae04b52da34211ee8b855689117bb77a00bc73e9d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0995829599f1ea79c82807ec2ccdbe8619d4ce4a2795bb0718f54dd4beb10b01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70322474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7683c4c60dbbcb488498f503580394d61abd3b8c42f376b1973c9838b7be80`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:08:14 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:08:14 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:08:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre=17.0.21.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:08:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 03 Nov 2026 00:08:14 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c061c306d8a078974c4ac6071a7366bd729be6a2d1ffb06d72151e2e762d49`  
		Last Modified: Tue, 03 Nov 2026 00:08:25 GMT  
		Size: 66.5 MB (66470247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a91369eaa6450748c275469972fa2f3f41d813ae1747d9f668a02b7b186cad38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08990ac4a6ef40082b59c10259ae76ea5232597c425e41d2bfc537f44400be2`

```dockerfile
```

-	Layers:
	-	`sha256:cdf2806b0838bd4b0554b054fe4cf0c96483120dfd86f61ddd553766851c9f1b`  
		Last Modified: Tue, 03 Nov 2026 00:08:23 GMT  
		Size: 7.5 KB (7503 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fc879b674b324f4d1d80d6579be1fd160bbd21600948a2690ad89357d26fc1f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (70025220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58d8b4e1e76b66b590c106937202e79f18861ffa6fc93a98b1653d04128ca2de`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:08:22 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:08:22 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:08:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre=17.0.21.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:08:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 03 Nov 2026 00:08:22 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138ad550a1e5b8277ac9c70f70a4bfd83cb3252964af0bef68a5e1af72498a17`  
		Last Modified: Tue, 03 Nov 2026 00:08:34 GMT  
		Size: 65.8 MB (65835726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bbaa94c4c848d716691763947cdfa4868cc2cde753e80228dad9cc42463ad9d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bde553a9c00dd67d4ee1a318053f321ba248c3785ecdb6dc9d21c84862dcc49`

```dockerfile
```

-	Layers:
	-	`sha256:1ce34884a07876c86ee0152eb8973a3e2aa3f43406298262184940239e948f78`  
		Last Modified: Tue, 03 Nov 2026 00:08:33 GMT  
		Size: 7.6 KB (7595 bytes)  
		MIME: application/vnd.in-toto+json
