## `azul-zulu:8-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:345e5053a83b59bf6a53bbf03fbdccf68c03cfb999d818127d2baf83f455ddb6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:cb9f5b64a8108dd200abcbbc0ae24b2259170cf366504cf68c3e89a7df716b9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45527718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536090beff70ba1d1554ab4422d198b8953c12b7624a8d075fd7e17a5f5945bf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:27:57 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:27:57 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:27:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.502-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:27:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 23 Jul 2026 22:27:57 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf627d60a060814c00a95e36caa6cad11786e946f01699a5b8f87bfbc407e10a`  
		Last Modified: Thu, 23 Jul 2026 22:28:05 GMT  
		Size: 41.7 MB (41683297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:36859608ee98dc37c511d754e4deec3932aceaa3f553fcf42b3c438b6c23f064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f883d89740ca3816af7a21ac3dc4c9255623ade4e2e99805409ce464685590`

```dockerfile
```

-	Layers:
	-	`sha256:54e8f30997d888d72c5e3eb410902d56c2936c7eab1142ea153c37d020a44d9b`  
		Last Modified: Thu, 23 Jul 2026 22:28:04 GMT  
		Size: 7.6 KB (7567 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:853eb098838d01a7ff5947d52327c7c5499f97d43b7d49f43e49a7b0d9c50577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45593725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb5d27e7a22719ddb7357d12855fee13c99b27af47f1368ea26cf7570ff4612`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:28:50 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:50 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jre-headless=8.0.502-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 23 Jul 2026 22:28:50 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:421f1b3ef2f81c8cb89ed899ddeafa59dda31fe0d220ca25d0f0b8479e83a798`  
		Last Modified: Thu, 23 Jul 2026 22:28:57 GMT  
		Size: 41.4 MB (41411865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d4521fe42400809f129ff8c7cf1c5499f71f6a75f3c42a0bb242dba4e962dd74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e358f35cdb41c262592617e9790ebbd17186c5b7de682d7dc67f211789b4358`

```dockerfile
```

-	Layers:
	-	`sha256:bfa03469337a5da6b073bf26f36feba7be5b7a73ba4860f57b3dee3ab941a0f1`  
		Last Modified: Thu, 23 Jul 2026 22:28:56 GMT  
		Size: 7.7 KB (7658 bytes)  
		MIME: application/vnd.in-toto+json
