## `azul-zulu:21-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:fbc1ef8cabcff03bea23ac9dc54db715249806b7bb95342c9126d4f48a2e479a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:eca198bf34a1593cfbdec8a273236e85aba4c7707600d34b54ee3278b2f10aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72226740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8845145ef616fbd9bbbd532fdfee7a01c1bed4c3aa8f703b8d2326c1ea0fcafe`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:36:13 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:13 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre-headless=21.0.12.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:36:13 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb913dfe5bc7932b706d9b71cddedcfe7a31909a4fe80e74b91e78f07cda84f`  
		Last Modified: Wed, 19 Aug 2026 17:36:25 GMT  
		Size: 68.4 MB (68382319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bdcdac2c73e97f742fdf3d0cae720aa3f9de2f757783e195784dfa4b37e2e389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1979e620f9abc45120a961663414529093f670aa7f6a635872c41685b0a5b316`

```dockerfile
```

-	Layers:
	-	`sha256:5c2579a2283d09ef8f36b5c6aa83736cc78d65c03d0050b996bfc494b76fc9e4`  
		Last Modified: Wed, 19 Aug 2026 17:36:23 GMT  
		Size: 7.6 KB (7586 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e62220ca3f0b69d6834a60788f58a246089f2791c452fd95c5d3945701f482a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71727408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5308c84e01eb0a3fd4ca8e369c7060e34e5008a73068070d59b584aac015b5d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:36:18 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:18 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jre-headless=21.0.12.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:36:18 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c6c0b43db10e01afaad5710e1df997f944c7870fe2b34190cd9ec835cb2ce7`  
		Last Modified: Wed, 19 Aug 2026 17:36:30 GMT  
		Size: 67.5 MB (67545548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0b9bc1bb875b318bc16037a7caf897b38673d7337ee7161dd82ba236d6e96344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a8e445b7c3a4d5b0248c53245b7fb4dd56881d0f35c4ddb9000aecf148e2747`

```dockerfile
```

-	Layers:
	-	`sha256:b703628ee6e3aa2bf4b0a4ccff185edadfee067bdae133ed71ec52f64ffe681b`  
		Last Modified: Wed, 19 Aug 2026 17:36:28 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.in-toto+json
