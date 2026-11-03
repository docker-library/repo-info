## `azul-zulu:25-jre-alpine`

```console
$ docker pull azul-zulu@sha256:595508a682c2c7d08f1ee5182b6495a0118c72ec9a496336254314d269dd324f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b6994cc187e3720dd6ab7254b8cf35cd910ad08288ebb5486f3de2ede9ba4c78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89854001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:449da2544ba0df99f928935ecdc0db502dcce6477eeb2812a97c5fc60897cc50`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:09:47 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:47 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre=25.0.5.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:09:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 03 Nov 2026 00:09:47 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35a00b41ccbb906c24ccd8f3c01b809c38d21589f7bf4550dfaf2e1a96c71b19`  
		Last Modified: Tue, 03 Nov 2026 00:10:02 GMT  
		Size: 86.0 MB (86001774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:602f53d0d644e38285aa6a5810892830ba1dbca22997b0d112b6253f41e73123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f92a3697798613839efe5726d09cd5b5de03345a95d186e22c72e5a2f1a2c4f`

```dockerfile
```

-	Layers:
	-	`sha256:2bf70158423b31609b2fa23edd7f019b2f21499f47fe80d5ecbfda66b2892743`  
		Last Modified: Tue, 03 Nov 2026 00:09:59 GMT  
		Size: 7.5 KB (7496 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6c62d08d5f18e8ab53a9d8e72ed7c75da7d4c1054545c35d04c2173da81ba2bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (89018980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15238ae86da9b26db90f942c4c7e8701fdf6d703d38986275038d453df151468`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:10:02 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:02 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre=25.0.5.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:10:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 03 Nov 2026 00:10:02 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abe85ddcb3839f4180b036a670886d4f675ab60c2b4579057773d6c2ddc5905`  
		Last Modified: Tue, 03 Nov 2026 00:10:16 GMT  
		Size: 84.8 MB (84829486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0f21fa9f65bd0a4a44c945833ebd2bd505189830c05f90b2ce5f853f41d3f6b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a2aad9ce13cd25dbf25e36552066953b77a19dd7f775e7728936bfad9387e61`

```dockerfile
```

-	Layers:
	-	`sha256:cbe0bfcd0013d9080f77971ae877223eb93ef808008fe2e85fd462751d368530`  
		Last Modified: Tue, 03 Nov 2026 00:10:14 GMT  
		Size: 7.6 KB (7588 bytes)  
		MIME: application/vnd.in-toto+json
