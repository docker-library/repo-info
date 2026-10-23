## `azul-zulu:8-headless-alpine`

```console
$ docker pull azul-zulu@sha256:ba618f35df1dffc141596fded53a09c2ea6a7f5c97d10d41a83abc3efa5c644f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4995586521db5db282feb8d1e8c7e72b6e43e89b9dfc5b57724796defde2030c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57003677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9b289bbdfce401253f28c4efc2f84a62cc943f7d4c94a8e972f11eade3577fc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 19:59:58 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 19:59:58 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 19:59:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk-headless=8.0.512-r3;      java -version # buildkit
# Fri, 23 Oct 2026 19:59:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 23 Oct 2026 19:59:58 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f5a719a01e6baf9d528e55970b4a16397278f7c06281188fccfa098a100472`  
		Last Modified: Fri, 23 Oct 2026 20:00:11 GMT  
		Size: 53.2 MB (53151450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:78bd2aabad53f9c74b5d78ed4f952a956e1d9f38e6953982d4f8d1f328dd9c75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6071c906be376324620f2c9718b5f2a7d5a5beb4401132b228feb6397c8d3c4`

```dockerfile
```

-	Layers:
	-	`sha256:a9a9fecdc69ed20796219e036a9151d52f0c4eadbaca05190d5bc0e8c4ab6d82`  
		Last Modified: Fri, 23 Oct 2026 20:00:09 GMT  
		Size: 7.6 KB (7551 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5064538b9221a572689a035062de2b42550f633070b3113d3fb9efaa5d921c24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57060278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d81dd451810f41b16d843dc8c312cb9cb0ba61b769c68911cc08c7ad75917b15`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 19:58:27 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 19:58:27 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 19:58:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk-headless=8.0.512-r3;      java -version # buildkit
# Fri, 23 Oct 2026 19:58:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 23 Oct 2026 19:58:27 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c40c39b712a37b146d140bcb2d96702eeea26a9d0b33128e59ecc572cd7b69`  
		Last Modified: Fri, 23 Oct 2026 19:58:36 GMT  
		Size: 52.9 MB (52870784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c2a2e7f0f4ded8d24ea0d935ece319b0a71649e17fb08138e56c8161789ce87a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e43125db4454ee0b4d875036f3045dd2d514278e677f841b0081c776bfe94be`

```dockerfile
```

-	Layers:
	-	`sha256:73dd5dc1c04f5599b47d23647ca74686cd1e9653471405f92edf3ac0ec685744`  
		Last Modified: Fri, 23 Oct 2026 19:58:35 GMT  
		Size: 7.6 KB (7643 bytes)  
		MIME: application/vnd.in-toto+json
