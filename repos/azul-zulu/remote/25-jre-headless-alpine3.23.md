## `azul-zulu:25-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:b01f9de917ea9cb7031681bc10e0990f67fb93a4faa7fb5fd6fb55d066a8d77f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:cefb70f54a6dcfb47c797a921ad5722126e097549d29c0ab9ac57c04a4ef38c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86883064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b723100eaa015a936df73d9043ee8f7181b91a05e5b13e836bdb8272babfa224`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:02:41 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:02:41 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:02:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre-headless=25.0.5-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:02:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:02:41 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e76965af78ecbb8ac1658a34f4548fcff15ce2e4829dcfec9803cad3de44ba`  
		Last Modified: Fri, 23 Oct 2026 20:02:53 GMT  
		Size: 83.0 MB (83030837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a37ae0d7fe68197cb1d5da1762b8b7e74764c945647fed3d02c2eeb274070dcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b445c4869e458fe8b34f151dbeb44e903047578de2b1f69c79019383100c61e9`

```dockerfile
```

-	Layers:
	-	`sha256:ee4e6f6b8ddabd3d0e5990909c841b9f2691630f613cd113cc05df6532b6e8f6`  
		Last Modified: Fri, 23 Oct 2026 20:02:51 GMT  
		Size: 7.6 KB (7572 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3cc0f660e441ffe3959deb8e2acdce3d770ab4ab37fb84b650dac73d0eb50b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.0 MB (86012317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d9d67d15b6c09eae6dee26c6fec1dfbb24913585c03de04812b0126c05d527`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:04:40 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:04:40 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:04:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre-headless=25.0.5-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:04:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:04:40 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce23da96709928ee8850cc54a5e1dd0e310014233eca3e375cfca25615f70ff`  
		Last Modified: Fri, 23 Oct 2026 20:04:54 GMT  
		Size: 81.8 MB (81822823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5a41bb653511b5505882514f9a9747cf1eae239b6a95b1f9c76de170246013ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39774d5b5638847ab16bf11fb283d7ec81af690af06fb5cbdfdf5af77b680648`

```dockerfile
```

-	Layers:
	-	`sha256:b9ab64d274d61b94fe02c53625272114fb0f8456b6bca5dab1bcc763602b826a`  
		Last Modified: Fri, 23 Oct 2026 20:04:51 GMT  
		Size: 7.7 KB (7663 bytes)  
		MIME: application/vnd.in-toto+json
