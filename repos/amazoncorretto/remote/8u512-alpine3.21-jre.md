## `amazoncorretto:8u512-alpine3.21-jre`

```console
$ docker pull amazoncorretto@sha256:89c13554ccc00b756b717eb1be5a8e418acf3f16b0b697c609c26e628f093dcc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-alpine3.21-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:fe46f5dc3585a14cb9ed927fe67af8881ac676c6f6bd6823543e4e396bc64911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45463896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d85c69eacf4b127b30e2f5016e5e6639bd040827d84eeab66b97adb21859248`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:04 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:12:04 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:04 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8e4e5f4ad6ed8d620fae5e5df46591312f791870c401ddee7dddabf2d7971a`  
		Last Modified: Thu, 05 Nov 2026 19:12:13 GMT  
		Size: 41.8 MB (41838494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:075da68db06cd707310a2585f1233cb12f3f0bab67ac9b21c82b6c9077a82e1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 KB (197387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74aca19e70e4dcf27530290185b0b6689a6aa67e535d5b64392f34def796bcc6`

```dockerfile
```

-	Layers:
	-	`sha256:83c63b121c947617ab4efc343b649a0ae2c02e7cb3e30f2790cd573839ec20eb`  
		Last Modified: Thu, 05 Nov 2026 19:12:12 GMT  
		Size: 188.7 KB (188731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2714a9e762898c881f4765f00c130261601f118da9887b9cd742050d11a6ea9c`  
		Last Modified: Thu, 05 Nov 2026 19:12:12 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-alpine3.21-jre` - linux; arm64 variant v8

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

### `amazoncorretto:8u512-alpine3.21-jre` - unknown; unknown

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
