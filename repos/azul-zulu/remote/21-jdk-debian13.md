## `azul-zulu:21-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:5b72723373980a16cebf9f447a741599d3928f24dfa9ee09f199706ce85cc3d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:cde0e1215070a866d57dfe48bc43de78cffe99ee35e930357e9b8d51a055c1d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.2 MB (195234799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890376560433a00e046f018a58a00d4f8991610617f36de4aa89a8e255432d1c`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:36:04 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:36:04 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:36:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:36:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 05 Nov 2026 07:36:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92aef409392fcd5fc2d5b7777625451c69f033950426a7085cb285b3d97dc91a`  
		Last Modified: Thu, 05 Nov 2026 07:36:20 GMT  
		Size: 165.4 MB (165378667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:89322f749a201850bce62c020b3cc9b2a3c509b7807c2547d47e5933103b826d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6600916ca82200f94316b2dc387ccb768806dadd41a5bb12a1604c42202536bd`

```dockerfile
```

-	Layers:
	-	`sha256:f6cc653b253f803669cb64af23b693a991c3dc1d6d7474ac21a800edca09382f`  
		Last Modified: Thu, 05 Nov 2026 07:36:16 GMT  
		Size: 9.5 KB (9523 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:9ac316cbeac5dc4e6acfd75cfc1759dde825a210f10f4a7c9372f0e303f808c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.9 MB (194901009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6675196f3fb30f90676955735b3a9df049b7f8f85b0a1806a223a6b5c242ae`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:39:49 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:39:49 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:39:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:39:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 05 Nov 2026 07:39:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f4c7697b3f3f9bb87345d2eca313097d1f50f75197c148cb791de94f3a4f656`  
		Last Modified: Thu, 05 Nov 2026 07:40:06 GMT  
		Size: 164.7 MB (164686972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c03dad3e838699fcbc980e820f091bddfc1d34dfb3131ea33a8a9b9ae7612700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4ed220f6a58e13db0a86118694573581b9e5fa1a9ef47cd3f657bd31ce1e3e`

```dockerfile
```

-	Layers:
	-	`sha256:23965724f11fdbb016e5dbec2dac40be42714d3cbc0906191140316d828baa89`  
		Last Modified: Thu, 05 Nov 2026 07:40:02 GMT  
		Size: 9.6 KB (9639 bytes)  
		MIME: application/vnd.in-toto+json
