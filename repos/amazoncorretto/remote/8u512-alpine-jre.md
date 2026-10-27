## `amazoncorretto:8u512-alpine-jre`

```console
$ docker pull amazoncorretto@sha256:0f5628c1c3d3361fc1a458cc7827ad507ea3bb1ac293395cc93d79a2b07403bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-alpine-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c81e1dc265f045890e44bc1986110f596e296cfe2b5952010ed41aa0f44aa79e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45689305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b60c1bf21f760f6c0ad8352042ed3b9044fc13554f7b2ad9c96cacc922a1fde`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:33 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:33 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:33 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15e04eb1178f35ad861e7d1930d78e6cf66dc869e27ddbbf2f20dfb89f9c025`  
		Last Modified: Tue, 27 Oct 2026 16:39:43 GMT  
		Size: 41.8 MB (41836196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:69e467e39a209fbf641d98f529757bebe95af9e34727dddfef37782e2afa7439
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ca1bf0f76399b503a750b1ff3a3f837a239670c92ea0269cdc9005bf95f43e9`

```dockerfile
```

-	Layers:
	-	`sha256:a73a67dc31f94583d5e6a6126c13515a3b2c62e253b2f1174140de9bf87642d9`  
		Last Modified: Tue, 27 Oct 2026 16:39:42 GMT  
		Size: 187.9 KB (187938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6870ea66b9e6fe318404fb5f71b28669de745197b6d9c805727544b6d7df5f2`  
		Last Modified: Tue, 27 Oct 2026 16:39:42 GMT  
		Size: 9.3 KB (9316 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-alpine-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3024825646067173398e692d7a7e23f5aeb1c1d4ab85aa5727886242b0e022e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45781169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcda5e3ab755c410b5519e082e7d1225821b548158f0c4b7043f3caebf7f20e9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:20 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:40:20 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:20 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8b6b0c195dda5d28869e566eb2e920fadca1f7826085df8bee9f465180fe0c`  
		Last Modified: Tue, 27 Oct 2026 16:40:30 GMT  
		Size: 41.6 MB (41590681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5b2cfe883267049c51f40b0aef104160e8a2190a29206e2b090ebf97bef7c0ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 KB (196840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f60aeafe6d9b6df3fb67ffb132e3430cb3bcaeb0baac79447bf9b05aa9bc8ba`

```dockerfile
```

-	Layers:
	-	`sha256:06820ca2db014bdb642c838629832f19f85af2b469116ef7bad5bb9252690b6c`  
		Last Modified: Tue, 27 Oct 2026 16:40:29 GMT  
		Size: 187.4 KB (187420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:776a5af594daed144661f0cdf2bf7d0fb1df51b78594db54d7709923c20d8e04`  
		Last Modified: Tue, 27 Oct 2026 16:40:29 GMT  
		Size: 9.4 KB (9420 bytes)  
		MIME: application/vnd.in-toto+json
