## `azul-zulu:11-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:64e04f0c3ad1009c2f7f0fc6d0cfb1d92d4d98799fabfdc4f476b9bf99986294
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:730d66fba7a12b92634f068cad84424e141444b2f0f64feda6dc04022549cab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65737861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5780588621e82b59251fad03a945992292dd65162117d43e7a8eaf8499a21ad3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:32 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:17:32 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.32.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:17:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 21 Oct 2026 21:17:32 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a77cc17cbe1098088fe44f9a8106897727815efd7653dc7345aa2d65f8fb9b1`  
		Last Modified: Wed, 21 Oct 2026 21:17:42 GMT  
		Size: 61.9 MB (61885634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:40052d785078b56206aeba5d0b44dd593b850dfe1a86d4f77bb281f7706bf84c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5cc68f49447ce445c4ead4fecafc80cffae09362b6d170f60280e44635fa13`

```dockerfile
```

-	Layers:
	-	`sha256:7fcc9a59acbd6d1783730431bb8ef77a177c0f18c2d166fc7a88646b0548f70a`  
		Last Modified: Wed, 21 Oct 2026 21:17:40 GMT  
		Size: 7.5 KB (7492 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8b2a52bf770664ce0408734ffc823f0a06cb00b78921eaeb39e0c9de210dacda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65357521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2b442b65550f2363bdada3f5e39fe117ec91585271c58f4aa4d0a7f2b7053eb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:02:01 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:02:01 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:02:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre=11.0.33-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:02:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:02:01 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1126680eda091a347c6dc2279e479cc7b0de4be329b0d6b61fbf0fc4ee1ea04f`  
		Last Modified: Fri, 23 Oct 2026 20:02:11 GMT  
		Size: 61.2 MB (61168027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b7cfc3498c3bb6b25d351765d0fc7667303ff01528f8199f67c06c268eb84e19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6d04e2111a28f2afcb8145dbded65cf514eef66005786205e9d9a3a5089f47`

```dockerfile
```

-	Layers:
	-	`sha256:efed5b9a373799a4a53c11e2f15f35ce601bc4e5e385e8949ea97a9e6d6500fc`  
		Last Modified: Fri, 23 Oct 2026 20:02:10 GMT  
		Size: 7.6 KB (7575 bytes)  
		MIME: application/vnd.in-toto+json
