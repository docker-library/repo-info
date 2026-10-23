## `azul-zulu:8-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:46b90fc14d87dccbbcd025ddf1b25607dd15453edf959e8be4c85300d7a8bd25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a9aa058431ca424ff03da9c9be6f5d31090e91174cd7559db3ce6b5424db5f9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59788016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814c5fd9271c53e00f7d46858704b08affa36ca78e2a347da3a10e75ffaf9904`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:00:00 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:00 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk=8.0.512-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:00:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 23 Oct 2026 20:00:00 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf18bbdb033af662b45111e424747a5b498fc97dbffdd0371fdacc913f42e1c`  
		Last Modified: Fri, 23 Oct 2026 20:00:12 GMT  
		Size: 55.9 MB (55935789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1d221c313573fee6162ea7c42b80c500ac0d540e3146be49a4676b5d622570b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f869b80ec7bc72fc516298600ec1e45cd70bac841dfc284ed7421a49de1a57`

```dockerfile
```

-	Layers:
	-	`sha256:48fd7ddcca55132541ac9acff018e1671c45d75b1c60275a2f5ded38767ebe6f`  
		Last Modified: Fri, 23 Oct 2026 20:00:10 GMT  
		Size: 7.8 KB (7790 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7711081f0f5c957cb4cb55fa5e94fc66566b297d3cc92ccb0f1f11efb82c4230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59884965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e9d39f64a419e75b8a8d642041879214b8fe698af3bcd537fb9af86aa51bf93`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 19:58:21 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 19:58:21 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 19:58:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk=8.0.512-r3;      java -version # buildkit
# Fri, 23 Oct 2026 19:58:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 23 Oct 2026 19:58:21 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a187ac9fe79cc5dfc177ae212632d60e0629069e44eb15ea83318ef8fc8c2ce8`  
		Last Modified: Fri, 23 Oct 2026 19:58:31 GMT  
		Size: 55.7 MB (55695471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:19caf471e23150100193575a2ddd8f1f0cb6ec05c180ee060467d2001dfb86f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1013b38094f31804faae8d409a9ffc371d36ef9464a8df64092a5c71fbc94e46`

```dockerfile
```

-	Layers:
	-	`sha256:da079d23b0de396716c443977f122b8cc99df455a945307d194e3bdcd8f83d9c`  
		Last Modified: Fri, 23 Oct 2026 19:58:29 GMT  
		Size: 7.9 KB (7894 bytes)  
		MIME: application/vnd.in-toto+json
