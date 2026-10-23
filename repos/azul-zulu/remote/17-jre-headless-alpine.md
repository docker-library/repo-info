## `azul-zulu:17-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:ba01c1ec5119d477baa4ef84490b88afb5b27249f1c6a2799fbe4f083d747dd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:3181d26fbcd55139a554c61ea04a1ce5ebcf04c1f5834370e7913aa770dc6675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67228020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9508eadda13f8fa23b35407be6073cfbd08bfb015dd8c38593cbe769bc9e3b6d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:01:20 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:01:20 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:01:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre-headless=17.0.21-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:01:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 23 Oct 2026 20:01:20 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb8b49f90f35e286aaca04bc5838952f29f23383134f17b98fa64edf47c4d90`  
		Last Modified: Fri, 23 Oct 2026 20:01:31 GMT  
		Size: 63.4 MB (63375793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:561822d0170083d5e5bf9f0b7bf62e659ecb3d42cd9554fe316d8571f8621878
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592bc186ad414162272a89bf220ff8d0dbecc2f44dc7209cc345392c040e4d24`

```dockerfile
```

-	Layers:
	-	`sha256:dbfb9a23afeea89f171a5160d71f2ec0fdd8d4e965ee39ab708d5e6d676e3a0a`  
		Last Modified: Fri, 23 Oct 2026 20:01:29 GMT  
		Size: 7.6 KB (7576 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e6e514774a88d3ba940485a197667af65f8602eceba64c0b106a957eb3dc75f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66876386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a0f5fc821c86dcbc788ab864c2174f16bfc77c5164ff5aad4e349f50eaee82`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:02:49 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:02:49 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:02:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre-headless=17.0.21-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:02:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 23 Oct 2026 20:02:49 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a762902e394fe4007e0319f80ddbead1724249763cd360c12b59b4708e7358ba`  
		Last Modified: Fri, 23 Oct 2026 20:03:00 GMT  
		Size: 62.7 MB (62686892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:975f72c9fe8941bf985546633dcbc452b1c5cf23f82748c9bdb690af2cd16aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f8e284992fbe331b7f62a1d5459c86c3277df203d0ba452c5dea2876d03a97`

```dockerfile
```

-	Layers:
	-	`sha256:b38baa948da420ec554ce9a0effee9b697e26827074836c4a58bef9d56306aed`  
		Last Modified: Fri, 23 Oct 2026 20:02:58 GMT  
		Size: 7.7 KB (7667 bytes)  
		MIME: application/vnd.in-toto+json
