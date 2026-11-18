## `amazoncorretto:25-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:d693ce72ed3fae19ca83ce73453ed553d634919d536604c642fa5f6336534995
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:8860c07e8d8fdc327c35b1862d976649fa723b9d958752c7856cc41243c2737c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185319382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00d8f68ea8aa3637283b2f0801bdfbc33a8c4b1a1380b283f2259cec9364ef2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:41 GMT
ARG version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:41 GMT
# ARGS: version=25.0.5.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:41 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a975ad267afc8c1fa259f4b07f6a0a8fa0a9764694bd3df1b913df8efdd94e0c`  
		Last Modified: Tue, 17 Nov 2026 21:35:01 GMT  
		Size: 181.5 MB (181525007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:474dfa263774025d6e5e7e6367191054c8e1e17937232417d7d286c3fab1707e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.2 KB (602159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2183602ac69ec4f8477cdbc100802a28f52f2ccb1e797094b0bdb0ea1959bb7`

```dockerfile
```

-	Layers:
	-	`sha256:fbabee7e3116c1d59c9af307b01684705e482651c297acb1eceeacd807bbe026`  
		Last Modified: Tue, 17 Nov 2026 21:34:58 GMT  
		Size: 592.8 KB (592788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7511c91ccf2e96d6c29848bfc2c59eaf40084bb88b1f167d187cdb3e29bcd7d`  
		Last Modified: Tue, 17 Nov 2026 21:34:58 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b5071211c763ffe3f7c876288353c8129267aef1539284508ad21496e1e88d2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.2 MB (183216627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5efb3d50d1c4e7c5d826691d97b2cf7827130c4aa76ec96232761308fadc6f70`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:47 GMT
ARG version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:47 GMT
# ARGS: version=25.0.5.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5eca4a877e99879c22963d97df937c2759382670026ac9b702a8d8171a831f`  
		Last Modified: Tue, 17 Nov 2026 21:35:09 GMT  
		Size: 179.1 MB (179089242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b8dac9b89119c59582dbd1ae46f070a00330111275236c9046485daf34d482ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **601.7 KB (601679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb06c86e95fbbe88a677f779ea7817d3bc196959306ad0de209f5a0fe494a75`

```dockerfile
```

-	Layers:
	-	`sha256:56b2369796835a677114a84299408f849648956d76ce9adb8c9e4902ea2f942e`  
		Last Modified: Tue, 17 Nov 2026 21:35:05 GMT  
		Size: 592.2 KB (592204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a8b47bd6b717411e3f7f2e6c7bdeffe398711f5e894089bf88d2c0db9e04dfe`  
		Last Modified: Tue, 17 Nov 2026 21:35:05 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
