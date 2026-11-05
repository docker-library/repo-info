## `azul-zulu:8-headless`

```console
$ docker pull azul-zulu@sha256:f707a6a7e10146331030fb5eb9bf35ec5772881ad65e0a94814858c697c4786c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:fa5ca4dda854a1088080484237dda739c84363652da45ae806c526930fc7a1f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.5 MB (88472927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c8d594a80ba52df87799ada0bfe45fc545c12b1f90bf07108b7050e4f5be698`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:34:04 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:34:04 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:34:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:34:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bdf9bd5c878e365e769c01ca9900acfb9cb86d058df26cca531b48e870fd225`  
		Last Modified: Thu, 05 Nov 2026 07:34:13 GMT  
		Size: 58.6 MB (58616795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:aea42a877505162eae481c9562951ae45a65398c9907ce48b79254932d1fe3a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bcf5177fea51d756ea4d1ca9c6733dd39d45160333ab9bc9c77f94acc7992ad`

```dockerfile
```

-	Layers:
	-	`sha256:5bc0b6e54ff17755629686d3063a0d376cea96f24ef680298011cbf1b50a9710`  
		Last Modified: Thu, 05 Nov 2026 07:34:12 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d594efeae3837c8cf0043da55c7460ff681ed48706dd7d94a372b3d4f165cc6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.2 MB (89162960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf02e74b4ad242c61671aec4bbf5a3569e79be6b8f63323d24915163cd3462f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:37:20 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:37:20 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:37:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:37:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9883e7821dd9691b05a512d6d9e9d9ad24958c0ed9dbc46088a3da29219454ff`  
		Last Modified: Thu, 05 Nov 2026 07:37:30 GMT  
		Size: 58.9 MB (58948923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:def20102528584673152542d93cefb1a1313e6607e4eb782c6b85fd6865bf387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c69e7e68a439cddfc97be07d25409182072eadc4dea012909d704573d976430`

```dockerfile
```

-	Layers:
	-	`sha256:c01f2e5245d5d530730f7eb344b1e69f6addc8c8bbcf1a8cf2ed21476acf2b2e`  
		Last Modified: Thu, 05 Nov 2026 07:37:28 GMT  
		Size: 9.4 KB (9365 bytes)  
		MIME: application/vnd.in-toto+json
