## `amazoncorretto:8u512-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:b388fa43bd94470784c77f45b5fed57a3568b2f7378105b9e457a1a80a96722f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6c9c4b47d7babb63b3ab9a17a49026084ebaf0a193bb758b4386df328af675c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104718104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae3801f70452ffaba4ec999cc4f4f9ce81742fa1a9c5814ea3aa6d64561184b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:22 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:22 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:22 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:803802772f8cdebf970a8549a5ec78d7a5078763c1862201da5ed0d089b54df9`  
		Last Modified: Tue, 27 Oct 2026 16:39:36 GMT  
		Size: 100.9 MB (100865877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0a1dbda80c84b4e2d9088332f3dbd126fbb198d7538b9442c3bca31dc261fbf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.7 KB (255749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051aa1f0b7cab0f3a3deff74eedc31117294d799bd730ee845d0dcce7e895f6f`

```dockerfile
```

-	Layers:
	-	`sha256:a846d065f0bf021c25d3ecd35c1278f4341360f7de607724216d98d3000c606d`  
		Last Modified: Tue, 27 Oct 2026 16:39:34 GMT  
		Size: 246.4 KB (246395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4916f15c8bf1170f9f8df9c081841241fe2dc64a220397150b528bf0c5d26152`  
		Last Modified: Tue, 27 Oct 2026 16:39:34 GMT  
		Size: 9.4 KB (9354 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7f9f15dfef03347509ecbefff5406c846649f349dfa100363f2a853ee59ee5b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104884044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29813303260c1e0b208e663214a7e9a73fdc819acdb0709eabb2891f4a55dc77`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:59 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:59 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:59 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a1a9981af65a0f460fca6180c4ff82aaa0e895030a5af5e0ac93b1db230e40`  
		Last Modified: Tue, 27 Oct 2026 16:40:13 GMT  
		Size: 100.7 MB (100694550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4ce265474d6608556742380b6afa0a862fc8a0d0a1794c9ad61e4e8377c4d4e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 KB (255336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:139334b5562d2ded1aca9376ad7575d385023948297dbebb47a805f2ce3c1d64`

```dockerfile
```

-	Layers:
	-	`sha256:bf3ce5f2c229c2a45c17a3a3561d32abb42b1de915a38d7ef40f473cb78bc90e`  
		Last Modified: Tue, 27 Oct 2026 16:40:10 GMT  
		Size: 245.9 KB (245877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4d75890320e1c3d433061c3662b653499bda27eec1e21db18082ec408aa568c`  
		Last Modified: Tue, 27 Oct 2026 16:40:10 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
