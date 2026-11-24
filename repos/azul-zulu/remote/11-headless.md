## `azul-zulu:11-headless`

```console
$ docker pull azul-zulu@sha256:be2dce952d40125cc50cf95aa027989e6cc94067eb28628a4fccc47fef8401ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:6056ba8f7044d12a61adb041befdce31d8fae29c64daa2cd7c2f4e4f80ca0d6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175170522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b11f3b2c36bb5bfd3732e671974bbc8ede1c724f07a3ef656077b185bebe7fd`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:36:07 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:36:07 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:36:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:36:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 24 Nov 2026 04:36:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e3ddc5739fbca3051667b0a988f6b711a31f67f26e6c34e1f4e76d585a9ba3`  
		Last Modified: Tue, 24 Nov 2026 04:36:21 GMT  
		Size: 145.3 MB (145328340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:965e372f2e94c61412451c86cce7db984a6ebb5899551e677cf93a280bd31048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e70da062671e55887a21561163e4cabac91a6fb996286c6b6d98992d7fbcfd`

```dockerfile
```

-	Layers:
	-	`sha256:cd6f556113440b1194c03218f013bd629ec46eb813937ac57e8559757e991a95`  
		Last Modified: Tue, 24 Nov 2026 04:36:18 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0b273ed713fa4447175d6d1a19a6515cea4d94648cb0a9a4dac676a2de38c900
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175208640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151f66c84e32adbe5f2a34642e53bdbccdd0a333d32a410ca508176990264571`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:40:05 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:40:05 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:40:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:40:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 24 Nov 2026 04:40:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c5382424556a8ec58f35218e543c8688b67fba6fa28bd358369dbba7b5dcce`  
		Last Modified: Tue, 24 Nov 2026 04:40:19 GMT  
		Size: 145.0 MB (145010606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:88a9e61c8e3826da4d7b4780e1f7111120be38d58d7c2943ee0ecda205ec3f73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23cb51725d88de46177b7655ffe4d39e56cec05b0bd0cd32828128a4067daf85`

```dockerfile
```

-	Layers:
	-	`sha256:0429a4fbacf0b1995f015b72c90ed270620844fab988e67f09c6523da14533bc`  
		Last Modified: Tue, 24 Nov 2026 04:40:16 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
