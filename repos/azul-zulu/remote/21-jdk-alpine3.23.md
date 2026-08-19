## `azul-zulu:21-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:f27ac42b8216e8100ac59ef4bf329ad2bd64e0f8f298609b04062cb2b9e56245
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4b025ec51e86caaefbf92e6cbff1a5fc5cba2ce1befa5be2c29c7c8e7ac074b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164119498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f365fdbe86e1e0cbed956e98dd4c3ba1820c973e1c8a44a8d73d18d1b994682`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:35:47 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:47 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk=21.0.12.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:35:47 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:35:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d68af8733d5bfcbca62224935c670eb5a47650525599d8a65055ebdb85f5e8e`  
		Last Modified: Wed, 19 Aug 2026 17:36:02 GMT  
		Size: 160.3 MB (160275077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:deb493e6b1ba8ccfa8e3e90878067d16e50f38e4fbc3ee69b4981887a12e0c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a3c9987dd1ec166111cae86a5e196733b09960bce908ce4755aefc74b1e68ea`

```dockerfile
```

-	Layers:
	-	`sha256:25366454eed89eb2a7bf793365133a2299c53edcb41727a6830bb3ea3cfb3111`  
		Last Modified: Wed, 19 Aug 2026 17:35:59 GMT  
		Size: 7.8 KB (7832 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:90fb939aef97ecdf417ed5bab235998f77173e9a16334c2f80c26cf644302abe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162707801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc02747aee51cdc17c53d8073251afdfc2267fbdbfb474fae0cd326c4478c8d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:35:57 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:57 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk=21.0.12.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:35:57 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:35:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30af29d11919a07347e45cf91815bca9b60c4965894ce1ed69025bef05691c5a`  
		Last Modified: Wed, 19 Aug 2026 17:36:14 GMT  
		Size: 158.5 MB (158525941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f024e4ed86bc639ee00be10eb273c9bccd79b9f7afd9c465a307be0e8fe91d50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a715922f3528db2803bd5de083b68816ae6bad8482bb19ce814eefa58bda53c4`

```dockerfile
```

-	Layers:
	-	`sha256:c2e15b2069f03fe73518cef10210698de8c3937c3e16d321a87eebc30178ec4f`  
		Last Modified: Wed, 19 Aug 2026 17:36:10 GMT  
		Size: 7.9 KB (7936 bytes)  
		MIME: application/vnd.in-toto+json
