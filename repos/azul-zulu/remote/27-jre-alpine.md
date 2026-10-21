## `azul-zulu:27-jre-alpine`

```console
$ docker pull azul-zulu@sha256:ac2f4d543dfe64229166bcae24373bcf2382bc70a1d5ff7631a56d0424888e9a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ee1bac13700e311ec3f7d76fa2594d5b0bb830d5055296015773fa8edc68f5c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90591870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79070f8fde734f0a1666c817d3af56ef7958e56531ea990d8d490bc663aea624`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:07 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:19:07 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:19:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre=27-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:19:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 21 Oct 2026 21:19:07 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6400e7d8edf390da859e211c3ab06c633c4f26db32e46ca46e891e78964c6d34`  
		Last Modified: Wed, 21 Oct 2026 21:19:20 GMT  
		Size: 86.7 MB (86739643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:205983e0cc1367ebd5a832868ba47131a1a3cd0c731b0dbf9619f3f366246d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467aafeb71438d4ad19fb92b75d758016aac49e3a3f4a08f93f75b4fa6b8bd04`

```dockerfile
```

-	Layers:
	-	`sha256:7bf58089932c0ae31762618260347b13881414c9098ec8050b447574a5860576`  
		Last Modified: Wed, 21 Oct 2026 21:19:17 GMT  
		Size: 7.5 KB (7472 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:cdaf9254156fb6d4ae9379281162af2744859195398e9eb177e02d3762ec253b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89772274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f899a3d68b5f7f5900e8d27ef4b3b80446277151ab9b3bf59473eccaca196fc7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:48 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:19:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre=27-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:19:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 21 Oct 2026 21:19:48 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eefb083a4b8c2aa8e66ad94549d8d4d90dfe58e9c7616e01646a5762b471ecf`  
		Last Modified: Wed, 21 Oct 2026 21:20:02 GMT  
		Size: 85.6 MB (85582780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:724a35ed560addfc58460738ffbadbb1a91b40b107478b92dfe06e095797b4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01296be0a9bea0220bd9847eea3346ee003f84a062eb7f4d1fbcf2c47e0ebbdf`

```dockerfile
```

-	Layers:
	-	`sha256:37045256551dcf26b020db797e4ee7ef77ba20d0e0cf9e31aa988d4d32a14dee`  
		Last Modified: Wed, 21 Oct 2026 21:20:00 GMT  
		Size: 7.6 KB (7564 bytes)  
		MIME: application/vnd.in-toto+json
