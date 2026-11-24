## `azul-zulu:21-jre-debian`

```console
$ docker pull azul-zulu@sha256:6b7e2b3b706b279e69c407775d5615e8992b7f79f0ebb653be6f99089a8e595a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4fbf8500c94baa55c778db5ff55cad7a5d5e0a692f2873fc837665382394b3d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106442938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19ce7ef0eb7e595dae24f883a3b8ee7fb6259b797f1052575ff4f31dac0d4ae`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:37:43 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:37:43 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:37:43 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:37:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b071e7910c09ba20eb22afb84de93b292d44a5a7acd7532bb2fd724fa7ff906`  
		Last Modified: Tue, 24 Nov 2026 04:37:54 GMT  
		Size: 76.6 MB (76600756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b659791703d9a19dd0646ec8151eba51d6add35b99e9ad69069133f6b7bee400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd6260be082af0558d7b49d184e9069d069393cc963bd61cb819ba100d06999`

```dockerfile
```

-	Layers:
	-	`sha256:51dcc5bccde3ff2739f7c4a9ae5e8a204801d6c43dbbee9496e40a6df1636d4d`  
		Last Modified: Tue, 24 Nov 2026 04:37:52 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fe47e91bc5d6678e432f2cc7ba858fea20614dd51a878b29a75e351ee36f5413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106453869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:838d6c0db2987d02a7ce5f5fe63f162df64a65835d5a9d49fde90ddf7e4be599`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:42:00 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:42:00 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:42:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:42:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937532faaed274e8f97c1560b3eca4c066559f98e8ecb224aa20315a59050ff5`  
		Last Modified: Tue, 24 Nov 2026 04:42:12 GMT  
		Size: 76.3 MB (76255835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:80f1ece4210087a7cbb1658203ca8b6795692005c06708f4b85a72784d014347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1902c1c8a00e443daf952c40b5cb5aaf7cee1eb4935852d94726730c86590503`

```dockerfile
```

-	Layers:
	-	`sha256:45cae219638c6d07947331748e2fcd3656ee6137d24b7b46cb54b0230de6da39`  
		Last Modified: Tue, 24 Nov 2026 04:42:10 GMT  
		Size: 9.3 KB (9303 bytes)  
		MIME: application/vnd.in-toto+json
