<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20261018.0.612668`](#archlinuxbase-202610180612668)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20261018.0.612668`](#archlinuxbase-devel-202610180612668)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20261018.0.612668`](#archlinuxmultilib-devel-202610180612668)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:52dfbd5afb23a220d5ee92dafcb4c788d96c026ed04179890c23adef4c897fa0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:dfb01267da058e5d08ffdc543bf484c9b404655b0bac1d0201d972bf950cdfd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134183301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22c3194d74cdee63a036f904175005556c8b5c3044ed268e059438e2bc60bfd`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Wed, 21 Oct 2026 21:05:12 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 21:05:14 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Wed, 21 Oct 2026 21:05:14 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:05:14 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:7450fb54bb4fadc27bfa0277ecfbf489a6457ee6c2ae59d4300bde68610b6f48`  
		Last Modified: Mon, 19 Oct 2026 17:54:24 GMT  
		Size: 134.2 MB (134174595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62956096fa4d1a774d823a6a881611b258b5a0c6253a7c5be596b6826e40103f`  
		Last Modified: Wed, 21 Oct 2026 21:05:37 GMT  
		Size: 8.7 KB (8706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:baf91e62aa8f8e0b8e5b1993d90dd5b4d5833c86724a1a5312a07ac4078ca315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8ee74275deb120002b88954bf9e4090d0545b095570db99eae8adace86e063`

```dockerfile
```

-	Layers:
	-	`sha256:ec0a8040d9fbed0c7ac909b6facf0bf3107f917024731f604771b906464a139f`  
		Last Modified: Wed, 21 Oct 2026 21:05:37 GMT  
		Size: 8.2 MB (8242435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:862d5806c467ac55402f7c98112b276763f42746e073a88eee3347b9d895178c`  
		Last Modified: Wed, 21 Oct 2026 21:05:37 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20261018.0.612668`

```console
$ docker pull archlinux@sha256:52dfbd5afb23a220d5ee92dafcb4c788d96c026ed04179890c23adef4c897fa0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20261018.0.612668` - linux; amd64

```console
$ docker pull archlinux@sha256:dfb01267da058e5d08ffdc543bf484c9b404655b0bac1d0201d972bf950cdfd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134183301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22c3194d74cdee63a036f904175005556c8b5c3044ed268e059438e2bc60bfd`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Wed, 21 Oct 2026 21:05:12 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 21:05:14 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Wed, 21 Oct 2026 21:05:14 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:05:14 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:7450fb54bb4fadc27bfa0277ecfbf489a6457ee6c2ae59d4300bde68610b6f48`  
		Last Modified: Mon, 19 Oct 2026 17:54:24 GMT  
		Size: 134.2 MB (134174595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62956096fa4d1a774d823a6a881611b258b5a0c6253a7c5be596b6826e40103f`  
		Last Modified: Wed, 21 Oct 2026 21:05:37 GMT  
		Size: 8.7 KB (8706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20261018.0.612668` - unknown; unknown

```console
$ docker pull archlinux@sha256:baf91e62aa8f8e0b8e5b1993d90dd5b4d5833c86724a1a5312a07ac4078ca315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8ee74275deb120002b88954bf9e4090d0545b095570db99eae8adace86e063`

```dockerfile
```

-	Layers:
	-	`sha256:ec0a8040d9fbed0c7ac909b6facf0bf3107f917024731f604771b906464a139f`  
		Last Modified: Wed, 21 Oct 2026 21:05:37 GMT  
		Size: 8.2 MB (8242435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:862d5806c467ac55402f7c98112b276763f42746e073a88eee3347b9d895178c`  
		Last Modified: Wed, 21 Oct 2026 21:05:37 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:3cbf69d2d5958d6a294f3722c5668e6187c4df8e00fa27f72352f0bf83e495e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:2acfa2683d458b7803b7aa4ee3c139d2ba6922cd84666fcb7496a3a02fcc4c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.6 MB (308569882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44c728aafdd99305434b8593254164110e4f44cf2e35e7fa42d5cdb38d3ec11`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Wed, 21 Oct 2026 21:05:36 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 21:05:43 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Wed, 21 Oct 2026 21:05:43 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:05:43 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:2fa36ba04d1ebe963bd56848143685147186905057ce6874df2d1680bbf80247`  
		Last Modified: Mon, 19 Oct 2026 17:56:10 GMT  
		Size: 308.6 MB (308558390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865ed116d3d2a0b24529d3b0117f6f4e471ce9cba3865e0f5c3c3d441aeb3e42`  
		Last Modified: Wed, 21 Oct 2026 21:06:28 GMT  
		Size: 11.5 KB (11492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:a12b521bf2ed115c916c56f8be47bfc31fa392af223fdc9a282afd1ffd2afdb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14463776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e047cd401c01a7953989b9637a1b1b3e938262c5a7638a6c84aae6cabbfc1c`

```dockerfile
```

-	Layers:
	-	`sha256:511e903e5155657586aa62e1a91532be92cdd8f9ddcd0e1f548238af1d43413c`  
		Last Modified: Wed, 21 Oct 2026 21:06:29 GMT  
		Size: 14.5 MB (14452064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01cc7eda13e4bd3ddccbef1561fca5eb483af202a1873f2da7cb1744a051b770`  
		Last Modified: Wed, 21 Oct 2026 21:06:28 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20261018.0.612668`

```console
$ docker pull archlinux@sha256:3cbf69d2d5958d6a294f3722c5668e6187c4df8e00fa27f72352f0bf83e495e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20261018.0.612668` - linux; amd64

```console
$ docker pull archlinux@sha256:2acfa2683d458b7803b7aa4ee3c139d2ba6922cd84666fcb7496a3a02fcc4c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.6 MB (308569882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44c728aafdd99305434b8593254164110e4f44cf2e35e7fa42d5cdb38d3ec11`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Wed, 21 Oct 2026 21:05:36 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 21:05:43 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Wed, 21 Oct 2026 21:05:43 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:05:43 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:2fa36ba04d1ebe963bd56848143685147186905057ce6874df2d1680bbf80247`  
		Last Modified: Mon, 19 Oct 2026 17:56:10 GMT  
		Size: 308.6 MB (308558390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865ed116d3d2a0b24529d3b0117f6f4e471ce9cba3865e0f5c3c3d441aeb3e42`  
		Last Modified: Wed, 21 Oct 2026 21:06:28 GMT  
		Size: 11.5 KB (11492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20261018.0.612668` - unknown; unknown

```console
$ docker pull archlinux@sha256:a12b521bf2ed115c916c56f8be47bfc31fa392af223fdc9a282afd1ffd2afdb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14463776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e047cd401c01a7953989b9637a1b1b3e938262c5a7638a6c84aae6cabbfc1c`

```dockerfile
```

-	Layers:
	-	`sha256:511e903e5155657586aa62e1a91532be92cdd8f9ddcd0e1f548238af1d43413c`  
		Last Modified: Wed, 21 Oct 2026 21:06:29 GMT  
		Size: 14.5 MB (14452064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01cc7eda13e4bd3ddccbef1561fca5eb483af202a1873f2da7cb1744a051b770`  
		Last Modified: Wed, 21 Oct 2026 21:06:28 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:52dfbd5afb23a220d5ee92dafcb4c788d96c026ed04179890c23adef4c897fa0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:dfb01267da058e5d08ffdc543bf484c9b404655b0bac1d0201d972bf950cdfd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134183301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22c3194d74cdee63a036f904175005556c8b5c3044ed268e059438e2bc60bfd`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Wed, 21 Oct 2026 21:05:12 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 21:05:14 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Wed, 21 Oct 2026 21:05:14 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:05:14 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:7450fb54bb4fadc27bfa0277ecfbf489a6457ee6c2ae59d4300bde68610b6f48`  
		Last Modified: Mon, 19 Oct 2026 17:54:24 GMT  
		Size: 134.2 MB (134174595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62956096fa4d1a774d823a6a881611b258b5a0c6253a7c5be596b6826e40103f`  
		Last Modified: Wed, 21 Oct 2026 21:05:37 GMT  
		Size: 8.7 KB (8706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:baf91e62aa8f8e0b8e5b1993d90dd5b4d5833c86724a1a5312a07ac4078ca315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8ee74275deb120002b88954bf9e4090d0545b095570db99eae8adace86e063`

```dockerfile
```

-	Layers:
	-	`sha256:ec0a8040d9fbed0c7ac909b6facf0bf3107f917024731f604771b906464a139f`  
		Last Modified: Wed, 21 Oct 2026 21:05:37 GMT  
		Size: 8.2 MB (8242435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:862d5806c467ac55402f7c98112b276763f42746e073a88eee3347b9d895178c`  
		Last Modified: Wed, 21 Oct 2026 21:05:37 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:3d8a37349a01e541cf7045c8c0d86cc5ff9fa1f1ce6101bacd08d6d4eac43f94
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:057dcd9984540fb9eade94112bbfcf28d6a40775e174e496e2ba2c0a40e9d613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.0 MB (331048488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76c0498da7d513336e3995b46fbeec22141c96bfa88cd31580acca0480c83e4e`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Wed, 21 Oct 2026 21:05:42 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 21:05:50 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Wed, 21 Oct 2026 21:05:50 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:05:50 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:a66c03a0640de7b471a1dae2a762e4712b8e4e528d9123cadd99ce7bbe8e4546`  
		Last Modified: Mon, 19 Oct 2026 17:56:16 GMT  
		Size: 331.0 MB (331035760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eed2d186d9f9679b9dcbd9610394e8b054b5b8e8f264174006833bf546e09ea`  
		Last Modified: Wed, 21 Oct 2026 21:06:40 GMT  
		Size: 12.7 KB (12728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:e69e5c31dfea0f96eb6914a3cd576861a77f689293b05a4d8bc041e36afd46f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14734920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa92191410cb90963f7d78892ac91d98a0db710f76c503dfd447975563f689f0`

```dockerfile
```

-	Layers:
	-	`sha256:6a6b9cbf285ce6e1c8c37d926b10264251359edc9a7c5727925ac03ba396ec68`  
		Last Modified: Wed, 21 Oct 2026 21:06:41 GMT  
		Size: 14.7 MB (14723152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a36df8c3e775c4ae8fd2acfce0ef781604b59af4cee45c5f73be48a1e9e0052b`  
		Last Modified: Wed, 21 Oct 2026 21:06:40 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20261018.0.612668`

```console
$ docker pull archlinux@sha256:3d8a37349a01e541cf7045c8c0d86cc5ff9fa1f1ce6101bacd08d6d4eac43f94
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20261018.0.612668` - linux; amd64

```console
$ docker pull archlinux@sha256:057dcd9984540fb9eade94112bbfcf28d6a40775e174e496e2ba2c0a40e9d613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.0 MB (331048488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76c0498da7d513336e3995b46fbeec22141c96bfa88cd31580acca0480c83e4e`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Wed, 21 Oct 2026 21:05:42 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 21:05:50 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Wed, 21 Oct 2026 21:05:50 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:05:50 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:a66c03a0640de7b471a1dae2a762e4712b8e4e528d9123cadd99ce7bbe8e4546`  
		Last Modified: Mon, 19 Oct 2026 17:56:16 GMT  
		Size: 331.0 MB (331035760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eed2d186d9f9679b9dcbd9610394e8b054b5b8e8f264174006833bf546e09ea`  
		Last Modified: Wed, 21 Oct 2026 21:06:40 GMT  
		Size: 12.7 KB (12728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20261018.0.612668` - unknown; unknown

```console
$ docker pull archlinux@sha256:e69e5c31dfea0f96eb6914a3cd576861a77f689293b05a4d8bc041e36afd46f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14734920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa92191410cb90963f7d78892ac91d98a0db710f76c503dfd447975563f689f0`

```dockerfile
```

-	Layers:
	-	`sha256:6a6b9cbf285ce6e1c8c37d926b10264251359edc9a7c5727925ac03ba396ec68`  
		Last Modified: Wed, 21 Oct 2026 21:06:41 GMT  
		Size: 14.7 MB (14723152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a36df8c3e775c4ae8fd2acfce0ef781604b59af4cee45c5f73be48a1e9e0052b`  
		Last Modified: Wed, 21 Oct 2026 21:06:40 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
