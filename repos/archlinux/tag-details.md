<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20260830.0.582275`](#archlinuxbase-202608300582275)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20260830.0.582275`](#archlinuxbase-devel-202608300582275)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20260830.0.582275`](#archlinuxmultilib-devel-202608300582275)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:82b1b08faae9d61e3e7e13d562f4d09114d939105b0d59ff34140f3bd418593a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:818793c894d94534c22f2149154a39ebaee57e4e67321023b0866a1d5722036c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133264561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091a50ca7950b41c2f050635ef67425b006afa7509798c13d8699b64a9e4ded4`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.version=20260830.0.582275
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.created=2026-08-30T00:09:25+00:00
# Mon, 31 Aug 2026 19:08:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 31 Aug 2026 19:08:15 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260830.0.582275' /etc/os-release # buildkit
# Mon, 31 Aug 2026 19:08:15 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:08:15 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:c9ee456ee0546acb0a06426d838530f1ac8377834c98a201fa0daaabe224bdef`  
		Last Modified: Mon, 31 Aug 2026 19:08:39 GMT  
		Size: 133.3 MB (133255824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2610f4936b037fc4846d428d56ebdd18636cff25d5635ed714d179958e1ea93`  
		Last Modified: Mon, 31 Aug 2026 19:08:36 GMT  
		Size: 8.7 KB (8737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:df74588c3d85e6ad9cdfaa574e345b0623d115ff7046f253d8ceb94cd5165dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8212972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f79e2be57e4a67fd09acc939551013f7ac2ccaa9e7d0df78e05a138cdfb597`

```dockerfile
```

-	Layers:
	-	`sha256:0b97c74c8f83ea7fa713a5fecd5797e79ca8d00946a6d91b03acc3fe68b10e9a`  
		Last Modified: Mon, 31 Aug 2026 19:08:37 GMT  
		Size: 8.2 MB (8201043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:815e29fe391c30dd8cb8c2563713817536bacdb4af4f43d1b9a2a0f86c121822`  
		Last Modified: Mon, 31 Aug 2026 19:08:36 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20260830.0.582275`

```console
$ docker pull archlinux@sha256:82b1b08faae9d61e3e7e13d562f4d09114d939105b0d59ff34140f3bd418593a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20260830.0.582275` - linux; amd64

```console
$ docker pull archlinux@sha256:818793c894d94534c22f2149154a39ebaee57e4e67321023b0866a1d5722036c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133264561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091a50ca7950b41c2f050635ef67425b006afa7509798c13d8699b64a9e4ded4`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.version=20260830.0.582275
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.created=2026-08-30T00:09:25+00:00
# Mon, 31 Aug 2026 19:08:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 31 Aug 2026 19:08:15 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260830.0.582275' /etc/os-release # buildkit
# Mon, 31 Aug 2026 19:08:15 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:08:15 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:c9ee456ee0546acb0a06426d838530f1ac8377834c98a201fa0daaabe224bdef`  
		Last Modified: Mon, 31 Aug 2026 19:08:39 GMT  
		Size: 133.3 MB (133255824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2610f4936b037fc4846d428d56ebdd18636cff25d5635ed714d179958e1ea93`  
		Last Modified: Mon, 31 Aug 2026 19:08:36 GMT  
		Size: 8.7 KB (8737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20260830.0.582275` - unknown; unknown

```console
$ docker pull archlinux@sha256:df74588c3d85e6ad9cdfaa574e345b0623d115ff7046f253d8ceb94cd5165dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8212972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f79e2be57e4a67fd09acc939551013f7ac2ccaa9e7d0df78e05a138cdfb597`

```dockerfile
```

-	Layers:
	-	`sha256:0b97c74c8f83ea7fa713a5fecd5797e79ca8d00946a6d91b03acc3fe68b10e9a`  
		Last Modified: Mon, 31 Aug 2026 19:08:37 GMT  
		Size: 8.2 MB (8201043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:815e29fe391c30dd8cb8c2563713817536bacdb4af4f43d1b9a2a0f86c121822`  
		Last Modified: Mon, 31 Aug 2026 19:08:36 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:84cd9ef000b3cff245ec028e87965b84724f4bf1cc63fc2741ba927b88515ed6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:694da1fce635e3a14d90751941b08f02c500e8724682f7a00768e7152251ec34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307375855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f3b580f2356f3a680c56316f8faa1b5a6ba01dec7b6be4c785d05c2a6c66bc`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.version=20260830.0.582275
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.created=2026-08-30T00:09:25+00:00
# Mon, 31 Aug 2026 19:09:14 GMT
COPY /rootfs/ / # buildkit
# Mon, 31 Aug 2026 19:09:21 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260830.0.582275' /etc/os-release # buildkit
# Mon, 31 Aug 2026 19:09:21 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:09:21 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:d358d950d96e62d5058be1567322817d756f256215f6e2e562c68e874054285a`  
		Last Modified: Mon, 31 Aug 2026 19:10:14 GMT  
		Size: 307.4 MB (307364355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7302c1a4e9763f8cb406472bb224f20d01914798f1ecbbfb3d5617662ccbbc4b`  
		Last Modified: Mon, 31 Aug 2026 19:10:07 GMT  
		Size: 11.5 KB (11500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:7604f16f15e81e9689d091b61c772bfa8cd04e393cb770da96b50b6b8be10614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14421753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396431c1a6042f64e6594a97fe0840fcfa3bf226fdc689739f9f9b2a41c94ac9`

```dockerfile
```

-	Layers:
	-	`sha256:29424ee4397cce6b52acaf2dadd1811c1ca89fa3ed2c35b969c071c218c9c389`  
		Last Modified: Mon, 31 Aug 2026 19:10:07 GMT  
		Size: 14.4 MB (14410041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82c6f699e1a507323918acb189b99331b04a948facc72005a0579ff6cd0ac730`  
		Last Modified: Mon, 31 Aug 2026 19:10:07 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20260830.0.582275`

```console
$ docker pull archlinux@sha256:84cd9ef000b3cff245ec028e87965b84724f4bf1cc63fc2741ba927b88515ed6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260830.0.582275` - linux; amd64

```console
$ docker pull archlinux@sha256:694da1fce635e3a14d90751941b08f02c500e8724682f7a00768e7152251ec34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307375855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f3b580f2356f3a680c56316f8faa1b5a6ba01dec7b6be4c785d05c2a6c66bc`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.version=20260830.0.582275
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.created=2026-08-30T00:09:25+00:00
# Mon, 31 Aug 2026 19:09:14 GMT
COPY /rootfs/ / # buildkit
# Mon, 31 Aug 2026 19:09:21 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260830.0.582275' /etc/os-release # buildkit
# Mon, 31 Aug 2026 19:09:21 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:09:21 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:d358d950d96e62d5058be1567322817d756f256215f6e2e562c68e874054285a`  
		Last Modified: Mon, 31 Aug 2026 19:10:14 GMT  
		Size: 307.4 MB (307364355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7302c1a4e9763f8cb406472bb224f20d01914798f1ecbbfb3d5617662ccbbc4b`  
		Last Modified: Mon, 31 Aug 2026 19:10:07 GMT  
		Size: 11.5 KB (11500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260830.0.582275` - unknown; unknown

```console
$ docker pull archlinux@sha256:7604f16f15e81e9689d091b61c772bfa8cd04e393cb770da96b50b6b8be10614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14421753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396431c1a6042f64e6594a97fe0840fcfa3bf226fdc689739f9f9b2a41c94ac9`

```dockerfile
```

-	Layers:
	-	`sha256:29424ee4397cce6b52acaf2dadd1811c1ca89fa3ed2c35b969c071c218c9c389`  
		Last Modified: Mon, 31 Aug 2026 19:10:07 GMT  
		Size: 14.4 MB (14410041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82c6f699e1a507323918acb189b99331b04a948facc72005a0579ff6cd0ac730`  
		Last Modified: Mon, 31 Aug 2026 19:10:07 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:82b1b08faae9d61e3e7e13d562f4d09114d939105b0d59ff34140f3bd418593a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:818793c894d94534c22f2149154a39ebaee57e4e67321023b0866a1d5722036c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133264561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091a50ca7950b41c2f050635ef67425b006afa7509798c13d8699b64a9e4ded4`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.version=20260830.0.582275
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 31 Aug 2026 19:08:12 GMT
LABEL org.opencontainers.image.created=2026-08-30T00:09:25+00:00
# Mon, 31 Aug 2026 19:08:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 31 Aug 2026 19:08:15 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260830.0.582275' /etc/os-release # buildkit
# Mon, 31 Aug 2026 19:08:15 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:08:15 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:c9ee456ee0546acb0a06426d838530f1ac8377834c98a201fa0daaabe224bdef`  
		Last Modified: Mon, 31 Aug 2026 19:08:39 GMT  
		Size: 133.3 MB (133255824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2610f4936b037fc4846d428d56ebdd18636cff25d5635ed714d179958e1ea93`  
		Last Modified: Mon, 31 Aug 2026 19:08:36 GMT  
		Size: 8.7 KB (8737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:df74588c3d85e6ad9cdfaa574e345b0623d115ff7046f253d8ceb94cd5165dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8212972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f79e2be57e4a67fd09acc939551013f7ac2ccaa9e7d0df78e05a138cdfb597`

```dockerfile
```

-	Layers:
	-	`sha256:0b97c74c8f83ea7fa713a5fecd5797e79ca8d00946a6d91b03acc3fe68b10e9a`  
		Last Modified: Mon, 31 Aug 2026 19:08:37 GMT  
		Size: 8.2 MB (8201043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:815e29fe391c30dd8cb8c2563713817536bacdb4af4f43d1b9a2a0f86c121822`  
		Last Modified: Mon, 31 Aug 2026 19:08:36 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:479c5aba4dcafdb86e12addeb215f00b432abd67962fe5c8a492ad6ece219618
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:d2d668c251d26f31506404aa6a9255b21e3452769350db5ed5d227d8ab3a4058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.8 MB (329846589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b50d363a58223f35f20df286e5489e9dd2e5e0bf35a6be78267e016d60d04f8`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.version=20260830.0.582275
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.created=2026-08-30T00:09:25+00:00
# Mon, 31 Aug 2026 19:10:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 31 Aug 2026 19:10:58 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260830.0.582275' /etc/os-release # buildkit
# Mon, 31 Aug 2026 19:10:58 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:10:58 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:8297d5615bf039415c6c3d0d43ce9980476ec265d84410c702354c1ba7c28b90`  
		Last Modified: Mon, 31 Aug 2026 19:11:57 GMT  
		Size: 329.8 MB (329833856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58ceba07a5062f1e99d9c80e9bbb0d7b392d8757378babebf1aba9c55467df7`  
		Last Modified: Mon, 31 Aug 2026 19:11:47 GMT  
		Size: 12.7 KB (12733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:6e86a413863412075040ff6864d9856a60f02a308f1e483c6e3c979125fd9fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14692897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50213a011d5ac54aa0cbd643b308f095ca4a459e3afd6037d63e5e950257a03e`

```dockerfile
```

-	Layers:
	-	`sha256:d5543c9f792abf483e0ca5de2e617bc58ec569fc1117679dc31c8a9f5c7948cd`  
		Last Modified: Mon, 31 Aug 2026 19:11:48 GMT  
		Size: 14.7 MB (14681129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:417b98f984bac0d5eaa11116ff037f47947d9c9352e45c3dc2962f49d90d00a5`  
		Last Modified: Mon, 31 Aug 2026 19:11:47 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20260830.0.582275`

```console
$ docker pull archlinux@sha256:479c5aba4dcafdb86e12addeb215f00b432abd67962fe5c8a492ad6ece219618
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260830.0.582275` - linux; amd64

```console
$ docker pull archlinux@sha256:d2d668c251d26f31506404aa6a9255b21e3452769350db5ed5d227d8ab3a4058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.8 MB (329846589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b50d363a58223f35f20df286e5489e9dd2e5e0bf35a6be78267e016d60d04f8`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.version=20260830.0.582275
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.created=2026-08-30T00:09:25+00:00
# Mon, 31 Aug 2026 19:10:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 31 Aug 2026 19:10:58 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260830.0.582275' /etc/os-release # buildkit
# Mon, 31 Aug 2026 19:10:58 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:10:58 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:8297d5615bf039415c6c3d0d43ce9980476ec265d84410c702354c1ba7c28b90`  
		Last Modified: Mon, 31 Aug 2026 19:11:57 GMT  
		Size: 329.8 MB (329833856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58ceba07a5062f1e99d9c80e9bbb0d7b392d8757378babebf1aba9c55467df7`  
		Last Modified: Mon, 31 Aug 2026 19:11:47 GMT  
		Size: 12.7 KB (12733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260830.0.582275` - unknown; unknown

```console
$ docker pull archlinux@sha256:6e86a413863412075040ff6864d9856a60f02a308f1e483c6e3c979125fd9fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14692897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50213a011d5ac54aa0cbd643b308f095ca4a459e3afd6037d63e5e950257a03e`

```dockerfile
```

-	Layers:
	-	`sha256:d5543c9f792abf483e0ca5de2e617bc58ec569fc1117679dc31c8a9f5c7948cd`  
		Last Modified: Mon, 31 Aug 2026 19:11:48 GMT  
		Size: 14.7 MB (14681129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:417b98f984bac0d5eaa11116ff037f47947d9c9352e45c3dc2962f49d90d00a5`  
		Last Modified: Mon, 31 Aug 2026 19:11:47 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
