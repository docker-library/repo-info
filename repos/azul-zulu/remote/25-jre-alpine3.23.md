## `azul-zulu:25-jre-alpine3.23`

```console
$ docker pull azul-zulu@sha256:a805a16faa05a0971781ce3cad0657d2aabe71b96c0f5425ea7ed84535ca38d5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5d728c7e09d305889d1002446df01a9bf44158561a77b6a139e42287f4375d3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89798807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30dea2d03fe53ac73aec00a15383aab38c802d9aa5525d7c90c220c91cdb338d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:31 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:31 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre=25.0.4.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 21 Oct 2026 21:18:31 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a06d252185bd343e3589a7f4687e84f989a5ea9e77552241988d9b7a842edc3a`  
		Last Modified: Wed, 21 Oct 2026 21:18:44 GMT  
		Size: 85.9 MB (85946580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9a57af2c7e5fa68b5212b2457382f2290f0daab2e1cabe7257be1ce396d59295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae42372a7c572a8536b8b202ec9670f9ea665d4eeb837821b70cf967dd03c6`

```dockerfile
```

-	Layers:
	-	`sha256:28648b15b6ac474df7b44cbb94aa530b8bdff62ce78007b0cb7c8ab6b6139a5d`  
		Last Modified: Wed, 21 Oct 2026 21:18:41 GMT  
		Size: 7.5 KB (7490 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4d650c7f97cff88a71e10705a9ccbb0d7ed6b0fb10ac56b9ecd919d9deb91e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88973935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6681187455ea3573a63e8c8e46acba7444d4a78c41825582fc4b5cd64e37fa`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:08 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:19:08 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:19:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jre=25.0.4.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:19:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 21 Oct 2026 21:19:08 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25eea14ec1c3d27808b193ecbc29ecbf8cacaa3abbaec2cfa8a89d6226722e0`  
		Last Modified: Wed, 21 Oct 2026 21:19:22 GMT  
		Size: 84.8 MB (84784441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:19ca122c4e8335cae87d249839912910df87d32bada026f94b03243ceac6a31e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09348e620cc502075759c3fedf9b85f9087c853332f18d9d68d696847ae4a59f`

```dockerfile
```

-	Layers:
	-	`sha256:c0983d537dccb7c1d7d7d3fe9aec0d7452d01d7ea86fcfb43354ce26876dd114`  
		Last Modified: Wed, 21 Oct 2026 21:19:20 GMT  
		Size: 7.6 KB (7582 bytes)  
		MIME: application/vnd.in-toto+json
