## `amazoncorretto:25-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:8fc13c635b16d669ecd2dab38565557d8b03ef1f0a781840411994fa1918fa09
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b51ddac45e10dc839683977752ca05c845670617a7263aee967a97f9b055dee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185286887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6217d92029ed42b7487b1e896c00c93fafca51209bf9cbd836aa4833eb894a6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:21:22 GMT
ARG version=25.0.4.8.1
# Thu, 20 Aug 2026 17:21:22 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:21:22 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:21:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02fd148d0c1ba50ef4ae5a890796a76d93ea40df53a4168ecf553e84f6f0f619`  
		Last Modified: Thu, 20 Aug 2026 17:21:43 GMT  
		Size: 181.5 MB (181499292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ddd0d3fe586ab361eb9631c5666af01a3dd69afb5b218219ccf1bde866421141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.2 KB (602159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b147df3477012b26a892f2a1537f663edcd1a583fa21570e9d6f871d5ded249d`

```dockerfile
```

-	Layers:
	-	`sha256:d4030469368b9a35a7ebe9d844d407050a77622821de5b884df76aba4bf8d2f4`  
		Last Modified: Thu, 20 Aug 2026 17:21:39 GMT  
		Size: 592.8 KB (592788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba223bc4cdb07c8457f54813a9789e4052bbb806647ea385ad379c5d8056f98b`  
		Last Modified: Thu, 20 Aug 2026 17:21:39 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f7ec4f07a18f08b98c1e23dcfc8effac4456ae3ba6628c422c05ea6c0405ddd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.2 MB (183194472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0fb8282b059472965a8caf048d374f073624e5f975b4a862c5543b793ce8745`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:33 GMT
ARG version=25.0.4.8.1
# Thu, 17 Sep 2026 21:37:33 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f1421d522bde16f929b6ebc209093a0d187e265d8816dc5bbaf46ca76b788b`  
		Last Modified: Thu, 17 Sep 2026 21:37:55 GMT  
		Size: 179.1 MB (179071388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3385dc82bbd1b6a7c0986e113a20f7184f77f6f00a9c1ea146432ae64e2b5a7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **601.7 KB (601678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30ccf368ca515a248c52300e4b3b63eb5545ae20db5692d9738aa4b45c86fd9`

```dockerfile
```

-	Layers:
	-	`sha256:24b553420900c63c4405a7ca3f5cec973b9f3f757c3ef5fc072f6c28b50c5da3`  
		Last Modified: Thu, 17 Sep 2026 21:37:51 GMT  
		Size: 592.2 KB (592204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62e494f6823b379a2255d61b7e7711669db0415a479be7607c816939575dd29d`  
		Last Modified: Thu, 17 Sep 2026 21:37:51 GMT  
		Size: 9.5 KB (9474 bytes)  
		MIME: application/vnd.in-toto+json
