## `azul-zulu:8-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:7086314e4c902c35c6046a21c17437b6f5985ccfb305e021fb95457d2707b196
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
$ docker pull azul-zulu@sha256:127a564a33d8c88ef62aaf2291c9a233c92e8bdbaf6efaeb6d0acebfce60c422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57026268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5183933b97f8063b8f1bf2c69764ed67163f174be221df0a562a34f6037dc302`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:05 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:05 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk-headless=8.0.504-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 19 Aug 2026 17:34:05 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e912f128307b2a81ce83e8ad887ac059693ec941ae13ebefe45c30e71134b86`  
		Last Modified: Wed, 19 Aug 2026 17:34:14 GMT  
		Size: 52.8 MB (52844408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3a485115ddfa8ec699a5d31a7a74048f4c459458bcad58b6bd2dba83f81d7563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:242af9baf5856bd86fa80d120133aedc4e10f15d06beb93f15d04ab382474716`

```dockerfile
```

-	Layers:
	-	`sha256:4fb7baa99e71354df0b6375930af9073455793dd3b062e8fd0f279c381dca8ec`  
		Last Modified: Wed, 19 Aug 2026 17:34:13 GMT  
		Size: 7.6 KB (7643 bytes)  
		MIME: application/vnd.in-toto+json
