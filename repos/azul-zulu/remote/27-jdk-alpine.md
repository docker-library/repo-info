## `azul-zulu:27-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:8fe01df8ea47b58538d22519a77b23686b7c426cdb5caa3e9cf161364b88afc6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:de585f63b74c84aa0ba58e900478f2124d0fff5fec3a1026ec571213974bba61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.9 MB (185882795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e1d88c1149d5f9d41634234e2c6c3b27ac78cf7fe44670c78e7cafb34ea401`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:30:20 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:30:20 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:30:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk=27-r1;      java -version # buildkit
# Wed, 16 Sep 2026 16:30:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 16 Sep 2026 16:30:20 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 16:30:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01463523bca9af52a4421ca0a04c4f02ee8993a5ec249b2c1ab5b636f202db`  
		Last Modified: Wed, 16 Sep 2026 16:30:37 GMT  
		Size: 182.0 MB (182038374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7606f4ded27e43260e3e8246067ad4f57cc0d541c38e18a8d03757accdd3cff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4743b039f3fa88600971b2d5cfd66a2278d2762367d34da9d866e768cff529`

```dockerfile
```

-	Layers:
	-	`sha256:1377796c0d2d3e58407a441b7cf5ee41f6ff0e925a483ee3ab4245692c37bb7c`  
		Last Modified: Wed, 16 Sep 2026 16:30:34 GMT  
		Size: 7.8 KB (7807 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:bd44cff62a802e9087857d9cc5cba7c51eb09d034c764a1061e716d1c3345c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.8 MB (183811443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb3909c289f3416a26a893b40863fcfb26f5392916bbe3eee3540119370a266`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:43 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:40:43 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:40:43 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk=27-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:40:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Thu, 17 Sep 2026 21:40:43 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db920dc8d379e6739d262d2f678687196db886e4f3acd6bf051327819988cd9`  
		Last Modified: Thu, 17 Sep 2026 21:41:01 GMT  
		Size: 179.6 MB (179625387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cfa8708e9defc09113173b5de79125a9c08729f2fb09c495557e010f01be9376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb19d06a62663c4069dd464f7488e1702be18b4ad6a25116e0d19d0ded9f638`

```dockerfile
```

-	Layers:
	-	`sha256:6a1c9b8c0575b3d2ca13c33eaee2710ece23f77185e77f3e207aa096aef77073`  
		Last Modified: Thu, 17 Sep 2026 21:40:57 GMT  
		Size: 7.9 KB (7911 bytes)  
		MIME: application/vnd.in-toto+json
