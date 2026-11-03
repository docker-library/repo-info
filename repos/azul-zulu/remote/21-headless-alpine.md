## `azul-zulu:21-headless-alpine`

```console
$ docker pull azul-zulu@sha256:54ba6a9a46b013ea8accaad1a94441b56516d1e66a09e3665276f494fd2b9b78
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e81220adf85c03d7ab10d26ab0206c578b943d1f3be67a10bf48e6dcff054163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161407210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3da9f9e93ce8b0d6e17a923f32d2b077f065c12db18707da7f1d9a46ccac6712`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:08:49 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:08:49 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:08:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk-headless=21.0.13.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:08:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 03 Nov 2026 00:08:49 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:08:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a921f86cfa1e966436aa9d574ccdfe82119920d046f32f7405d2ad3c79630a`  
		Last Modified: Tue, 03 Nov 2026 00:09:05 GMT  
		Size: 157.6 MB (157554983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7f628d80ddbd0a47f47f3ed308071341d17ca00b0fa15fbf40fcbebd1ed66cb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e0175be4e95504745ef036d12fb7cad4cd5b8fee0b288164e0f29c7ab25e9f`

```dockerfile
```

-	Layers:
	-	`sha256:37d4ffc343ab6c530a118beaecc41eb6c11a285a017c256d6e44032e1f5987ac`  
		Last Modified: Tue, 03 Nov 2026 00:09:01 GMT  
		Size: 7.6 KB (7597 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:21876535e72bcc6e2ff3f30949f3a21434cf3986ac21322db1b356971f411fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159936888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214418d5aada13a6726d6e594cdfa99ebe3fe2f876a31f70d48637d24d7f6c7c`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:09:01 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:01 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk-headless=21.0.13.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:09:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 03 Nov 2026 00:09:01 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:09:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd162d5428da2b93ae631a9055ee974882dbf9e5742e76231e01f7cbec19496`  
		Last Modified: Tue, 03 Nov 2026 00:09:18 GMT  
		Size: 155.7 MB (155747394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5fdd9e3b53195373ec16a756383233f75089c4e1797025c058552aa8339197a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a73e555a02d1879cb1f3eb278aaf98cce1bb251426fd2ea61b6a2e0dd6fb68`

```dockerfile
```

-	Layers:
	-	`sha256:fcfbe78d51d08667cce126935d4375ec218340390c9cd4be46f35cab60c9720c`  
		Last Modified: Tue, 03 Nov 2026 00:09:14 GMT  
		Size: 7.7 KB (7688 bytes)  
		MIME: application/vnd.in-toto+json
