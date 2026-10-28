## `azul-zulu:26-headless-debian`

```console
$ docker pull azul-zulu@sha256:47a30516d256e4b3bc3f39544db4d796d7353a059c0690ee3ccd776fc22d17f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a985ec15c10d0f1360aa7b7baf1cacd0f8c6c8d62e6e3eeb08b9e668de41c2ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215163482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03fea787372837804d1c2ed540b4e21f9c4935b5a0acc311671f9af9e7c075c2`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:38:50 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:38:50 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:38:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:38:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 28 Oct 2026 01:38:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a38b8110382870daf91eee50930114f9b9fafa746af19e751a491b92c733753`  
		Last Modified: Wed, 28 Oct 2026 01:39:08 GMT  
		Size: 185.3 MB (185308246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4291b43586df6cb21c9bf3b8ecf893f52063b98f7f7cdabf9e72fdb60597fa8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e1c0d1209074a02f776ba28eb30943618b9bb8b950d054798d93fd3fa09424`

```dockerfile
```

-	Layers:
	-	`sha256:a168f705b7e9165f08a8b412add1748e295502a6c8c8d31c6643c74a678f9fe1`  
		Last Modified: Wed, 28 Oct 2026 01:39:04 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d7eab10f443868cc19305878568713932b8a848e4f7c1354bd84fab6a83ac4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215233811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b1376bce7c39174453b71561f407af040f609aaab9286c4289be91d7ff0466`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:36 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:42:36 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:42:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:42:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 28 Oct 2026 01:42:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b3a65f6e397ba815484a1309d7b377553cbd8c0379f6da23ae765f26d5b5bc4`  
		Last Modified: Wed, 28 Oct 2026 01:42:56 GMT  
		Size: 185.0 MB (185020315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ac18084a964f9c477e1b8d4663019cb83972e78e9d02669a49687f1f34db71f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7448f34f42f5f29511baf551b2c6dae7f398cfaf03beb503d6eca4674b474c93`

```dockerfile
```

-	Layers:
	-	`sha256:7aadd342ac44b5ddbda643ec7eab9d6f0463ed88c2b962b25b6cc686cfa641ca`  
		Last Modified: Wed, 28 Oct 2026 01:42:52 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
