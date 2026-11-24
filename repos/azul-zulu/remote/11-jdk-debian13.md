## `azul-zulu:11-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:c435dfd89b7758142cadad0016a663ee70f5b9e012d2fcbf426d55c9dde526ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:16d12add976e2a49f24df1d042fc59b582d7bd0f5b45be4d134093394404577b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177564189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:683cc99b92a3f2385fda038671287a1f0b255f856805dd5e9f27040a469ac642`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:35:42 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:35:42 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:35:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:35:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 24 Nov 2026 04:35:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d33dfd496cbf820b6d0d91cf2938df0a64a6486e8758f23b2d1fd4173bb9c2`  
		Last Modified: Tue, 24 Nov 2026 04:35:56 GMT  
		Size: 147.7 MB (147722007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:17f7f1528923b345a4e3769fbe5eb1eb89dda65fce8859746797a2c5d169a04f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abcac5875efb57db5e8982762350da7e874e188d1965d17708fcba413bc43a4b`

```dockerfile
```

-	Layers:
	-	`sha256:b6f4cec9405a9a0c0e49036a9766ffcdc11f568d1a7b560679455c82a0810cc1`  
		Last Modified: Tue, 24 Nov 2026 04:35:52 GMT  
		Size: 9.5 KB (9517 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:34af46e1334b397df79d83191752de4a28b52bd69f4ed53a7367b1f8ecacafac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177593141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a2ed22b4c99bd05f70f31e968d632581d4b24cdd2afcb598283db36a3557f7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:40:03 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:40:03 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:40:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:40:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 24 Nov 2026 04:40:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a84807b4138fa1aa0ebfcd028513dc37c58a84b5480b932a44f45f280f4e910c`  
		Last Modified: Tue, 24 Nov 2026 04:40:18 GMT  
		Size: 147.4 MB (147395107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c93d8407f6c14f3e99b04a0be84f82d66da93ebb4cc8d8fc2fac560e2690294c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa7cc098f8fb5d1d9c2fc3c68191ba2a5d3e3866aa2fed4f486ca14a69adee8`

```dockerfile
```

-	Layers:
	-	`sha256:b15f97afcb9ed2a080acff33a720800252f43705bacd881133e89b3f79a1bc48`  
		Last Modified: Tue, 24 Nov 2026 04:40:15 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json
