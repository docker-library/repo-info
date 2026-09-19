## `azul-zulu:8-jre-headless`

```console
$ docker pull azul-zulu@sha256:1d6fcc9608b46bb7800f86f7c3b1454634932ab36c32ea638a0ff1774ab2d263
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:61230a8c524586cefe3748af7ec085b794340adbff57686d9575104273262522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (77009777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f216a21013806b5c125a70c7b17875a6425df1b32b76126f19120c6ae8a1b32f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:40:45 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:40:45 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:40:45 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:40:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75fd696aa531a9a6342db7bb93a59251aa24c570e8ada6c0b4bf31839ebce946`  
		Last Modified: Sat, 19 Sep 2026 00:40:53 GMT  
		Size: 47.2 MB (47179359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e71ab78333e7287e3c994d58eb15c9bad3357b1a6fd433bba702e8c14fdde1fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ca2aaa616a6588ea9bb8116c19c68a6f9561d5e88f0d51028c71fcb64c0696`

```dockerfile
```

-	Layers:
	-	`sha256:92a432f9f94188183ea1bcc9c8f9b682c997d66bad7c1b6fe63e810b1f875710`  
		Last Modified: Sat, 19 Sep 2026 00:40:51 GMT  
		Size: 9.3 KB (9285 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:921c79ac4de3f756fbeb3c80588a57c8d45680dc38cedd8212bdfe6094658c0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77596334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573eadb594f6e98613283f8142bbddc218fa513387813e7c5a5f5723f4924d65`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:43:35 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:43:35 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:43:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:43:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b97cd2eceb22b7684a44bd0875a47c671acbe95a1feb1577b12843998b55d6`  
		Last Modified: Sat, 19 Sep 2026 00:43:43 GMT  
		Size: 47.4 MB (47406643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5e251ac8154f35368ec5507b7a751d9a612668a0bc26d8351c722de5a30bb646
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d274894b5186e68589dce2c6f1896a6e70d4e1469b5d5b4a46a49f2585512856`

```dockerfile
```

-	Layers:
	-	`sha256:eb7f2e0d12b36033f1b535a944a66f5985bd45ba78e77abf016511bc0382a688`  
		Last Modified: Sat, 19 Sep 2026 00:43:42 GMT  
		Size: 9.4 KB (9389 bytes)  
		MIME: application/vnd.in-toto+json
