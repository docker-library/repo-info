## `amazoncorretto:21-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:18b1f6993f45621863865d9e64802ca59421b83fa149196cdc0e6b75c0b65790
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e24f67c7bcd4a4d986d48e6b5f789f69d453e3beb2203729d23c4fdc505b1395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166311604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf2bc120f831dc1c5e3077de52a027c85c5092a78d3aa9e7bd9096738b800fe`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:18 GMT
ARG version=21.0.13.0.11
# Tue, 27 Oct 2026 16:40:18 GMT
# ARGS: version=21.0.13.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:18 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d373db4755aa1343eec864fedf6d4ea7fa70a700fc50fac3504801f55762cd8b`  
		Last Modified: Tue, 27 Oct 2026 16:40:35 GMT  
		Size: 162.5 MB (162459377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bf735d6713252d0c4474d6aad56d9e8b770a2a6548b56b48c7693ec21dffbbb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.8 KB (591785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e343030d67398efd07d575654f5df9810fd8545ff02fc638c6714ea632252971`

```dockerfile
```

-	Layers:
	-	`sha256:0db3b0149609786403bcbae60b60adc9a11b35a4e41929cf6cc41fe9976a963c`  
		Last Modified: Tue, 27 Oct 2026 16:40:32 GMT  
		Size: 582.4 KB (582406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c65bdda22591e8fb897d04c0e3f5c25108b51896f234bb7445223e794cbe46cc`  
		Last Modified: Tue, 27 Oct 2026 16:40:32 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fca6bb60265973ee15cf230e31db87b197a7824dc8af07daf4c68d1a4dab8d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164666281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d766f6b0d3bb12928f89df4af91b5902b449dd7a6e00fb43efce3032f4201898`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:57 GMT
ARG version=21.0.13.0.11
# Tue, 27 Oct 2026 16:40:57 GMT
# ARGS: version=21.0.13.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:57 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce284472705dec37b37c0e572c16dbbb7e86f993da9a1d4c8181c62895755a3f`  
		Last Modified: Tue, 27 Oct 2026 16:41:16 GMT  
		Size: 160.5 MB (160476787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e3cf8b0b423e598aa12913b87b1c1e7992fcc16bbf28197e64b86f5d1c4cdd57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.7 KB (590656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:610afa55a9641e1ed100345088894217c6606c4ae25167fb03bfc00049be31bc`

```dockerfile
```

-	Layers:
	-	`sha256:d5af7dc774ca00fc9fc0a68154cb6ee908ca198f46c6c79454e5d405b285d1f6`  
		Last Modified: Tue, 27 Oct 2026 16:41:12 GMT  
		Size: 581.2 KB (581175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9764a85c99c6dc6ce8094ebdf98b5b77f86decdf242332ddc3ecf027e131e3eb`  
		Last Modified: Tue, 27 Oct 2026 16:41:12 GMT  
		Size: 9.5 KB (9481 bytes)  
		MIME: application/vnd.in-toto+json
