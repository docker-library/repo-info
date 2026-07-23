## `azul-zulu:26-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:c1e875c6dc4123dbfcf9aef66cca3f164ff57e8f0c4898b9cfb8056925a32b78
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:60b07a7fa2add2a3c124d8365baa9b9f3050c9fd21b73d14079ccdafeedb5964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88760368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc3e5f2e071f7e6d3157af8caef86b56737b04155501a3640e90c0addfaf45e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:31:18 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:31:18 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:31:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre-headless=26.0.2-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:31:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 23 Jul 2026 22:31:18 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c62a61b4334c455f1b5751e7a6a1b6d750ef44a0c3847a85eeadafd812596a9`  
		Last Modified: Thu, 23 Jul 2026 22:31:32 GMT  
		Size: 84.9 MB (84915947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:13b096edf67f910d4f4c527f12685a1579579e0295f2c9c23723c415d48fc04f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:982407a80d61e291bc2d2d312269404c1a687f523cdd95aab898f4c007cb8c5b`

```dockerfile
```

-	Layers:
	-	`sha256:8ba8f9cd758a086871a9e7ed74492e41caa4f5d4baffe235f6e8d3ae37c83f42`  
		Last Modified: Thu, 23 Jul 2026 22:31:29 GMT  
		Size: 7.6 KB (7573 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:06c8c558140fca336d3dfb2c4c3110e31d5d6aa26ffe4e17722d467d86b566fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87887265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bee9de683e6e08b17f4fa34e28d836ddb7f697640e7503f77dd4075ccfc13591`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:32:26 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:32:26 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:32:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre-headless=26.0.2-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:32:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 23 Jul 2026 22:32:26 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899f81bacb710e365ef162b4e31097075b8794c00ac3ee5c591d8b51024e2e6d`  
		Last Modified: Thu, 23 Jul 2026 22:32:40 GMT  
		Size: 83.7 MB (83705405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ecf43407396eaba65ea0beae9835b28998a05c3e9f1bd9d47ea3bf9c28a8494b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ffdbaa71e00d3425d5e562fd8990264360841fe64fe849fe91a343029f54a5`

```dockerfile
```

-	Layers:
	-	`sha256:d84d9cb522ccc48450ee4f6b29f046bec9107686327926d002cafc842b199142`  
		Last Modified: Thu, 23 Jul 2026 22:32:37 GMT  
		Size: 7.7 KB (7664 bytes)  
		MIME: application/vnd.in-toto+json
