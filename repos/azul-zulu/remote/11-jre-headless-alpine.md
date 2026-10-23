## `azul-zulu:11-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:a4909baf22f8a9c0b2325c0dc01cee6619c42602b147058e3185b86f2e175802
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:7e4183d5b1b0fb434758d04104faa27a59026f91fa0148d097659e9c2d61186e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62671152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ceb320d2365f0d01fe3e34a2a964ed43845db9c95b72f98295c42da88a65e75`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:00:37 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:37 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre-headless=11.0.33-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:00:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:00:37 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159918224fb583e624b89e91612a8227b590575ba74103edcb1cd7bd85b33864`  
		Last Modified: Fri, 23 Oct 2026 20:00:47 GMT  
		Size: 58.8 MB (58818925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:70c5d1dd18342e42194904d016083d899f1ca85c61a2872c61a719b78ccc6926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de58ae08711d117c73004889c6fa2a825b5898bc594b86af15a97be19df90911`

```dockerfile
```

-	Layers:
	-	`sha256:f86c5b9abaa5b26236a8a0554b5c715c9bc025be06e835a1f785bc15646858dc`  
		Last Modified: Fri, 23 Oct 2026 20:00:45 GMT  
		Size: 7.6 KB (7576 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3d3a14d8bc9131fc1041770baaa242af8491b4b50a4d74de48fd857cf2926a0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62186818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70bef31af95067792a2b5eacdd07ce71bb0fa4ec3786cd6561f3f70174b6f0cc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:02:05 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:02:05 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:02:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre-headless=11.0.33-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:02:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:02:05 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a92f1d2dfa639d10768725d8ad30e2461a1de90a952bdd61de9c9cb1df9186`  
		Last Modified: Fri, 23 Oct 2026 20:02:16 GMT  
		Size: 58.0 MB (57997324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3fb2aeb4c77989dde4510128de631f56bcac4673daa397b04f97fbf353105d2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fff99478782b8e204c93fe57addb06f8f4a6c515ec55f32a6a088c89c544287`

```dockerfile
```

-	Layers:
	-	`sha256:d6ffed8f58adef51b338526d13bd597bd2ca702845c77b27ddeea69ed56499ac`  
		Last Modified: Fri, 23 Oct 2026 20:02:14 GMT  
		Size: 7.7 KB (7668 bytes)  
		MIME: application/vnd.in-toto+json
