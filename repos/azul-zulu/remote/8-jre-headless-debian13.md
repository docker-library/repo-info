## `azul-zulu:8-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:8d486d4d31de2eb4699df3d9f0fbcc53e2947cd6ac321c85c3027f087230d183
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:897cf1ce281b7058660317cb59580e77074d1f11bc892acb9013b194ddc96645
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77052164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f6ccae1efd90788c8cff654eaca6d3bfbff1574b9d33ac4da49420e567d1312`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:21:09 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:21:09 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:21:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Mon, 09 Nov 2026 20:21:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d168638ed8ccaf0e366b7edc9d2a97b02791d931bf1e4b0e31ed4222ebb31d6b`  
		Last Modified: Mon, 09 Nov 2026 20:21:18 GMT  
		Size: 47.2 MB (47196032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fa725a36fef59952f239eb6670ce548d32b76ff7d0f18a268862e98891aabaf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6af0f3e195a07c18471833ded13b608c819c4833194c7a503ec68c2246799a`

```dockerfile
```

-	Layers:
	-	`sha256:e407fd2b88a296d04a88e6dad1935a376343e961c5364138d732080b8f9fe82c`  
		Last Modified: Mon, 09 Nov 2026 20:21:16 GMT  
		Size: 9.3 KB (9285 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:9660efc0f9de8e44823855b6ac3b359a9b43976b7db61eff78e2e541a3260475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77634518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f24c3033547dc1461708f38df3d47583cb80a1e1f706bb0c1f59ac9a7dbe13`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:22:37 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:22:37 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:22:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Mon, 09 Nov 2026 20:22:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43107cabe0a63b5872c1bfd2daf7523d291fe4218ff555aa24b83e6a22d7bdd6`  
		Last Modified: Mon, 09 Nov 2026 20:22:46 GMT  
		Size: 47.4 MB (47420481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4514b941417af5d6439141a5c0e6edd233469cbbb78bd6bea4892e892cc39608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb28f4fb76bc9f0b8172f042d30f961fbf7bb9807ac39d1bc3e53609c8bf9da`

```dockerfile
```

-	Layers:
	-	`sha256:4c2bdf4c35d0709e92bdaccdfd5579ef89b24b4d7ee39dc802e82250aa5d5b1b`  
		Last Modified: Mon, 09 Nov 2026 20:22:45 GMT  
		Size: 9.4 KB (9389 bytes)  
		MIME: application/vnd.in-toto+json
