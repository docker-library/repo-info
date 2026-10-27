## `amazoncorretto:8-alpine3.24-jdk`

```console
$ docker pull amazoncorretto@sha256:0d3839afeb7205342dc9652eeb84e33fbecc37bb3bc6fb2c764c7efc77a48544
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.24-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:15166c4820094944ab6b3fb0e8c6cf25404ad077412b3f76dea9f8f839865700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104718863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b698b815aef1fd28e53508c2ea08d6f8d5caabfccff865f2b639f3c27887e477`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:29 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:29 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:29 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b850ea37a0f54e9b52c53238e377e434be29cb50a1af34a94b8e8752be39d3`  
		Last Modified: Tue, 27 Oct 2026 16:39:42 GMT  
		Size: 100.9 MB (100865754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2e6affd7f08f483f4e4364e5268e4907c8a89b258263f74ca93d726ef66bcbc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 KB (258413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7569aa7a4174671d996f428b97c743d8966759d623961402f274921200e4d777`

```dockerfile
```

-	Layers:
	-	`sha256:393e540c8ee2e8c2472b4d9e904823f9628b83afe267d1884df9b8e516a8d650`  
		Last Modified: Tue, 27 Oct 2026 16:39:40 GMT  
		Size: 247.8 KB (247760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef0071b6d45be5674b6277b5334eb5b9049bbe20a1b96f188c3c6e17a8a71663`  
		Last Modified: Tue, 27 Oct 2026 16:39:39 GMT  
		Size: 10.7 KB (10653 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.24-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5bce497a79696dd0e0bd6909abc9d7ca8070b1208ee4977de61e3e3bd6663810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104884693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb61a965e3c6e59dd1b46186fcee5050fd12a5107380e4391c5c96cac6fd3b0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:04 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:40:04 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:04 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c70e3c58972aac4144fd11a131201483c7ddc200babd824668d0c64a2a17ef8`  
		Last Modified: Tue, 27 Oct 2026 16:40:18 GMT  
		Size: 100.7 MB (100694205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:669a845460e518c59d9a4116ade7f688d2ea3f3adfdcddc5c9fcbe9120a88550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 KB (258095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2a41dae604e4ea53ade3125f12c6b7b4ab6a8973397160c10825142dc15d4c`

```dockerfile
```

-	Layers:
	-	`sha256:93489ac1d04ed6cbc869f6c0d3c42c705d5a11519a3f01ccd95ceb3fd19aa698`  
		Last Modified: Tue, 27 Oct 2026 16:40:16 GMT  
		Size: 247.3 KB (247290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35ab78a430d6f6a980d2c56ffc0cd7bd5605fa679f88152a24a57b9858a9c78a`  
		Last Modified: Tue, 27 Oct 2026 16:40:15 GMT  
		Size: 10.8 KB (10805 bytes)  
		MIME: application/vnd.in-toto+json
