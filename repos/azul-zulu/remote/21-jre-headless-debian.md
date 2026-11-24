## `azul-zulu:21-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:4709e58194962c7e057ca2ddc74583729ed939b6ea621b21201136d130038363
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1800e4464bfb40fd5031486712772050499c8c2f8ff266112842dccd82a578ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104369116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e4a0ee92299726103bd98e92205ebef0f13a564fcb683113c2694bab4eea934`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:37:57 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:37:57 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:37:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:37:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed9424957b538609f7150a7921f916550173ea23aa08ff500dbf08d9f073774`  
		Last Modified: Tue, 24 Nov 2026 04:38:09 GMT  
		Size: 74.5 MB (74526934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:305c3a35c2cd1bb36ef55368f8f0b14e6e1f72237ffff035f38485f9918b608c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea144d80ea4e1e427e3737e9157a69c29e9f5906764cb7cef18931abf8029c94`

```dockerfile
```

-	Layers:
	-	`sha256:e0c1c2007137d4edd02192f272c9e5912ddca4643fc0a674f9eacc26eeadf9ff`  
		Last Modified: Tue, 24 Nov 2026 04:38:07 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b6522aa2d3781714efa485c4b5d4a7801ba22add28f7b5a0628705ec2f04d74e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104393982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4131c060379d71752549b08b30bc15d5874e5629b3c02f6bdd2ce47992e8ec95`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:42:02 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:42:02 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:42:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:42:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d94641e5af0e141f3eaa9f9d1b6072b120221bf59cfbe90c21433474957e8ac4`  
		Last Modified: Tue, 24 Nov 2026 04:42:14 GMT  
		Size: 74.2 MB (74195948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:054eab2558bf6b4e4e28f9000b7855c855830effa3463dca8e0c0d5fd3543590
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e234d0a9188e32a4e5f00c36d38ecf7e28c4652ed39c3ff22a39876274e1cdf1`

```dockerfile
```

-	Layers:
	-	`sha256:3cd18d1064de8f850d21596715ccb448c65f69a7ac12bd63167f48112e0923b2`  
		Last Modified: Tue, 24 Nov 2026 04:42:12 GMT  
		Size: 9.4 KB (9414 bytes)  
		MIME: application/vnd.in-toto+json
