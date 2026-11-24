## `azul-zulu:8-jdk-debian`

```console
$ docker pull azul-zulu@sha256:f21527fe95c9526ada6f6a3ce8575b15027656049941876f10a5ec94256a53fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:6319b1ebbe16876290c592400448ce4f827689a60a14f004a917e285f6f75f5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.4 MB (91361446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20beb5cb099e80880623acc1f1895c57cc0abe8b30fd46831fac4f4c13a1896b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:34:36 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:34:36 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:34:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.514-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:34:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1164b6e34a87dd35495c784570c000f9d6da633768950716d10d723d724971`  
		Last Modified: Tue, 24 Nov 2026 04:34:46 GMT  
		Size: 61.5 MB (61519264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:50b5a04de80094c4b1167237f2847a2b7bbf402722be68437adcc0799414f4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73315ec4a7560ffc03bbfb9448361d4c34ffbe8134c191af2e03644e5ea79bb7`

```dockerfile
```

-	Layers:
	-	`sha256:ccf4b07a372e40549eb9b5c6d3f00a71f9937ddf5e98ef618b983d86ae685c4e`  
		Last Modified: Tue, 24 Nov 2026 04:34:44 GMT  
		Size: 9.5 KB (9468 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f9da6f92225e87a2e1a41ac84a4c3ff3becec395db9d488407d172799148bbb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92056828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa7f794932c2a24a311d4b812ee17fde2dde9c8f8529c27203d4fcc6b966c97`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:50 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:38:50 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:38:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.514-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:38:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3543219bf998588b3350a6c09c249ba6d4bce9cb3561ef0bec8a3a0b988053`  
		Last Modified: Tue, 24 Nov 2026 04:39:00 GMT  
		Size: 61.9 MB (61858794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7dc0164ca3e605cb0722b5a3f5e4aa0d4cd41c56fae3401d7b1c6cb37c66d34a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8a54008b1a6950447542218532657cd25cc10578bd49f78fe286ef913e7593`

```dockerfile
```

-	Layers:
	-	`sha256:ddc3a726ddf1863e25960621f5c8858c7935dbd32a7d272220b24930b40ea4b3`  
		Last Modified: Tue, 24 Nov 2026 04:38:58 GMT  
		Size: 9.6 KB (9584 bytes)  
		MIME: application/vnd.in-toto+json
