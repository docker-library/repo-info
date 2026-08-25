## `azul-zulu:25-jre`

```console
$ docker pull azul-zulu@sha256:258d52893131044d49ad49bfeeac410ac25d6d6ea9bab141db0be7b01ac69e89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:39c5e3668a796c33abb6bca6376ca2b6977a5241200447ff3a9881d3564b3ad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120364952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ab4ff117369891a2b06c1c89a0b71e9df28041a6aa2f4c17253f01582e0fc7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:02 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:50:02 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:50:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:50:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0ee9a12fbdcb3daca03245a14fa5930ffe7e90a83f569b1cd47a6321f92b8d`  
		Last Modified: Tue, 25 Aug 2026 00:50:15 GMT  
		Size: 90.6 MB (90572294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1a01c4168f257e1742742086bd0fe6d4b89beb29f529d181b8015439dd0f8eb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef04f107c2e698b614e85b440f7316b4031e3fa5cde8697d5f22ba80c63603e`

```dockerfile
```

-	Layers:
	-	`sha256:81aaeb46920fe581f85bce5a5142beb08b4f58b384a064013037a9f96b4b4e57`  
		Last Modified: Tue, 25 Aug 2026 00:50:12 GMT  
		Size: 9.2 KB (9197 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:88ce001e46adfb5bab7ddd130496dc0d46f43f9c205a316a75ad3f08f07288ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120317372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea7bf1f799eed0becdf1f58489e7e26ae4bd934b2af10204707c7c5074989cf1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:00 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:52:00 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:52:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:52:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa6577bdd4d973f24ac817e3e6fe3bdefe37b2a0c9e7b2aab7cf01147177b66f`  
		Last Modified: Tue, 25 Aug 2026 00:52:14 GMT  
		Size: 90.2 MB (90157790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f4e81c313e8df0406a4634a001a9004459d8ef40e1ee27c7e0745cdf22ed8091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e89e56e8414fa6d9bda45e140f3f5f812c98a08cea1f70a12bc870b11a58b713`

```dockerfile
```

-	Layers:
	-	`sha256:2687a4da98887cfd7cabed6e3645b8b34c8229856c16fefafc064ec8f1187799`  
		Last Modified: Tue, 25 Aug 2026 00:52:12 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json
