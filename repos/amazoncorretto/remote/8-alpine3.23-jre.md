## `amazoncorretto:8-alpine3.23-jre`

```console
$ docker pull amazoncorretto@sha256:e9daf206ed66645393da2fc5aa6ac1c5737caf755313938f974c751b1a44ced3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.23-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:cd85b594f6cd94a982d0690c827a28acbf413ae6633eb022600cde0f4bf22276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45660554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3511bffc25376a6a335e38b67ebe3c32610ce72f1eab040894f98e7a53b3a5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:10:50 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:10:50 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:10:50 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdaabb0701acad8d689fced681f7f450386171934142f91075d93059881127cf`  
		Last Modified: Thu, 23 Jul 2026 23:11:00 GMT  
		Size: 41.8 MB (41816133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:42856b18e6b0245aea19e21632ce7d51f8f14543ad189fbc540f10a75bfa80cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 KB (195863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae7a38f30d43469f18656c07ed42366bcd7a6814e7f69cda1dc70c4d2353cea6`

```dockerfile
```

-	Layers:
	-	`sha256:40552bc061c49bf3f020fa194d6540aa8c3f9b3be95602cb409a6de9e3819ec1`  
		Last Modified: Thu, 23 Jul 2026 23:10:58 GMT  
		Size: 187.2 KB (187211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:585ebe0315a2497f54e1b174d13cc7457e023522a896a06eb08ee45f33f757ac`  
		Last Modified: Thu, 23 Jul 2026 23:10:58 GMT  
		Size: 8.7 KB (8652 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.23-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:123273fa8a7b4cd309b14203a1ce61c1d04c20c902cca1d0bd16ba0e52b3f942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45749227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb1737a93f228118b24a1ad0b90ef655fac42392aa53a9a6a3626aa580129f9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:33 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:12:33 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:33 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ba3d483c75a8420d67761c40e49806ef4bfba9cf1695e3c19f031754824de1`  
		Last Modified: Thu, 23 Jul 2026 23:12:43 GMT  
		Size: 41.6 MB (41567367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:926f96bf156b372444f5c3eb05b08133f34e4f6f1a3b6cdc5c9fcf34716ef414
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.4 KB (195405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d3b2cb9355462590b0fad67a10b78469d2f552073279e11fd5213e5f21ff3e`

```dockerfile
```

-	Layers:
	-	`sha256:7b1cde30174f14c772c35c51bfa6878569be5d3ffd628d53bb827d1b69a19cf9`  
		Last Modified: Thu, 23 Jul 2026 23:12:42 GMT  
		Size: 186.7 KB (186669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:908dcf9050b0f8c7ac2a93eca31bd25fc335b6567278db32a66cf70155d71359`  
		Last Modified: Thu, 23 Jul 2026 23:12:42 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
