## `azul-zulu:8-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:639254e31ee73e7b6cd178ab81d5bc06c0910bf323c4ea5e7090593d6edaab4b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:46eeffc61412402a2bf88f6bd84613fb3a65514603ac585c522c1f28bd717d64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (56972206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb4cffc936274de1beafce8b7f7a8548f058304ab21dfef3a15637c3cf74d71`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:15 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:15 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk-headless=8.0.504-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 19 Aug 2026 17:34:15 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ff63ce5179e35acd5bd9d71ad60309f946824caddb76d31415fc35079e4ae2`  
		Last Modified: Wed, 19 Aug 2026 17:34:23 GMT  
		Size: 53.1 MB (53127785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:35418c2f1733f903a3101aa1f2e9a70b030e104224dc8060675d34502856f889
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c050014435d869139f8d3da4b888ea39153d5d75f783f5afafab95b6160db27`

```dockerfile
```

-	Layers:
	-	`sha256:0d38e9cf1777b9dc3c764490f7d91a1785abe0bcf9d93bbbfc784d52b42f9cfd`  
		Last Modified: Wed, 19 Aug 2026 17:34:22 GMT  
		Size: 7.6 KB (7551 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:43b299c7562d0107cf8ec1e5078fc32192ab9c418472f41b6f2dd896c18d3fd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57030277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb85a855ae48643934f7552334fe92e3a93d7f37085902103ebb82bc512c3111`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:10 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:10 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk-headless=8.0.504-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 17 Sep 2026 21:39:10 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df45ba0501fae5cca787516f89ddb0939de792eb50aa69ce883fb075747de9e`  
		Last Modified: Thu, 17 Sep 2026 21:39:19 GMT  
		Size: 52.8 MB (52844221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:95fd3d462e13c5312cf1882102b2834b2b4208901df46f7016db78bb2b1adbb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5696ee641d8437e5683c137302884fc3644ff98e79980b242c80a1d062860ba2`

```dockerfile
```

-	Layers:
	-	`sha256:e02892e45a5fb6191537a5344167468ed23d93f52a1e8db2dbad6cc2554e4148`  
		Last Modified: Thu, 17 Sep 2026 21:39:18 GMT  
		Size: 7.6 KB (7643 bytes)  
		MIME: application/vnd.in-toto+json
