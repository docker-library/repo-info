## `azul-zulu:11-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:5217b147477e529fd2d25ea9d34f9875007d9ce7bb8d54562e287eabbfd46f96
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9cd8708e08c97d3047c71b2a2ae9e98f2f188f755433a46e7375547941b8dc3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.9 MB (143905511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a1045440ad39dcbf969ade306e68f1ae4101562b4ec9c9e6883333a8f0012b8`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:00:31 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:31 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.33-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:00:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:00:31 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:00:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f22efcea904f13878dd25132a98fadd0294d10ee8045b376184c96b05cf9179`  
		Last Modified: Fri, 23 Oct 2026 20:00:46 GMT  
		Size: 140.1 MB (140053284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:75cc0641ce4cd58206390f8b7149fdfaf155b04825fc6d8b3b5948c0c82caa34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce642abb89ca0ec63a49e472a0ed9b4cf0d5ee9f7fa776b6558d12449d69ea8e`

```dockerfile
```

-	Layers:
	-	`sha256:6af4b0bee8664db29e813c3bc714acddc157b21407a5624dc2d351d256347e3a`  
		Last Modified: Fri, 23 Oct 2026 20:00:42 GMT  
		Size: 7.6 KB (7581 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:c1d04cc4ac96eeac87d60bf48c2fafc5741fed5c801256232c1b398b4ec71df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142442526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6392a0497a327a54d83080ce368086cdaaa8c557d1d71348c3c4b30677cdef7`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:01 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:01 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.32.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 21 Oct 2026 21:18:01 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:18:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc4cc94062db21dc339d195fbf6c8b4a060ff0b9a549997e5718bc461d71540`  
		Last Modified: Wed, 21 Oct 2026 21:18:17 GMT  
		Size: 138.3 MB (138253032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c8b8c2dad199a866510c420a6b8e5a73748cbfc5e390e1ac1e26bd6904dfd13c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6e002aeecd976afc7373257f7462262fa2b449e7695894c60ffe3c5710fa77a`

```dockerfile
```

-	Layers:
	-	`sha256:250ecbcf8f9a3f1e720fa961a94d51ac71e5a401393124d50f141e6fab8d7bc5`  
		Last Modified: Wed, 21 Oct 2026 21:18:13 GMT  
		Size: 7.7 KB (7683 bytes)  
		MIME: application/vnd.in-toto+json
