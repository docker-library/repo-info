## `amazoncorretto:25-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:3d14f95589a7c8c7dd215b5b3dd4e5da99c71d63b2861911ae2559abcdb87938
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e2c088d5539c901abb0f477f36432239d5742e43a4d2862a3d4bf894f7e919e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185114801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a13bde838482f2e058db858ca04a15a44c9e0e6aa95b2338816842f2576c635`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:15:53 GMT
ARG version=25.0.4.10.1
# Wed, 21 Oct 2026 21:15:53 GMT
# ARGS: version=25.0.4.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:15:53 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:15:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:15:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4dda2ccfa86551a516ce54b9c8217aacc768668cc9d64c4718c0cb77fc5579e`  
		Last Modified: Wed, 21 Oct 2026 21:16:14 GMT  
		Size: 181.5 MB (181489406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e4f21c908d1beab1cdebf5cfe484da705cdc0f2b7ae818446c5bc684457a41c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.6 KB (605584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bab6922d77cca1f94bc89362ff93d8a9c53f955490db5e1475c6f49e29cc6f5`

```dockerfile
```

-	Layers:
	-	`sha256:e97ca603259f17bc0d72fcb0307342d50fe8aa608769711a2b4e634d1f5505cd`  
		Last Modified: Wed, 21 Oct 2026 21:16:10 GMT  
		Size: 596.2 KB (596212 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09c95d13cac618a4b82867a6c06340530d11a5e005e96454a3403b4ab8dd65a5`  
		Last Modified: Wed, 21 Oct 2026 21:16:10 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a81cc92d3bda018d89c4123c885381ac9e93ce86d3ec1807a78f994960b2c1a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.1 MB (183065126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2bffa3359c0fe0776312fa98c9e4f8f33ae78ae6bd6f9d2ffd915f6d951520`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:17 GMT
ARG version=25.0.4.10.1
# Wed, 21 Oct 2026 21:16:17 GMT
# ARGS: version=25.0.4.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:16:17 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:16:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:16:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9377709669dbb15029a16cbe5204d9ccb3327562b88ca114f39c1ad7794552eb`  
		Last Modified: Wed, 21 Oct 2026 21:16:38 GMT  
		Size: 179.1 MB (179090755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:564f6033af900c933bbed4f89cff14ef31beb97fb0d5aa3fb8216d2bef922c0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.1 KB (605104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19c8d074c7a03615659cb6d54485a53c6d3ffcf52de3d9150fdc3ac1b60e20c`

```dockerfile
```

-	Layers:
	-	`sha256:9ed55577aa47d510cadd704af316a5ab0c1cf1f269c6fb56b9d4220b811f423c`  
		Last Modified: Wed, 21 Oct 2026 21:16:35 GMT  
		Size: 595.6 KB (595628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe6101b4f0f365514872939dde5afa5271924061c94a0d440edbf13866283606`  
		Last Modified: Wed, 21 Oct 2026 21:16:35 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
