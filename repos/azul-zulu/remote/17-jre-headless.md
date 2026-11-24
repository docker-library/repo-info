## `azul-zulu:17-jre-headless`

```console
$ docker pull azul-zulu@sha256:2416dd5303cd901f1576263737e8bc7600d5db4109d6baa435143a52ee7e3dee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:fc078b09d74cd531b0bb04517a88228229c5b94f09725351ec487763c9c646c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99052374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f39880409c9603afcd8955b6e4015f9527ccc99271bebaeb7eeadb67c93322`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:37:28 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:37:28 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:37:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:37:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5ac3dac07da101acf154913bb8092fcb5b3d8cc31fa3de0ce449fe324e4f50`  
		Last Modified: Tue, 24 Nov 2026 04:37:39 GMT  
		Size: 69.2 MB (69210192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a57c90163e27451ca7c6df283bd86cb0fb9cfaf9aee01e2e0f5e18664b1b32c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1060f50f7c7cdc48ce4312199599ee61e2d12dc9870d1db296cae6456cd0d3c`

```dockerfile
```

-	Layers:
	-	`sha256:8df519565f7f49b609551a754db696e0600627ddcbacfc9d2893fefea754f45e`  
		Last Modified: Tue, 24 Nov 2026 04:37:37 GMT  
		Size: 9.3 KB (9310 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7db5fb56b1af65002b476ee86e845dc70a1794b77b5b13f27cc6d4363323c255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.5 MB (99483836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9d476f185caaae6ca09f794a9f21a96b2f704a1cffe7754b231d72e8e461824`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:49 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:41:49 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:41:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:41:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fff74d9cf26e23f5c0274c8de1cef940aced257b26c516a04bd056ffa8632f7`  
		Last Modified: Tue, 24 Nov 2026 04:42:01 GMT  
		Size: 69.3 MB (69285802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:90a91c513dad17d419953e8a5bf3a0e180520be83246e5a4442d26efed505f54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c2446ccd64670b9b7f3b59455d3caa526687500b695f84ccf3c75ea625d389`

```dockerfile
```

-	Layers:
	-	`sha256:86d4c74c33f349c33027fd1f6fb2e427e2761e2fd640bf19dc2192393c5191c0`  
		Last Modified: Tue, 24 Nov 2026 04:41:59 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json
