## `amazoncorretto:17-alpine3.21-full`

```console
$ docker pull amazoncorretto@sha256:a3ae5369a5737307a1aa3ddb5a6b8da274df5070924b4596c01fbde2dfe37047
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.21-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b11605b2b2d0ae112c5adcba0491bd937289bc4602311de29748c026cd8fd8e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152561330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15875a45d836da2337c05d48f666d7a1fdb64fd3ab0f7d39b52dbe3e68b98bc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:15:06 GMT
ARG version=17.0.20.12.1
# Wed, 21 Oct 2026 21:15:06 GMT
# ARGS: version=17.0.20.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:15:06 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:15:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:15:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f7dc31305aeb8910d436ae3fc9a4fe8ca80831d80c6c59e981b9a72a51f622`  
		Last Modified: Wed, 21 Oct 2026 21:15:24 GMT  
		Size: 148.9 MB (148935935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4f900204e7cf1814fb541d60ad5d9e03ee63a10855b27163d01943537621af4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.6 KB (596592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d855e387636e4d071e65c7d8cd1a86c1c7266b06b9817285939e0a06097ba23`

```dockerfile
```

-	Layers:
	-	`sha256:f5404511e7dec78c0029c8079892a38b8bbb3d5d7ffac51ef2b6920a648f6f39`  
		Last Modified: Wed, 21 Oct 2026 21:15:20 GMT  
		Size: 587.2 KB (587213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbe6b199f082e7711ed40e818baee2d2aa748dfca36acce023a5676245c6b01a`  
		Last Modified: Wed, 21 Oct 2026 21:15:20 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.21-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:18b2ba58f0bb993e26163b52dafa8bd072b078e4860112782da83cfb01ff622c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.3 MB (151332287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb0d44601fb0a8c8ac4498698872673efefbd065da9e4797be76f6145aec51b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:15:40 GMT
ARG version=17.0.20.12.1
# Wed, 21 Oct 2026 21:15:40 GMT
# ARGS: version=17.0.20.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:15:40 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:15:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:15:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba8bbaba19740f6e4c90c6b24abbee0352e34639a43c94c6a418b710b3dd782`  
		Last Modified: Wed, 21 Oct 2026 21:15:59 GMT  
		Size: 147.4 MB (147357916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:40ae9717e71724d3bc29af0cadeded971abf923aae90a879212bb44823873d63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.1 KB (596115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ffd3c8cc0387dc594bbd3c21ad3fa471a4cbc971a713e3c3892b5f40ac8572e`

```dockerfile
```

-	Layers:
	-	`sha256:6b552122f2bf43513cfdba9a3046748f2206cf7b367bca5ec14a9edad7800df3`  
		Last Modified: Wed, 21 Oct 2026 21:15:56 GMT  
		Size: 586.6 KB (586632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa9db4c2f928f444c1b599052e1743a255619af4b6ae087e7fcd7a3eb0366c4e`  
		Last Modified: Wed, 21 Oct 2026 21:15:55 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
