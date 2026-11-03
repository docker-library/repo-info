## `azul-zulu:27-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:2082f51ce1de7d3cc248acd27473f8df26f43f0c5c7ae36a61ba39d96785feb4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:84d7fcb306fee1d731871d023f941b1d9439c9fe40d0ee1e65942b8b73ff5167
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87720959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730bdba26dee9b5a43999379d9d7395a9b69795856cdbdfa3e4bf3c6644500c0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:10:32 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:32 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre-headless=27.0.1.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:10:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 03 Nov 2026 00:10:32 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b650a5073d548267a77609f26646040eb60c434baabd3d75796a741146fc823`  
		Last Modified: Tue, 03 Nov 2026 00:10:46 GMT  
		Size: 83.9 MB (83868732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1d5e19e7ae3f046f27a83244b0e098e3a473796e2cc2459821f777113f60de61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc8b14a5b9d40a63ac622e4c1cec7f9e85b4c5fd31ecb31a56d82877e0e9fa6`

```dockerfile
```

-	Layers:
	-	`sha256:e728f172e0b8ca2afac9c483631a4250ee3a59b9124f4192da19afd7c418bd0b`  
		Last Modified: Tue, 03 Nov 2026 00:10:44 GMT  
		Size: 7.6 KB (7589 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:78ea43ea0c4c6db017ebe82207911cab354e30c51b55777e2b9b21f1eb3c0967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86878040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2395bca367e36ad13bf5fe1b201f68733d13208a8ad9e7dfd2fb9027a14afa4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:10:46 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:46 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre-headless=27.0.1.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:10:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 03 Nov 2026 00:10:46 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56530a3971ea5686be8892e1a0402d518fccac96f303e5bca1219590483460ef`  
		Last Modified: Tue, 03 Nov 2026 00:10:59 GMT  
		Size: 82.7 MB (82688546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4b3170bb3f1a35d5cd8082c735441b055dbd49b089375a6d35efc7ad4ceb9d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c064868babca89ec62fa8b259c568521ec72cb37dfdaf5fd57de17cec321f3`

```dockerfile
```

-	Layers:
	-	`sha256:bd73cf1bbae89418c309365d12c5b944ba957752b27e17330d8b00f4c246d53a`  
		Last Modified: Tue, 03 Nov 2026 00:10:57 GMT  
		Size: 7.7 KB (7681 bytes)  
		MIME: application/vnd.in-toto+json
