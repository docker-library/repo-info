## `amazoncorretto:21-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:97addd0aed477281c69041b80d0990528cad6f4d0d9b8705621c74f3d3fc93af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:7e9900511748751e3da62cd2913494a4e0be2b9560267289fd14f7d691f58c22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (165975008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93820921ed903962e1249bd646cc75655d8bc52d122cf0086ce8d07f06313812`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:07 GMT
ARG version=21.0.12.9.1
# Thu, 17 Sep 2026 21:36:07 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:07 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cec330dd559dcdb0007ff62434d5ed048d3119604bb34a7db70c50bb540113b`  
		Last Modified: Thu, 17 Sep 2026 21:36:25 GMT  
		Size: 162.2 MB (162182933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:13ab8c7023d7c741d5106f7066bcd2553fb5bd823816fbe2b9fd8931b39ac922
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.1 KB (593066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3673ce3af769c84b496d4c88e44d84d21d695557afdd0eef6902a9c4ae4aa4b4`

```dockerfile
```

-	Layers:
	-	`sha256:4c3c43f55cf20024659c4c8de46bc31bc003054bcd84113bcaecbc07ac37c879`  
		Last Modified: Thu, 17 Sep 2026 21:36:22 GMT  
		Size: 583.7 KB (583692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b751240b5eac001bcaf1bc344af602f538c0af2d61747adeaa1e05aa5086798`  
		Last Modified: Thu, 17 Sep 2026 21:36:21 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:343b79a0eef90c5083984aa01fcd17d6ba4d3088e663ad5cca7b7720fd4ae9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.3 MB (164299256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e29d25b979a68df29c6e06f437d3a262bd8f64c9cc90f6d232cf9664921e818`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:04 GMT
ARG version=21.0.12.9.1
# Thu, 17 Sep 2026 21:37:04 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:04 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f7e2971dfe88ab57f74b978bbdff21991b753ee9cc3d1e6d596b8dda46eec9b`  
		Last Modified: Thu, 17 Sep 2026 21:37:23 GMT  
		Size: 160.2 MB (160176172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4de295ca13bb5f3f25a43b7e0d92a221a9862b02b9f6e8f0f6b8315a288654a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.6 KB (592588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22ea4f5b6c77ed218a67abd8036b5e600edfc425d4c2d8459d603e71b1d23c15`

```dockerfile
```

-	Layers:
	-	`sha256:acfda6c9bb5d1eca8e8fd3779b07c226fde78f8a8a43005fa730bffaf2553065`  
		Last Modified: Thu, 17 Sep 2026 21:37:19 GMT  
		Size: 583.1 KB (583111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0321782ae46f0e8a379bd4228c0852679df71dbd0ca5c500c9d216e3c22f3cd8`  
		Last Modified: Thu, 17 Sep 2026 21:37:19 GMT  
		Size: 9.5 KB (9477 bytes)  
		MIME: application/vnd.in-toto+json
