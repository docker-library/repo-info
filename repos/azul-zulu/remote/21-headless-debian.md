## `azul-zulu:21-headless-debian`

```console
$ docker pull azul-zulu@sha256:b53963e0281dd5c7bc53182a2984417a364f3987df4ab50e00df588a3721f572
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8d8716b134b1ec07f5b6ae99902f5143ca7e6e3c3d3ec727b9012d100f550f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.0 MB (192958777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e0630e4b47e8c995168a1ea358c0f3fcac200c77aa2a37328520eb932eec21`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:36:27 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:36:27 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:36:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:36:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 05 Nov 2026 07:36:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c70c4f58443dd9b7392ec2c14ad72b7ff50a0397b7394ac95d14eda99860a3c`  
		Last Modified: Thu, 05 Nov 2026 07:36:44 GMT  
		Size: 163.1 MB (163102645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:75565140acc32279073763ec919c26143bf387509df3f198bdae81c0939dfad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0e4e2054d7bed4b135e17f55a187c1a0c6f18cc93c14d1d32c69f3b700f424`

```dockerfile
```

-	Layers:
	-	`sha256:761b223455b74b19e937a08eeeaba960470d717f0fc47ad0b1a3d09487f0fb80`  
		Last Modified: Thu, 05 Nov 2026 07:36:39 GMT  
		Size: 9.3 KB (9314 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0bd43a0092fa51636911aed6afe6e8886b4d7911c31fb99018865eedc346e2c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192637956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25b9f3bdec9886d4353d0ff0d191a2622f8afbff2b03b44aad4c19a06b621317`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:03 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:40:03 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:40:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:40:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 05 Nov 2026 07:40:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1185293876925cfafd71e2bf0d71236860e2296989585bf04b99c76b6af71ed`  
		Last Modified: Thu, 05 Nov 2026 07:40:21 GMT  
		Size: 162.4 MB (162423919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fd68fcc13704a1482071c7928edb491b24eb5da3601a41977ecb703af695ca21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f39148746c6b995e17c7756225838c98c138b8d199b2898847ee127d9c1121`

```dockerfile
```

-	Layers:
	-	`sha256:513005a3709d744e1912ad76e2cd9762f47acc3ffc652c67ae85da1f507edefc`  
		Last Modified: Thu, 05 Nov 2026 07:40:17 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json
