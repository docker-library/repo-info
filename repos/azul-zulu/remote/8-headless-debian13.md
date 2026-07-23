## `azul-zulu:8-headless-debian13`

```console
$ docker pull azul-zulu@sha256:126bf87de02d7b06856eecdfb6afa1b20b69414320a884873f1d574f222a8437
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:bbddf27f6dd6c926f40a3d55d3347a2b1e3db42c7b78678c1113d30b4279e85a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.4 MB (88369745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90988a6156a8c24f3891879332d651aabd2e14770bf9e8a82235cf50dac15f6d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:28:15 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:15 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.502-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:28:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0787f8a7693d5ba8c68145134e6345882df74fb5cb25ffd201a4a1aaaa8a0b36`  
		Last Modified: Thu, 23 Jul 2026 22:28:24 GMT  
		Size: 58.6 MB (58588840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:01ac79e16a2c63a5a83f80bd7ce355ff7f69f34b12483b9874089d14cca3b43d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff6ea661a10ba7e937c4b86880037a94e23cd06dcea19d9f61cfcc5bab4835c`

```dockerfile
```

-	Layers:
	-	`sha256:2ed213b4d3b2eb406ed6059fbdcbff03428deb023ac99cfd42c4760bdca49f05`  
		Last Modified: Thu, 23 Jul 2026 22:28:22 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:93d3d937ffe85f6e9469b8d867edd8011a6acaa81513149a96198972c68b416c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89066848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07e5e7df30a9e3adbbf1f2c04561abc9e5c88b495c8db286e62d8aebcb5d516`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:29:11 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:11 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.502-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:29:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7cdc09530c95ff54c1ef3019de557996ded2969b0e513c0e520c5ba0a544acc`  
		Last Modified: Thu, 23 Jul 2026 22:29:20 GMT  
		Size: 58.9 MB (58923143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:aa822d9219309fe54b0a957b6ce34da7f8998dc587c4f5d206715dc8d829cecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61795d4b7b3c4513a7f2ca6dd6046d2d62757886af4548c7fa13bcf63cea8ea3`

```dockerfile
```

-	Layers:
	-	`sha256:429f74405c80fa1552bd82ca6deab92289dedb8e3ae9db01ee6926315a43e9f0`  
		Last Modified: Thu, 23 Jul 2026 22:29:19 GMT  
		Size: 9.4 KB (9365 bytes)  
		MIME: application/vnd.in-toto+json
