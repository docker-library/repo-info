## `amazoncorretto:11-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:7c76ab6eef1d6139606e7d16868186aaa11a6639c58a022e897a36662788e6a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b941ebaadb1bbeacea9377a458bee0b4e9facba4ae49f0be694fd4e4317191d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147626367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25793b3c9889381824238714344375cfb7b940ac47cce0f4aa522a11c60ad77d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:46 GMT
ARG version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:46 GMT
# ARGS: version=11.0.33.0.9
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:46 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:07:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3e451707c5b45e2ed6b8521b80dfd58ba33de4c00f25545b32f7fbdfaf35d7`  
		Last Modified: Fri, 23 Oct 2026 18:08:03 GMT  
		Size: 144.0 MB (144000972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:96c253f7a4c68f37d42825a2fc581f1f8762443d915c95d09cd6a9ef09256906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.7 KB (602737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8962c121350556915d7b1f90dfa86857d5d0722ce66af2cd088df26ba3d64bd5`

```dockerfile
```

-	Layers:
	-	`sha256:2f4217f9c554a067b346aa7a08dc4b14025de24079866cc2ce4607075e15b354`  
		Last Modified: Fri, 23 Oct 2026 18:08:00 GMT  
		Size: 593.4 KB (593363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4118dc2d184df280d0860a5b2e0c23361461c88c7b5762fc756019ad3ecedc7c`  
		Last Modified: Fri, 23 Oct 2026 18:08:00 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b6ab828ce666513a75fdc0f32ebfc1c508d94e58864711bc90991c78bd425818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.4 MB (146351432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80451a2cc2f6d7f5f4bb37eeb98f579d77035ffa9464759c2e3f92fab94a01e1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:30 GMT
ARG version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:30 GMT
# ARGS: version=11.0.33.0.9
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:30 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:07:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3cffbccc26cb3ebcd4041ce03cf52b002bb306a3a13c0d2e8eb6082ed5efd1`  
		Last Modified: Fri, 23 Oct 2026 18:07:47 GMT  
		Size: 142.4 MB (142377061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bf81f55d13d3519f4f5655a6e0669e4b3df8847852cdecb582c51fcefa2025a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 KB (602897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab5cd9c8be96092ce0e860352ccca26c93b0fbd31b22ffc6b4eb4159ea6c80be`

```dockerfile
```

-	Layers:
	-	`sha256:f3a8a5dd89bce6fe3ce62c82656b9f88060778dc7ffb9ec21a0c050a1ffa9e2a`  
		Last Modified: Fri, 23 Oct 2026 18:07:44 GMT  
		Size: 593.4 KB (593419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b59e51a6144ea27990e470264b6671f70ebd07a831d3a1c6b378793b6736d691`  
		Last Modified: Fri, 23 Oct 2026 18:07:43 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
