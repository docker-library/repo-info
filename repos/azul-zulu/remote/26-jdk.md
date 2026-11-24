## `azul-zulu:26-jdk`

```console
$ docker pull azul-zulu@sha256:cfeba7db7d7728e8a617582752e22fe31551e8067b5eb22c1c7a1d0eb2b4a7ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:77fe23449cf711419323ca8c6c4fa922e71b1db52325dc77f28da6c42830a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217348802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e319efb8625a11f6c0cfc39ce41c6fed8a0f00c3ac6ceb2db5577902b234e79d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:39 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:38:39 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:38:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:38:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 24 Nov 2026 04:38:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1947fe3638f9b518ffcf4d758cacb25eb485bbb47da90b1b48fb92ed858397ee`  
		Last Modified: Tue, 24 Nov 2026 04:38:57 GMT  
		Size: 187.5 MB (187506620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:63b34ac8dac23ed6981aed8ebce7be8f916f4fec113b87e0ab8fcad463269699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5158f9f45efed1f59279c221e7d0ae0e0df88b9adf4cd5558338ab175ad8b214`

```dockerfile
```

-	Layers:
	-	`sha256:cd06f002d0e3981440d89a39f6af6be0bdb7a3c608cfc1ba7359387951ebd4c6`  
		Last Modified: Tue, 24 Nov 2026 04:38:53 GMT  
		Size: 9.5 KB (9510 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:aca2c7e95c5d0c1ef8fd7201070b679779575f96fa7b6af1fb43fedd221d5a26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217410553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d136b310e24f3bb0498aecdebd414be8ad59494a51003a096faf54913385812`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:42:49 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:42:49 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:42:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:42:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 24 Nov 2026 04:42:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c292b6454bdea9120c7b55f590e47cb12ae2d4acae652f0ca97011d38a081ef`  
		Last Modified: Tue, 24 Nov 2026 04:43:09 GMT  
		Size: 187.2 MB (187212519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6cd2aade3a3c0ed79fae21c3c072ee11dbeaf171a0828bccd3f78a274ed33052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0be4deae9e9d9829768121df22bc1cebd1c06c5e1c5b21a5e5d0efc5b59f80a`

```dockerfile
```

-	Layers:
	-	`sha256:1cd14f7c8824decb94740c8009cacfd00e6299d92306ab0b495015679fee465f`  
		Last Modified: Tue, 24 Nov 2026 04:43:05 GMT  
		Size: 9.6 KB (9625 bytes)  
		MIME: application/vnd.in-toto+json
