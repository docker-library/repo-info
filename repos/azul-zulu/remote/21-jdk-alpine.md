## `azul-zulu:21-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:b87a340f74e987921022c5ea0f5766fc9da337fdd62b27e57c3f30ce22a9a75f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4467b9f042c96bb7ffb5b3edf1f7d239eb970ee99b6822fb440fd4b8c7f11b3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164480038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7786beb320e0d9aef548abfa44c874de2fa90a3e28f86dcd1b546cef3302fead`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:08:48 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:08:48 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:08:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk=21.0.13.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:08:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 03 Nov 2026 00:08:48 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:08:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7c3b159335cedc19a7bdda2ed690e7dcce28ad4941bae3dbf2fd5eab3540a0`  
		Last Modified: Tue, 03 Nov 2026 00:09:03 GMT  
		Size: 160.6 MB (160627811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c5aeef8f298c07c6ef21888b89e3148a932d9ce4dd20023e4bf7fd2efc9f71a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2171529c91838dd087d94a824d59a06fd05bfa6f046632c4a1fc6d964cabad79`

```dockerfile
```

-	Layers:
	-	`sha256:51b3c76372b7d7dbdf5d5acdcc903235d43e503f58cd4ba76d369bb513477ba6`  
		Last Modified: Tue, 03 Nov 2026 00:09:00 GMT  
		Size: 7.8 KB (7838 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3c4a53dd66c7740d2e0586614e580650b8537854cc3e370d7b5f7e329ab3ac72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163064986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1f88f35dd5b2f204b5a309483e7b1970b22e00455e315db5a823df45322198`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:09:00 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:00 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk=21.0.13.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:09:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 03 Nov 2026 00:09:00 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:09:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c3eaed634622e8111c374556041f080aaeac35b8ae50602241ed0c592f33a54`  
		Last Modified: Tue, 03 Nov 2026 00:09:17 GMT  
		Size: 158.9 MB (158875492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:153b85de5c505b1921b18cdd6eed6f7944cb2c2d84f05a3a498719de479b0110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae954ff67bd4fb9096fd31f0414602b9b64d3703e4838ce2fcc09e2b62889d8b`

```dockerfile
```

-	Layers:
	-	`sha256:35a0edb3d72ac0dae6c238dfeed34193f1308d728fc57e0f3264d50a762e9108`  
		Last Modified: Tue, 03 Nov 2026 00:09:14 GMT  
		Size: 7.9 KB (7942 bytes)  
		MIME: application/vnd.in-toto+json
