## `azul-zulu:17-headless`

```console
$ docker pull azul-zulu@sha256:bc6a57f725460c167f9362f3d8433459081c992f3258d3cd242cf848196b0509
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:daa4e53d20370082ee1f0d0099cb26ba84baaa9985c69e07af8ea9e248beb1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.6 MB (179625261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbbf12575fd43addef3cc4f86d0cd8ea1765d177f7c1ebb9716d5814a33960d0`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:42:26 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:26 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:42:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 18 Nov 2026 02:42:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19ec7aa9676ae4562634ffd764f45ba7ac02fed955c13a7865069f3e15ab8b6`  
		Last Modified: Wed, 18 Nov 2026 02:42:42 GMT  
		Size: 149.8 MB (149769129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fc241a080fe2f1fa7572902b36431a59c4229a93d8080791784fc12db29c82ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dab858f281b791cd6aede3da98e364ea8460487d7be91fb6273d80d633c4c79`

```dockerfile
```

-	Layers:
	-	`sha256:27b410e40c54adf00b71e1d4d8589fdef6aabe382aed617017d6b0b0d3d04d31`  
		Last Modified: Wed, 18 Nov 2026 02:42:38 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:dfa674da9657f01dd8edd910552c32d2467a13b41c252ab4afcf54f96bae390f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.1 MB (180053868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b5f1d2a42ba6c7a77883f607f6f90b5ebe3bf61e70cb89f61a1b65146b13d4`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:42:19 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:42:19 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:42:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:42:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 18 Nov 2026 02:42:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9b47a5520d78bcfd135279766d308f5827abbe1b26211033fd027ee8128d087`  
		Last Modified: Wed, 18 Nov 2026 02:42:34 GMT  
		Size: 149.8 MB (149839831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7b3074dd92597ea9bd18b16f73e8dcbcf936f347c8b60f1e82f442ef240744d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d872337b4db25f1fca3e8fd5cf4087db05ed77d4a0977d95d818b56a16d68a`

```dockerfile
```

-	Layers:
	-	`sha256:96f9e0adbfec17af14e65c1fd33c1165c71fa2b4cc426a7242f328c2e100a127`  
		Last Modified: Wed, 18 Nov 2026 02:42:31 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
