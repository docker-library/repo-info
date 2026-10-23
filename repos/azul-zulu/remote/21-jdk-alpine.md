## `azul-zulu:21-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:eaae6d840006fe7ba5ab6b510c6f02b5bf536102461fde5d8dbe0c65526073d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:f6a12744c3509a3e2fdcd5d68d1b1fd43fcac055c5f1f986e9f78ceb727beff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164486742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:846e3b69cd7ec55785a96dda465a880c97a0a40c6949c827242b5c11893ef8b1`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:01:36 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:01:36 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:01:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk=21.0.13-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:01:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Fri, 23 Oct 2026 20:01:36 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:01:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a7c0423138372f4695f5ebfc5bb6dad1530441375763dd54067bfc5e09fef0`  
		Last Modified: Fri, 23 Oct 2026 20:01:51 GMT  
		Size: 160.6 MB (160634515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f52132a7feba09af437943dcd00777dfc4cf40649adcce7f74463f43d994961b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e143f80f4b836025e43c2753d57ab2d8d3ff26d0617ea9a8f4918d62a909df`

```dockerfile
```

-	Layers:
	-	`sha256:61d3cd6611bd74b47c0f6950ac4fe66d7134a316cd1f5f7d456113fd9e8be1ea`  
		Last Modified: Fri, 23 Oct 2026 20:01:48 GMT  
		Size: 7.8 KB (7822 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:28abe36cc85718688094423c5f84bdfd3f69a786ab8384d84e0d681fbd01d589
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163075730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d051c107347741c4bc97cde1accc711e2dfee510225a0cce81820f106e951571`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:03:32 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:32 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu21-jdk=21.0.13-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:03:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Fri, 23 Oct 2026 20:03:32 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:03:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd56fc32faa88ebabf5b908519ed6c1afc7cff88c04b1051b3398d0a123c670`  
		Last Modified: Fri, 23 Oct 2026 20:03:49 GMT  
		Size: 158.9 MB (158886236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:098618520e4079454a3a34b703d41dfb2d38cba3b0762a334554e6dade28534d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef85cd606540b6f253d3b878a4baca1d27b7add2df9bc81e23e726fd324e409b`

```dockerfile
```

-	Layers:
	-	`sha256:cdd033b65ab059415ab060638f31082cef463b69e75d4185df56f372850fa6db`  
		Last Modified: Fri, 23 Oct 2026 20:03:46 GMT  
		Size: 7.9 KB (7926 bytes)  
		MIME: application/vnd.in-toto+json
