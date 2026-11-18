## `azul-zulu:21-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:030301c347e144b78b352a98a61a32241f8d6578dc2aa8d22b911cc7ac7e37ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d9d77f167465c18a574a4c3e8c52ca277566981b4df2a7a0ff253cbb30358ec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195258792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8699c7e7be2c8f31cf2656c8b30d9fde29340fa2854ca5976f6d7a20cf003f`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:43:00 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:00 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:43:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 18 Nov 2026 02:43:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf7eaee9e3fb48fcf423687f9f338d420082833b7ea7c84cae6710106d0236d`  
		Last Modified: Wed, 18 Nov 2026 02:43:16 GMT  
		Size: 165.4 MB (165402660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f82f2a0738bf0dd8588d06389bd8ed96e7047ef8b31c635086a2509323ea17de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f280b54d80185d1f2f7c718120a80a7cb61041d72ae3ecbdbc217efa31c67d`

```dockerfile
```

-	Layers:
	-	`sha256:31d034190a5de85d5d9f6c9aa9e7df11f1787d96537f82097813d40fd2e7f012`  
		Last Modified: Wed, 18 Nov 2026 02:43:12 GMT  
		Size: 9.5 KB (9517 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0096350cd16aa95979a8322466b2e6cc969d7223b2d85f852a1b8a29a5f002a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.9 MB (194922065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39abcc47c963387694db6058bf46301f5bcbf386bb1620672298dc336f0e91f1`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:43:01 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:01 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:43:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 18 Nov 2026 02:43:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af0be2ecd54feff2c5fd62c07d13b6f02377fd767ecb66f4e3eb0bf274c37f94`  
		Last Modified: Wed, 18 Nov 2026 02:43:18 GMT  
		Size: 164.7 MB (164708028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1f17b2979f3961c73ce035a91c7ab6e567be871a79edfd7040cf5320672ca132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3d798511653e2eefcf4ebbf29c7b0b6c3ae6c649f0eb2d91cf14438b80348e9`

```dockerfile
```

-	Layers:
	-	`sha256:f35a760b2d0cf630b582b1f77e49f618331bd3443bd409bf51a3171c4f7e3450`  
		Last Modified: Wed, 18 Nov 2026 02:43:14 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json
