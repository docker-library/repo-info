## `azul-zulu:8-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:c24919b5d0b499ff5cb89eb81c3cebbdad55ed9c708a54dad062f7ce6e5eed1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:dd6c0df4ec32e67398d944b7f8792b8d655f1a387ac80a92aa6b0cd31cbb5fef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (77040876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff6eb73377901b87de344bd174e26eb90146e6cd2ff146e828179da1b848d3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:35:32 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:35:32 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:35:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.514-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:35:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692d96cb93226e62fe6ac04937c9493b4aaf3cb4f6048eb4cf16cfebc1b7e318`  
		Last Modified: Tue, 24 Nov 2026 04:35:41 GMT  
		Size: 47.2 MB (47198694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:34ee4fb8ea515f7dbac2b20a016a1cc42b58d9533827517d27b8b1b3ed1a26fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00531dc12fad931da43109a513683b1a317dfbc5b9e51716c7940561e26e8aa1`

```dockerfile
```

-	Layers:
	-	`sha256:7d21ec8f4af979869d06ad4b333980845cd3a3c2533787aaa96f0f74326c38e0`  
		Last Modified: Tue, 24 Nov 2026 04:35:39 GMT  
		Size: 9.3 KB (9285 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8fbb38e7225e6a4b45f3a30a4e30f2ae03a30b9fa543af07ac84023ab8134dc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77636569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a20e40458c9254ee95e291a69cf31e82671981236289c4ab8103b0c037a9c57f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:28 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:39:28 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:39:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.514-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:39:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa78c53516a6ee1af09da1b70e0aaeca582204a870337a75ed35bb9d69a40552`  
		Last Modified: Tue, 24 Nov 2026 04:39:36 GMT  
		Size: 47.4 MB (47438535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fdc62115aaa7ed8083de2cacc3c27fc81268ca2365348415d10163e470a54a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8b3339e640902c15bdd0f07dfc4eb176e154e2eb8e6df556bc5ef28995af25`

```dockerfile
```

-	Layers:
	-	`sha256:43d07d3dc2a9194aaae1730ab70b2feb03ecadf93b1fe4f4606dc33582098d8d`  
		Last Modified: Tue, 24 Nov 2026 04:39:35 GMT  
		Size: 9.4 KB (9388 bytes)  
		MIME: application/vnd.in-toto+json
