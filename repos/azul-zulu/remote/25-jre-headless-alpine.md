## `azul-zulu:25-jre-headless-alpine`

```console
$ docker pull azul-zulu@sha256:225b34524a83e2439b85492b2c9f3dccc519d9318172cef9efaf6dda26000a55
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0a669538c09f58d2380065710a5bc6fe93d0b233444a2a67b3a28b6b13ed3608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86777395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5dcce2c855894c3ea326c2f2350243f22ca842a81b5a94e0906dc19a297d3e7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:30:37 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:37 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre-headless=25.0.4-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 23 Jul 2026 22:30:37 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5547449bbddc6a7fffb03bca5474c30fa01d78f732a7ef1ca184cbf5c1de2412`  
		Last Modified: Thu, 23 Jul 2026 22:30:51 GMT  
		Size: 82.9 MB (82932974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6c39e65a9a2cd5a5101eca3d38a6350a87146ea99d7137c8e8adfafa14f503d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4af9d5d868ef4008e851f837f9dc2fc8878d872643e4935933bac857638a343`

```dockerfile
```

-	Layers:
	-	`sha256:92cb4d44cd2cfb5ee2f151dcbba915b668730284ce64b05d86f90cbffb74800f`  
		Last Modified: Thu, 23 Jul 2026 22:30:49 GMT  
		Size: 7.6 KB (7573 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6aa0e1dc01708929bdda4adbff25126e7dcedbd9c03beacb823d7a0671b3923f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85918230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af50363520470ec5227d7b49e1387a2246ade22b82c86a641b8e8d57107042b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:31:42 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:31:42 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:31:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre-headless=25.0.4-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:31:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 23 Jul 2026 22:31:42 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4fcbe0bbf014d85133c2ee0c1bc7156ee1cc94a1e9fa69b043feba15df0149`  
		Last Modified: Thu, 23 Jul 2026 22:31:56 GMT  
		Size: 81.7 MB (81736370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fe0104c2b1ddd5934cca011ef6241d7c48c80f42013987295e7d8e50848a981c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f49f6cc195c559c087772b287cd6e8acc59fc4847bd75266df323d9999e570`

```dockerfile
```

-	Layers:
	-	`sha256:1a0738ba2456a3e18b3290e1a0486937716ef33349be2d99688a60222f4a2317`  
		Last Modified: Thu, 23 Jul 2026 22:31:53 GMT  
		Size: 7.7 KB (7665 bytes)  
		MIME: application/vnd.in-toto+json
