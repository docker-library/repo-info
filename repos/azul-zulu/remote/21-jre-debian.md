## `azul-zulu:21-jre-debian`

```console
$ docker pull azul-zulu@sha256:01a8af6d24da34de2a4bc439932b6993780bf7373ff9d144e4985168f6f1ac4a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:7f0f0f6a16c4ae9d382b50fb25ebd1bf7de6906299e32bb21346b81c26c1a52c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106228783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d5d683a698f2eb3ca5b443736f4cf9cab914d941873bcd58e56a2e3d6e78c7a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:49:25 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:49:25 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:49:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:49:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b82532da88355cf5b08f163f88d7eed14370a41308273033f8bd188238b3ee19`  
		Last Modified: Tue, 25 Aug 2026 00:49:36 GMT  
		Size: 76.4 MB (76436125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:89c6a68aec7d8772c17d38705bd57172767380e8773378077c9cbb050e29f80e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07bfc4ee6115d2bc82d8a362675b394be870f6f52e6c09382e5caac597adbef0`

```dockerfile
```

-	Layers:
	-	`sha256:968fcc36802ab405c63f8f18db0e703059a4aa0b1030237d1dbb19c8587218f0`  
		Last Modified: Tue, 25 Aug 2026 00:49:34 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2c78740e2bda733a2a9e33b92eb7895c6dbd2be56010b3240d40ecee49c92692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106235572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40fb7a04a1b7ef48b5ec84a27c1794d25e45355061ba7a8ebb88494d4982f5f9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:21 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:51:21 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:51:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:51:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed6fbd9be6cecad8166cd0bd6fc2350a908c6239fd64f2a1b8513a30f8b5e30`  
		Last Modified: Tue, 25 Aug 2026 00:51:34 GMT  
		Size: 76.1 MB (76075990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3ea6a35335478c9e30760c82bcc38efe3d69e0dc0622f577b64c5a1fe491a085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:118a0b6397e5a6d52a9be9f1e96f13545af8bb0ad86c500ac4629128d98c2a0e`

```dockerfile
```

-	Layers:
	-	`sha256:98175aa7651f0f04727060742f8f1de2468fc998680472f894dde2a1e8b94c2a`  
		Last Modified: Tue, 25 Aug 2026 00:51:31 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json
