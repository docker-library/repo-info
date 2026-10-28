## `azul-zulu:17-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:36edfd3bddcc2f1d70e19182df26e3e1be701db29941b4f32a8777f7ca28b5cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:caabefd6e79a76053bec45119248d8cfb6e13acd99926bbf043f55562e3ddb26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99057809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7256ce16d3214d0cda26dbfc74f9ef954c660d03d0383049dadb84dc950888e1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:37:31 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:37:31 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:37:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:37:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227ecf62471985d3668c29c8852cbd63a3693a702a132fc522cc87933e0df4f2`  
		Last Modified: Wed, 28 Oct 2026 01:37:43 GMT  
		Size: 69.2 MB (69202573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:db43da87e057c6e56112c1de3667593bd0676b21dcca835f27358191a9e321a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fd540a3e561c21eb4fcaaa2587616806fd4b9f99e8637f625e4af872122db1`

```dockerfile
```

-	Layers:
	-	`sha256:9c4d00fbc4abfc6f3f8ae5b6398008910c51d9e7322a4387c86b1bd502e5e7ce`  
		Last Modified: Wed, 28 Oct 2026 01:37:41 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7d4cafa454f224dc8d81643e989d597195fef1c52c456a437e1805180659a8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.5 MB (99472172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323dbc1dc02d712c78a08c9861f41d4882942093eb2122d57d9cd8cb2e929882`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:41:26 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:41:26 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:41:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:41:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae5fb0c3cdf89de50735b04baef390c5a4921607af4d633487b843929bd29c2`  
		Last Modified: Wed, 28 Oct 2026 01:41:38 GMT  
		Size: 69.3 MB (69258676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d29a4a468da8d8fe8d8fdc986179a7e1b5c35e92b20e0641318b571cbe5e9f43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:332ab4ffa3c68cfcc919396386536b75f8a6b6673d0e1e8ccd5d856949fd81b4`

```dockerfile
```

-	Layers:
	-	`sha256:c0ed147e5dba91aa5f27c5f125eaf9abec377a82b00085e96e53c37c9546e615`  
		Last Modified: Wed, 28 Oct 2026 01:41:36 GMT  
		Size: 9.4 KB (9404 bytes)  
		MIME: application/vnd.in-toto+json
