## `azul-zulu:17-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:c3547af0ea559c57b5b5c933e68697c45eaf6ef67bc677b921b1d97b13c0a249
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ac18d05d310d9dbca7e67fecaad3f902e69fb33f94153187e4d2935245d246e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151439201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df50131119b69dbccb8b0af44ff6e6e2cac66f46ead869f09f633b0e92e08210`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:00:56 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:56 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.21-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:00:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 23 Oct 2026 20:00:56 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:00:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52543446c237056363d3c6c1b5099e7b063b249e7675a59c23d5ebd6256e0b60`  
		Last Modified: Fri, 23 Oct 2026 20:01:11 GMT  
		Size: 147.6 MB (147586974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:57ca3eb0a7334e9f6dcc15344700eb7592a522b2e1dcc2423946d554db020bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d4fb5dcd9770ee1bf15fc805488de581e10f4ad61ad0e5e2be84cbad75225a4`

```dockerfile
```

-	Layers:
	-	`sha256:d32319776a384edd058e7900838fb2e3913bfd1bec88e27678204b136af08412`  
		Last Modified: Fri, 23 Oct 2026 20:01:08 GMT  
		Size: 7.8 KB (7822 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:06a6a8dd7393d196f9a6caea71eb4fe196a174a0a3472779cd5dc4a323048811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150288923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:182068cf0e5ddaea5b89daba3492e1999a99f6bc6391cf5b9aa7f9e2f03b2cd0`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:02:21 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:02:21 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:02:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.21-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:02:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 23 Oct 2026 20:02:21 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:02:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5863584c6bddf474e3982938b00f62ee6e927548c433c312b675502f8d3a153c`  
		Last Modified: Fri, 23 Oct 2026 20:02:36 GMT  
		Size: 146.1 MB (146099429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:95184c5ed823532565eb8146e7d3b83c8b7748f0a789fb8f12384a30316050e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b68f91a7d0513afb4b1f26acc9e11a426e6857ec16635ae929d9222b186417`

```dockerfile
```

-	Layers:
	-	`sha256:66092c61c338d12460bde80b2bf32addddb1313c6744c9178ee39cc65f4359b7`  
		Last Modified: Fri, 23 Oct 2026 20:02:33 GMT  
		Size: 7.9 KB (7926 bytes)  
		MIME: application/vnd.in-toto+json
