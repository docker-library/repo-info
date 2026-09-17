## `azul-zulu:17-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:a06ad8ecc1e6c90dcfffae02e6981b24e6e4fe2d15a60b570c8de6fe64c131f0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-alpine` - linux; amd64

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

### `azul-zulu:17-jdk-alpine` - unknown; unknown

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

### `azul-zulu:17-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fd9609a0c7c9e86e53cd5df9281afcf7c68a5c3974a753e3ffea4d296d090104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149910990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5bcda915a5f031946b17e702974c7e128cf542a9ed4fe926fd4f7785a2953a`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:28 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:28 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.20.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 17 Sep 2026 21:39:28 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ce263c9dfc884f9ae79105512952b22807d414d882e70cdee8ef386d574cb4`  
		Last Modified: Thu, 17 Sep 2026 21:39:44 GMT  
		Size: 145.7 MB (145724934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e09df05317f36f9e38d4963d7041d4568609ea90635e7da76f853ba560677520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa557f848b1d058c5cccc8a4a600496c583a02d079318ff8a65f4069359b0dc0`

```dockerfile
```

-	Layers:
	-	`sha256:30c0c8dcc8bda91828449c294bfe87d60b0cfdb96add534c5da0e9d355e564e5`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 7.9 KB (7936 bytes)  
		MIME: application/vnd.in-toto+json
