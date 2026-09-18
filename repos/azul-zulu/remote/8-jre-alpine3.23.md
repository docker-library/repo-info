## `azul-zulu:8-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:0f39878fe67243502b63a5b145d4fd7ff94ab5574ee50a0439aa1f4bb62be1ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4c708563be5816ffde31436f9394bfb7b58299bce523e21d763371271a25ea2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47962841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:793aaa49d867c857b8f276293fd6a636380ff4d2ea2d4d2ec559ae39d9b35cbe`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:06 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:38:06 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre=8.0.504-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:38:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 17 Sep 2026 21:38:06 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d563e203d38de09970c5e4146384a83d50b2643aceb6ee88b7e079a3d1bb9fc`  
		Last Modified: Thu, 17 Sep 2026 21:38:14 GMT  
		Size: 44.1 MB (44114334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e6253b21b5115f38a2e4789a7e26925b3371944cfb2b2314c63f1902a53e0287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be53f92b5bda65b0c66992f2fb09114dec77f26e988a5991bbe83d0cdb3250f`

```dockerfile
```

-	Layers:
	-	`sha256:eca99a2f8ccfeaf98c7112f6481ddbfe6a23c61b0d5b5e4e78b6a0e26153ec77`  
		Last Modified: Thu, 17 Sep 2026 21:38:12 GMT  
		Size: 7.5 KB (7474 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d65c2a392c1db97776ac1539160985e758a31243c41215a38424f239de5d5733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48049489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb4facc410e4d7bb06f7cd754bcb168463e484d0aeb82f257d4205580e479c93`
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
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre=8.0.504-r1;      java -version # buildkit
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
	-	`sha256:3969e7e52ca62c1e698b2d65e79ac5b667309228a37977832cd2675d8456a8e3`  
		Last Modified: Thu, 17 Sep 2026 21:39:19 GMT  
		Size: 43.9 MB (43863433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3902dec471d1d1c5ee8970f3419098069f70374ddd2d3b80967fb0ce7447d2d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a7cac9ba47c784e996c18e211c43a43409b7a230042e1b31411ee7fdb5ab06`

```dockerfile
```

-	Layers:
	-	`sha256:859edd558ad2bb68f7c689e8dd12be54640b6543377de2bb45f7abad45f8ad63`  
		Last Modified: Thu, 17 Sep 2026 21:39:17 GMT  
		Size: 7.6 KB (7565 bytes)  
		MIME: application/vnd.in-toto+json
