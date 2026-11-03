## `azul-zulu:27-alpine3.23`

```console
$ docker pull azul-zulu@sha256:a8bc07f5cf45e1d2ad229fbfcfbc96305afba08fcf794471cce90f647f10c713
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:859c161f000160ba988af3ab02b615b1e314ed968d04a653c56049710d6e7508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185985838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda267459ea9ae6dd6dbed696c1533af16d42b51f786bb9d389e6a921e168c06`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:10:13 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:13 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk=27.0.1.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:10:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 03 Nov 2026 00:10:13 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:10:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e669fec3dcd23be79ec4591a9ef37afb4d57f7651bdda3bd009796b1e9829797`  
		Last Modified: Tue, 03 Nov 2026 00:10:31 GMT  
		Size: 182.1 MB (182133611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e4b2e646fb06f3bcdac8600378383ffacbf19fd453bba6b3c180ef40990e12b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d94185323a7b5bab8d52581e0e65830140ea833c8533eb9d3cb4032aebcc345`

```dockerfile
```

-	Layers:
	-	`sha256:b2a61be3d018c937bfd96c616b79eefda161174442c0168b2bde1883fbea1faa`  
		Last Modified: Tue, 03 Nov 2026 00:10:27 GMT  
		Size: 7.8 KB (7835 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:15ef3191ca4bd15d38e042e93c735670d39a3f11080d2abb4965d42b5629f43b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.9 MB (183934903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a381317e8bd84dfd2602471266e6ce586bb36ece0d394ea8455e21efc4009e6c`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:10:28 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:28 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk=27.0.1.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:10:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 03 Nov 2026 00:10:28 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:10:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec62fc93bbd5c80b73deaf9ec3842b17de8e4e3b1503cb79242ee747014029b`  
		Last Modified: Tue, 03 Nov 2026 00:10:48 GMT  
		Size: 179.7 MB (179745409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3aa330e181a8b247fbf368b0183932139a10a6ce0c19d1acc01a3fd59c10c5e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e379fe13c10c5e26b78924f4ceb40b794bcd0b51c709b5084518d3407c7e0b63`

```dockerfile
```

-	Layers:
	-	`sha256:3e837ca0f93fb497d1c052bf00284f8d3e5e28fdc19dbd69906db59c9d41a13d`  
		Last Modified: Tue, 03 Nov 2026 00:10:44 GMT  
		Size: 7.9 KB (7939 bytes)  
		MIME: application/vnd.in-toto+json
