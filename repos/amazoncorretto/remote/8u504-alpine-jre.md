## `amazoncorretto:8u504-alpine-jre`

```console
$ docker pull amazoncorretto@sha256:a1fb6a8e3da02fb0f6b123d1f437817fa1a6ac3cd514280763d8d36fe8843f0c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:28f6c9f96d9b745d2c2b4695be3ab70a7dc764f74948fa3db0f1e4bf1f3e2111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45670828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd306781d07c3ff2141bb5d1065247d087f2e252e6f417a88e54cb85448288ef`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:00 GMT
ARG version=8.504.04.1
# Wed, 21 Oct 2026 22:56:00 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 22:56:00 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 22:56:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:700f2c1c71e39de9579ca89e8665b0ea36d32467052484af8f4e7f1bea659c02`  
		Last Modified: Wed, 21 Oct 2026 22:56:09 GMT  
		Size: 41.8 MB (41817719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:884baf66ad0ec87659cb08b260733bc8116bcbce31a2ff9cc14501708a195a21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b8b59926a156c5764df207365a47750b8086a2b232d045475962b689f65c838`

```dockerfile
```

-	Layers:
	-	`sha256:be726784eab740ba7ca09ff5fb6f301056fe35ae5d7ddbe1c990eb03a5b507f3`  
		Last Modified: Wed, 21 Oct 2026 22:56:08 GMT  
		Size: 187.9 KB (187938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3f03352a24867c0723d5712fd1a62c7dce9f4ca64b0fd5906d20ca62efd4669`  
		Last Modified: Wed, 21 Oct 2026 22:56:08 GMT  
		Size: 9.3 KB (9316 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-alpine-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:485abc9abd5fd7ed2aa3c87db4b4bdfbde09ddfd6b8026a2873f25536a1085b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45765882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c10365c6b5bb6c962e0d407a0a78adc4a7bc1718940e13750a5f699d54be970`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:19:43 GMT
ARG version=8.504.04.1
# Wed, 21 Oct 2026 23:19:43 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 23:19:43 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:19:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e647346deaa0639d9aff8738e09bbfdeea546c68c1030defce24137ed95a78`  
		Last Modified: Wed, 21 Oct 2026 23:19:53 GMT  
		Size: 41.6 MB (41575394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:70723fd56d286235a2118c4ebdfad1d16b021832f87a935875fc4ae71325c5d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 KB (196840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1714ac8f9ce4daa7b1b5b1db55a690eb160904fd4919a1a231a47d5f8843a5e`

```dockerfile
```

-	Layers:
	-	`sha256:716f8d78dbcc04380fb186da793b09e26f3084a9e33e30d0271d0c910fc87e74`  
		Last Modified: Wed, 21 Oct 2026 23:19:52 GMT  
		Size: 187.4 KB (187420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cdb0a225026418930ccd8ed2607e18d6beb29cbd9b1c6bffadf4ec4a11d30c6`  
		Last Modified: Wed, 21 Oct 2026 23:19:51 GMT  
		Size: 9.4 KB (9420 bytes)  
		MIME: application/vnd.in-toto+json
