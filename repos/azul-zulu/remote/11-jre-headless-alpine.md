## `azul-zulu:11-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:1feaa4d96917ad6f36b291dca208f4c32995b1e97fee02434b4b23aa07d834f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:15057de86c75b152725ed49896ecb9c2936bf47294dd97a10e3ea2f39558de55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62624502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db3d7a026707a5c7d7b298b50eae80954a9308ae480ab2ff8f895e9e27b021be`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:28:35 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:35 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre-headless=11.0.32-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:28:35 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5cbce5b07d1bbeb1ca1c8603452bb73ce21509b6188d4d7d7b39351a978b6c`  
		Last Modified: Thu, 23 Jul 2026 22:28:45 GMT  
		Size: 58.8 MB (58780081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d29dac8aefeb6987e37a5053116145528bc86c39857fa50b4a8835932868faf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be4d435c3839dd5a0427edf868d71729dd22ec3a123aa40a4699f080f984284c`

```dockerfile
```

-	Layers:
	-	`sha256:894b563a0a3e700bc1ec10c1a22c0e196859d6a777f536eb9d4fcfe8d32b3ac5`  
		Last Modified: Thu, 23 Jul 2026 22:28:43 GMT  
		Size: 7.6 KB (7576 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ab3ec5c77466f8ae34717918565dd18de68079bddb3ef260ad75b8670f9be2a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62122488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc46f1ad57b5c5ada8e9f8242501d3765b7a7d8c0d06ec9d9f8765e5c36a5b2b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:29:30 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:30 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:30 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jre-headless=11.0.32-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:29:30 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678e8d0e04b73932fa1e2c5bd9e5e70acdae0815c68ea124fedc0c5b6317ec7a`  
		Last Modified: Thu, 23 Jul 2026 22:29:40 GMT  
		Size: 57.9 MB (57940628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:47517aa7c4937d331fdca2311b00d36f5b80e5d46cc6800974869d8775f61410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d962b75db0c97bcb02b8022038b7334b6b4fd63e805ff192acebe911f63b56`

```dockerfile
```

-	Layers:
	-	`sha256:bbb2e9864d0fc065ac0d4f4da266740c7c897d641dcf0b1c49761ebaec8db35b`  
		Last Modified: Thu, 23 Jul 2026 22:29:39 GMT  
		Size: 7.7 KB (7668 bytes)  
		MIME: application/vnd.in-toto+json
