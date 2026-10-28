## `azul-zulu:11-headless-debian13`

```console
$ docker pull azul-zulu@sha256:89332cf031faec6096ac2788c373ab12ccd437abdbf1fe9473264eb85061a471
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:20b181163b8fb1ebe1008a28c78eb5249ae810791224839b1dc871b8df508494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175158568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9d680a9f455deedc00d80e0c2288ed50e38047afa3715e12571509b6c3a8dc2`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:35:32 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:35:32 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:35:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:35:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 28 Oct 2026 01:35:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279c30bb84714536c5afdb755cf5646c2d87ac001a0538e146460e75d3ebcbf1`  
		Last Modified: Wed, 28 Oct 2026 01:35:47 GMT  
		Size: 145.3 MB (145303332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c9bd5576f4fa7ee1488a093d72b1ff0cedda200f34686b8e1c58fd473d56d539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519633d8038ccb46bc138d6e299703b29c5b28a4ae3cb6abf1e564490144fb45`

```dockerfile
```

-	Layers:
	-	`sha256:ac96709f8d1532332ef021dc664574b9f77f0ff1cb0d95dc0e23a1a07a416b02`  
		Last Modified: Wed, 28 Oct 2026 01:35:44 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:04d807be267dba4e512270bd796e36a6971eca82a39c4f5f4125095467d1fe04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175204581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2beaf4c888e08b1b1344fede757ac5e18f6f69706917877904e3866364bfbf`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:48 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:39:48 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:39:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:39:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 28 Oct 2026 01:39:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f4344fe9fe1ea7861aa788d6e850b62b4a412e58c6fdaf677a94c97060d833`  
		Last Modified: Wed, 28 Oct 2026 01:40:02 GMT  
		Size: 145.0 MB (144991085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8f7cd53fd80f8487fdc8dbcb6d5e28821e4f582e1804d6bdac7948abf374ea49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93460e5c196c5383ab97368255b06c4d093b964533e3941dd525eceda4dfe1d`

```dockerfile
```

-	Layers:
	-	`sha256:e70dc2a6e634f91ca133f0f3b1460b1e4480334ba9b35daf6e4be5b300ec50d5`  
		Last Modified: Wed, 28 Oct 2026 01:39:59 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
