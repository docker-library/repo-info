## `azul-zulu:21-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:b6de630dc547a651fca0487ffc74aad3abe9663220042f5e6441926de70be669
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:216d330a9e1eebfa8b8c89fe64f0aff689e1165578686a5a27531d5a498c8db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104605950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6089d8e57c9d0ce46a3ab0dd81e8515ab07e60a13ef36af44ad2a689df903f8b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:42:04 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:42:04 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:42:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.11-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:42:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedaff04d8bc54d4df0dfeb03be3d71e33621d496ef2d819db7dbd65cd8e95a0`  
		Last Modified: Tue, 14 Jul 2026 01:42:16 GMT  
		Size: 74.8 MB (74825045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:eae0cdb819822ef50f14ee131677e2e169ff74c7499c468e911a87b6a32d8200
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:295be3ddeec2cc12b361545f54c1d7c8ce5a1b8a2ad15a1877abf1881b1f3800`

```dockerfile
```

-	Layers:
	-	`sha256:245a3e9adadb2d3455e13096e1e00d04d3b76b515cb55ef28cb756507c039426`  
		Last Modified: Tue, 14 Jul 2026 01:42:14 GMT  
		Size: 9.3 KB (9300 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:64f070f0e5fd03a8dd85d646c4fee3e1b248697ef75e040094734537ee0bc2cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104635908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179137f48c04b94349207d071a5eddfcf89226958fd83f168eb8024a6ca49b45`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:45:23 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:45:23 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:45:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.11-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:45:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be953cdfd62ef246e1bf646b3472c650c27fa03c87a8b59aa8d174e5c88e75da`  
		Last Modified: Tue, 14 Jul 2026 01:45:35 GMT  
		Size: 74.5 MB (74492203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5057a629a87f0ca5acd62f3d22e00bb1460d78b571ed1910b00b4353bd0298f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b16d327d721d6678f8ba00f08c9739b42c51eb9f298446f457ebc643cd1dd2f3`

```dockerfile
```

-	Layers:
	-	`sha256:f2f8e4bbf67e74a526ca14cef3df04b17820c9d358e54aebb19453360c07fbcd`  
		Last Modified: Tue, 14 Jul 2026 01:45:33 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
