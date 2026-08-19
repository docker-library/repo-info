## `azul-zulu:17-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:826380ad67e84fa9a6d767891ced5a954818be9fd58f545a019ca0b48271c79c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:48cd840000fe895e5b3c5edf416bbfb9c730ad8ed8dc40ed7b0a1a4c736c4a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151117333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258cc860eabb195031b49b1b20b8554b3fc94ff61e56ada8dc4c903d1a4e194b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:35:12 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:12 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.20.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:35:12 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:35:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8cc6d626728cc0ea441755b1219792d0df026edbd3e1b092615511fc905137`  
		Last Modified: Wed, 19 Aug 2026 17:35:26 GMT  
		Size: 147.3 MB (147272912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:791afcb1e69d8c296112c6fed6ec8cdd121ad1c6086201b82d959c6a12efa3b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166e3d8fef26c57aa59387e4cf6392c748f5ffedaa04ac1629a09d85d2a41956`

```dockerfile
```

-	Layers:
	-	`sha256:cb190bbd7b72327a24f29623e7261bf79a45376ce2060843a453c223b4b5a9ed`  
		Last Modified: Wed, 19 Aug 2026 17:35:22 GMT  
		Size: 7.8 KB (7832 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b6040fd883dcd15bb076f61508b70c37f9d32900c965658f5e55c33e950d6f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149906822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0815893bf4edcbcdeb67b5ceb5b987c153c116b54ff806fdfebc0aca071f56`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:35:12 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:12 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.20.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:35:12 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:35:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf22c31459f9500f8ae610babe3bcaf32b63cd9eb301fbc98277f4bd84c1d1e`  
		Last Modified: Wed, 19 Aug 2026 17:35:28 GMT  
		Size: 145.7 MB (145724962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f993547d9d77c7cb4f4fe6c54c61558073b73b93f86ef0d49567ac90832c9ed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca1f9ac0f3186e9e242d1ac64ff9903ea861872040c6165577890a850c6ee042`

```dockerfile
```

-	Layers:
	-	`sha256:c493da8601ac6a82dff1953d21cb4781d65c1cf8079a34add42ef009457c1e23`  
		Last Modified: Wed, 19 Aug 2026 17:35:24 GMT  
		Size: 7.9 KB (7936 bytes)  
		MIME: application/vnd.in-toto+json
