## `amazoncorretto:8-alpine3.21-jre`

```console
$ docker pull amazoncorretto@sha256:cb753b757d945245aa73b5dfa8186cb213abf20b36de9c1b5283190e53dbf1e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.21-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:50ba8c278c47c2f73e5aa804dfa4852199b3ee63689e040416c51094c97981d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45463851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0555da0d9f07f3a2151c521d4461aa29d6a779992268b1c1ecbc57f380bd0f2d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:12 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:12 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:12 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286825fd6359203709a1e082f16c4e19f878edfb630e0daeb6d1bc31c5ca17fb`  
		Last Modified: Tue, 27 Oct 2026 16:39:22 GMT  
		Size: 41.8 MB (41838456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e079724af2a90777f81a6039e7ac82d438db07510346e1badb4cffc403e6058a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 KB (197381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8efb2ffcb40175200347c1798a9e22f103a2a55576f48b83b536edcedf90d3e6`

```dockerfile
```

-	Layers:
	-	`sha256:4149a72aabaa821ed64836f3151e93440f109655226ac939176426b939108fb0`  
		Last Modified: Tue, 27 Oct 2026 16:39:20 GMT  
		Size: 188.7 KB (188725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43bb241d710cd4ddc7a84e727dffbf9505fd50a7d735b6a3169c4d7e4cd9deb8`  
		Last Modified: Tue, 27 Oct 2026 16:39:20 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.21-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:cc0564fd71b12561de371b8322ccd6dc118a7514fb5ddbcdb7aa28eeda20fd9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45564684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b4c53fc9e3d4f159c3354c56dbc46a3b16232fbd58fd9854f06fe9db4d25ad`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:39 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:39 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:39 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de06772892ee1ef27617afd4f5d56c7edbc93a41a762392f1a2744aace757b83`  
		Last Modified: Tue, 27 Oct 2026 16:39:49 GMT  
		Size: 41.6 MB (41590313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4b01ade46fff65fca5e65e77826ed5e5a27cfab1d0aff28c4c9bab1d15c46803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 KB (197569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7abf671f3550b839c6a6cd2200b39693d99af7ec0148026c8b65c2958ddc66`

```dockerfile
```

-	Layers:
	-	`sha256:f942afd41314e940b8372c4706c16d2569158e427ef086a4b92e23dd8282f309`  
		Last Modified: Tue, 27 Oct 2026 16:39:48 GMT  
		Size: 188.8 KB (188833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aed3d3b4b0cf1645cf4acd9802467ea9e63b7524941639f47896de9e28631140`  
		Last Modified: Tue, 27 Oct 2026 16:39:48 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
