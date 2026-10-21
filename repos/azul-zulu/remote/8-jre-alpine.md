## `azul-zulu:8-jre-alpine`

```console
$ docker pull azul-zulu@sha256:09a8368dc83e49340eee7da260d06b870ac50ca238a6f55b130cfd38ed685e18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:f94c115f36e94f8c0c120920580135086d6a86eb81ba3933121ec926351df734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47966546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c7c4fab2989a41b550cd974c6d637de767f01d25299dc99dfd05aa21669538`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:16 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:17:16 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre=8.0.504-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:17:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 21 Oct 2026 21:17:16 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff3cba50f6a26346e90bb30d51906763761360fc7e3548f33a1b87399175f59`  
		Last Modified: Wed, 21 Oct 2026 21:17:24 GMT  
		Size: 44.1 MB (44114319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cb6ef32af5fb9b8136d03c34e61e1355f1e18502e5dbde77d1f2419eebd63818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34b8886d8b911da5a3b82950b32b89b715623e4cc0b6b9843f1b861712ce5c3c`

```dockerfile
```

-	Layers:
	-	`sha256:5d4a013ac6c703df42c3e17e839020a23ac8d199a15ced7256e88e789b24ac93`  
		Last Modified: Wed, 21 Oct 2026 21:17:23 GMT  
		Size: 7.5 KB (7474 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:bc5a3ed206b39d224a4fd2b5097f1f9d72cc983e123fb2bf6592b335e71ebf84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48052875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d60d50682fd955174f7246b525cbbf07934cdc111b890e22d355d897bcb80861`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:49 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:17:49 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre=8.0.504-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:17:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 21 Oct 2026 21:17:49 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9470c3c471fa537b63cd5bc3d7416912e89842745fd027c651b820d18442129`  
		Last Modified: Wed, 21 Oct 2026 21:17:57 GMT  
		Size: 43.9 MB (43863381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e2670c4b37ebbe7b2d4a69797e7463e6c443700fdb4804da1aa24ac89baa97bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e9a9c26adbedc3ee94342f63542da259338470a5fc13d10163069d9f14bf4a`

```dockerfile
```

-	Layers:
	-	`sha256:1d60abd6b2568d7eccb00fba9498b1e9918fd82916bf7106151026bfdb2584a9`  
		Last Modified: Wed, 21 Oct 2026 21:17:56 GMT  
		Size: 7.6 KB (7564 bytes)  
		MIME: application/vnd.in-toto+json
