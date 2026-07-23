## `azul-zulu:11-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:1f549aaed598f0d5430324182e465e2b094ae773dc014006ea76258f75037475
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:35f70a2cedb5e70d8dfd132afd37c9322f91dc2369d62ce83f5034c27406f642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.8 MB (143788334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803409a4686adcdaf006ccd786ef0b57fd5992c3d697f501c0f8ee70a13c4320`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:28:23 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:23 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.32-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:28:23 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:28:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9015759f0e1c4a8aef2967f53ab5626e9032cdd8c05bb0fe5a89beeefe4bda3`  
		Last Modified: Thu, 23 Jul 2026 22:28:37 GMT  
		Size: 139.9 MB (139943913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:be00ec5313dcb69e649efae837d52843bcabd0d4b03bdedd0f1286c016ec27be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c3d1e369cedc5db341afe662e0cac7fde9d5821f358c7cc4ce2705db22a918`

```dockerfile
```

-	Layers:
	-	`sha256:9dd3ec65ad6d10f87357f191f203666a9f4212304fe249bdd279505a54b35fcd`  
		Last Modified: Thu, 23 Jul 2026 22:28:34 GMT  
		Size: 7.6 KB (7581 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2dd68f732935007972df42655fa0509a3c8cae59ab3af78dc3904109c7f7db46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142423547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c62f0e7a7e7daa280f062f0cf92475ab8d969019307d9958117fc5dff91f69e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:29:12 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:12 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.32-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:29:12 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:29:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ee10c93f4cfacde405186a28c966e98764bf8aa9a61ae613ed885f5c5bf420`  
		Last Modified: Thu, 23 Jul 2026 22:29:26 GMT  
		Size: 138.2 MB (138241687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cd64a516f132c6e85d16cc85e6625dc18574376a4f23afd4b2dc20e3a738bd17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f610a3f5a28df0ee88c607f124bd06ccb5bf6739c8372bc6ced83291a838218`

```dockerfile
```

-	Layers:
	-	`sha256:726521f7f2bd5988c0200b437635fa0ef50541f5e9c762453ce76f453e507347`  
		Last Modified: Thu, 23 Jul 2026 22:29:23 GMT  
		Size: 7.7 KB (7673 bytes)  
		MIME: application/vnd.in-toto+json
