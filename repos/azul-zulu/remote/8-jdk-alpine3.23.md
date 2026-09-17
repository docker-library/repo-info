## `azul-zulu:8-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:2a46d68c336abea9628b9d576f532f2e35077dfc3121a047ebd288ca57795ae5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:38dd4858ace89003611d5aa8b433cc05c5a65c9b8f6fddc020648d90ddfd90a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59763003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775a2d8c5d6d814cda5b8ae6b3804b413fed6e1938f347988bed31f2d7665a1c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:18 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:18 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk=8.0.504-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 19 Aug 2026 17:34:18 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d77f17f27046025439f57c65b63fc414625202d8a00c92be60572ed05459e9`  
		Last Modified: Wed, 19 Aug 2026 17:34:27 GMT  
		Size: 55.9 MB (55918582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4615dba0355f17d87ad82f07e03f3885e30be7f70219932bf2b0dd5710cd3090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102762f1de546b2c2223dac54ba75154cb5c35ec361ca703960acea957db2e4e`

```dockerfile
```

-	Layers:
	-	`sha256:893e4d51ee2deb85da97ce14886e14ee892a979c4abec8fc9234ec4355970b04`  
		Last Modified: Wed, 19 Aug 2026 17:34:26 GMT  
		Size: 7.8 KB (7790 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2dd7472516055aa2a8094f09f0404b07c84b1bdfdbf3936b9b6fe19c14e00bf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59864805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d628c66ceb69c8b2307ccf003b7304e62c3effb105f6c44ed5873b550a88430`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:08 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:08 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk=8.0.504-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 17 Sep 2026 21:39:08 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2740a5325835fceeb1cf13d3dcc8f96a94cc34bfbb3900cb4885d6b5a208b48f`  
		Last Modified: Thu, 17 Sep 2026 21:39:17 GMT  
		Size: 55.7 MB (55678749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f43a262e9dd8881df2239814504284386ca7291ff06f1af1be2fce2389106b78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42b9fe4c0e10469d1f35673f39b4a21dbef23c6e4a5d6bbbe1c8fdb6ed8fb5d4`

```dockerfile
```

-	Layers:
	-	`sha256:f6137a9a95fa6231480f6e9ac9841ae2e46d02dba0ae5c010a5c140863068be4`  
		Last Modified: Thu, 17 Sep 2026 21:39:16 GMT  
		Size: 7.9 KB (7894 bytes)  
		MIME: application/vnd.in-toto+json
