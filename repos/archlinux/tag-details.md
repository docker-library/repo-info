<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20261101.0.620205`](#archlinuxbase-202611010620205)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20261101.0.620205`](#archlinuxbase-devel-202611010620205)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20261101.0.620205`](#archlinuxmultilib-devel-202611010620205)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:ece6c971fec3c532fd508bce299a446deaf469feecbfe7c353e995bc1a5e7bba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:42217d5f09e11d3fe7ad3b309b7fde891d458464dab5d674e629073765610427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134251498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b9c2f3a1a72268cab659ab3f20956bb6ce730e8dd716fe90754ba03a8870e19`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Mon, 02 Nov 2026 20:07:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 20:07:09 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Mon, 02 Nov 2026 20:07:09 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:07:09 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:3f244b8f0c1879e8b146b9f4da81fbad49a1de2731bd96155d3bf9c4fd00f0e5`  
		Last Modified: Mon, 02 Nov 2026 20:07:34 GMT  
		Size: 134.2 MB (134242784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78875d6118c2f9302fe11ab479d1f15b4246b1decd0aff9ffbe74faedd3a1d43`  
		Last Modified: Mon, 02 Nov 2026 20:07:30 GMT  
		Size: 8.7 KB (8714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:24ca2138e3f4305cb36d4d567d76f8730a9d7a4f2645f069ca2b057586a2421d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c582409dbbd00b78fa77ae28d1a8f396d462c27106e9aa593fd48d0eb2d7281c`

```dockerfile
```

-	Layers:
	-	`sha256:c0f7f3b3db73cfcdb0cc87f7186c18e846cc0149ca5d3f2d1591c3cf9aecd8eb`  
		Last Modified: Mon, 02 Nov 2026 20:07:31 GMT  
		Size: 8.2 MB (8242563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f33aa6b59c70c7531a8693a813d993aad83d01cbea90536321f9f1532af51c69`  
		Last Modified: Mon, 02 Nov 2026 20:07:31 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20261101.0.620205`

```console
$ docker pull archlinux@sha256:ece6c971fec3c532fd508bce299a446deaf469feecbfe7c353e995bc1a5e7bba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20261101.0.620205` - linux; amd64

```console
$ docker pull archlinux@sha256:42217d5f09e11d3fe7ad3b309b7fde891d458464dab5d674e629073765610427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134251498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b9c2f3a1a72268cab659ab3f20956bb6ce730e8dd716fe90754ba03a8870e19`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Mon, 02 Nov 2026 20:07:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 20:07:09 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Mon, 02 Nov 2026 20:07:09 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:07:09 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:3f244b8f0c1879e8b146b9f4da81fbad49a1de2731bd96155d3bf9c4fd00f0e5`  
		Last Modified: Mon, 02 Nov 2026 20:07:34 GMT  
		Size: 134.2 MB (134242784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78875d6118c2f9302fe11ab479d1f15b4246b1decd0aff9ffbe74faedd3a1d43`  
		Last Modified: Mon, 02 Nov 2026 20:07:30 GMT  
		Size: 8.7 KB (8714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20261101.0.620205` - unknown; unknown

```console
$ docker pull archlinux@sha256:24ca2138e3f4305cb36d4d567d76f8730a9d7a4f2645f069ca2b057586a2421d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c582409dbbd00b78fa77ae28d1a8f396d462c27106e9aa593fd48d0eb2d7281c`

```dockerfile
```

-	Layers:
	-	`sha256:c0f7f3b3db73cfcdb0cc87f7186c18e846cc0149ca5d3f2d1591c3cf9aecd8eb`  
		Last Modified: Mon, 02 Nov 2026 20:07:31 GMT  
		Size: 8.2 MB (8242563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f33aa6b59c70c7531a8693a813d993aad83d01cbea90536321f9f1532af51c69`  
		Last Modified: Mon, 02 Nov 2026 20:07:31 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:767de6eaa40dcfeda5263a48737ea03a782caabdf3a403b6e6a203c7fd333681
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:3942e1ff7ee3c41bdbcb6647ed850e199caae0c56dd18a4d3fa9bb9f3d2311f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309198194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9157a1811c15ae8ff1e6cf3fe3cc310285c0440c5b5781a4b9766fbb8bb55831`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Mon, 02 Nov 2026 20:08:09 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 20:08:16 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Mon, 02 Nov 2026 20:08:16 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:08:16 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:4d0caf509dc94a4de2013706a77dc7c216de7ce218d516abd94ab8a76d65dd76`  
		Last Modified: Mon, 02 Nov 2026 20:09:09 GMT  
		Size: 309.2 MB (309186688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f04ed6cad425f8d99289e2e31197a12554626f9445453d97d2ff50865b5adc9`  
		Last Modified: Mon, 02 Nov 2026 20:09:03 GMT  
		Size: 11.5 KB (11506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:3dfdad198b21ce26c4535a2b275cf5956eaf6a50d0c5499c8bf4d220b004fd11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14476748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3414ab630d909ff7c53318e8c3c026edbf7759a09650e3a8a44a8686fbcbb43`

```dockerfile
```

-	Layers:
	-	`sha256:55d7d37a13ad0981ff210b23c657e2708da99239b2352fe5006284680288ce45`  
		Last Modified: Mon, 02 Nov 2026 20:09:04 GMT  
		Size: 14.5 MB (14465036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54d9a61701fbf72e1f1e1ebd174e3fdf5012312e3a190c4e767d970257a663e8`  
		Last Modified: Mon, 02 Nov 2026 20:09:03 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20261101.0.620205`

```console
$ docker pull archlinux@sha256:767de6eaa40dcfeda5263a48737ea03a782caabdf3a403b6e6a203c7fd333681
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20261101.0.620205` - linux; amd64

```console
$ docker pull archlinux@sha256:3942e1ff7ee3c41bdbcb6647ed850e199caae0c56dd18a4d3fa9bb9f3d2311f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309198194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9157a1811c15ae8ff1e6cf3fe3cc310285c0440c5b5781a4b9766fbb8bb55831`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Mon, 02 Nov 2026 20:08:09 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 20:08:16 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Mon, 02 Nov 2026 20:08:16 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:08:16 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:4d0caf509dc94a4de2013706a77dc7c216de7ce218d516abd94ab8a76d65dd76`  
		Last Modified: Mon, 02 Nov 2026 20:09:09 GMT  
		Size: 309.2 MB (309186688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f04ed6cad425f8d99289e2e31197a12554626f9445453d97d2ff50865b5adc9`  
		Last Modified: Mon, 02 Nov 2026 20:09:03 GMT  
		Size: 11.5 KB (11506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20261101.0.620205` - unknown; unknown

```console
$ docker pull archlinux@sha256:3dfdad198b21ce26c4535a2b275cf5956eaf6a50d0c5499c8bf4d220b004fd11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14476748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3414ab630d909ff7c53318e8c3c026edbf7759a09650e3a8a44a8686fbcbb43`

```dockerfile
```

-	Layers:
	-	`sha256:55d7d37a13ad0981ff210b23c657e2708da99239b2352fe5006284680288ce45`  
		Last Modified: Mon, 02 Nov 2026 20:09:04 GMT  
		Size: 14.5 MB (14465036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54d9a61701fbf72e1f1e1ebd174e3fdf5012312e3a190c4e767d970257a663e8`  
		Last Modified: Mon, 02 Nov 2026 20:09:03 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:ece6c971fec3c532fd508bce299a446deaf469feecbfe7c353e995bc1a5e7bba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:42217d5f09e11d3fe7ad3b309b7fde891d458464dab5d674e629073765610427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134251498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b9c2f3a1a72268cab659ab3f20956bb6ce730e8dd716fe90754ba03a8870e19`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Mon, 02 Nov 2026 20:07:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 20:07:09 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Mon, 02 Nov 2026 20:07:09 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:07:09 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:3f244b8f0c1879e8b146b9f4da81fbad49a1de2731bd96155d3bf9c4fd00f0e5`  
		Last Modified: Mon, 02 Nov 2026 20:07:34 GMT  
		Size: 134.2 MB (134242784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78875d6118c2f9302fe11ab479d1f15b4246b1decd0aff9ffbe74faedd3a1d43`  
		Last Modified: Mon, 02 Nov 2026 20:07:30 GMT  
		Size: 8.7 KB (8714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:24ca2138e3f4305cb36d4d567d76f8730a9d7a4f2645f069ca2b057586a2421d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c582409dbbd00b78fa77ae28d1a8f396d462c27106e9aa593fd48d0eb2d7281c`

```dockerfile
```

-	Layers:
	-	`sha256:c0f7f3b3db73cfcdb0cc87f7186c18e846cc0149ca5d3f2d1591c3cf9aecd8eb`  
		Last Modified: Mon, 02 Nov 2026 20:07:31 GMT  
		Size: 8.2 MB (8242563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f33aa6b59c70c7531a8693a813d993aad83d01cbea90536321f9f1532af51c69`  
		Last Modified: Mon, 02 Nov 2026 20:07:31 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:50cd3611de812e5ce83ba3b379cf1d685a0c20a858676e08bcf384a33f6ceff5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:974d6a365eb404e460d1893bfac76b6f4ae3e3bf47a9461f5abda9f7aa002e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331682724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040095d20177152ab0612cdca2438052c5942f6ccf4777f50d564ccb56cf5462`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Mon, 02 Nov 2026 20:10:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 20:10:24 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Mon, 02 Nov 2026 20:10:24 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:24 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:e9c9a06dcd01c8e14874c724c3deb3ffc5a48016be56d792d2454489b653fcdd`  
		Last Modified: Mon, 02 Nov 2026 20:11:20 GMT  
		Size: 331.7 MB (331670001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beaba403ffc578fa3d2f4fcfee825bf17ae6ec29646f073a86315b9a9db1709`  
		Last Modified: Mon, 02 Nov 2026 20:11:14 GMT  
		Size: 12.7 KB (12723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:508ecd6c11063de7ea857a47b9738f617cc4b11fde8d9219d476ff6ebbee90b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14747890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f781ae56b9e4864550d912a0ffdacc2f3054d5b95a90f158aef7b4e4f42b03`

```dockerfile
```

-	Layers:
	-	`sha256:ea064b84ce9c223ff02a3b3f8da6240297570c255d6360f5cda71a0111e494ed`  
		Last Modified: Mon, 02 Nov 2026 20:11:14 GMT  
		Size: 14.7 MB (14736124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8934673630fff91dde13dbecca9c91d28df7fc59864973d12b15b8e4b4b4ad80`  
		Last Modified: Mon, 02 Nov 2026 20:11:14 GMT  
		Size: 11.8 KB (11766 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20261101.0.620205`

```console
$ docker pull archlinux@sha256:50cd3611de812e5ce83ba3b379cf1d685a0c20a858676e08bcf384a33f6ceff5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20261101.0.620205` - linux; amd64

```console
$ docker pull archlinux@sha256:974d6a365eb404e460d1893bfac76b6f4ae3e3bf47a9461f5abda9f7aa002e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331682724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040095d20177152ab0612cdca2438052c5942f6ccf4777f50d564ccb56cf5462`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Mon, 02 Nov 2026 20:10:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 20:10:24 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Mon, 02 Nov 2026 20:10:24 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:24 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:e9c9a06dcd01c8e14874c724c3deb3ffc5a48016be56d792d2454489b653fcdd`  
		Last Modified: Mon, 02 Nov 2026 20:11:20 GMT  
		Size: 331.7 MB (331670001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beaba403ffc578fa3d2f4fcfee825bf17ae6ec29646f073a86315b9a9db1709`  
		Last Modified: Mon, 02 Nov 2026 20:11:14 GMT  
		Size: 12.7 KB (12723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20261101.0.620205` - unknown; unknown

```console
$ docker pull archlinux@sha256:508ecd6c11063de7ea857a47b9738f617cc4b11fde8d9219d476ff6ebbee90b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14747890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f781ae56b9e4864550d912a0ffdacc2f3054d5b95a90f158aef7b4e4f42b03`

```dockerfile
```

-	Layers:
	-	`sha256:ea064b84ce9c223ff02a3b3f8da6240297570c255d6360f5cda71a0111e494ed`  
		Last Modified: Mon, 02 Nov 2026 20:11:14 GMT  
		Size: 14.7 MB (14736124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8934673630fff91dde13dbecca9c91d28df7fc59864973d12b15b8e4b4b4ad80`  
		Last Modified: Mon, 02 Nov 2026 20:11:14 GMT  
		Size: 11.8 KB (11766 bytes)  
		MIME: application/vnd.in-toto+json
