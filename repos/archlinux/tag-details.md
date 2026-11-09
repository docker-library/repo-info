<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20261108.0.623074`](#archlinuxbase-202611080623074)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20261108.0.623074`](#archlinuxbase-devel-202611080623074)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20261108.0.623074`](#archlinuxmultilib-devel-202611080623074)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:b1c2fe6e717bfd5673af8fc217e1e1c3ce0dcbb1d53c3414c8425e7ce79fc6d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:823e937464d1528b306a8e1137ef406b9c56e5fee43c7a19e93684d554af74e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134251507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db632a0cdf7aa65eb1f7e1df6b4f9c4cb0502023942a8e593ed08fcadd0826f`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Thu, 05 Nov 2026 18:54:12 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:54:15 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Thu, 05 Nov 2026 18:54:15 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:54:15 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:3f244b8f0c1879e8b146b9f4da81fbad49a1de2731bd96155d3bf9c4fd00f0e5`  
		Last Modified: Mon, 02 Nov 2026 20:07:34 GMT  
		Size: 134.2 MB (134242784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:432d78c9edb7529e3c52905064be9e29caf364d8895c119d100ec5e7fb9149f9`  
		Last Modified: Thu, 05 Nov 2026 18:54:37 GMT  
		Size: 8.7 KB (8723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:57e77814171c543bbdb10213c669c16349a859be7208046ea58b20e1673a3137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e76da896de22ecb17acd5653adf35e8b8d4891a0058daae892be06399bda1ff`

```dockerfile
```

-	Layers:
	-	`sha256:54199d0f305dd82cb429903d246ff5d14ef7ecb421be085c0dbc737853fe6864`  
		Last Modified: Thu, 05 Nov 2026 18:54:37 GMT  
		Size: 8.2 MB (8242563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:287c985ee146c665ea9e2d1db3a9938202d380389836404757650ddd5badab2f`  
		Last Modified: Thu, 05 Nov 2026 18:54:37 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20261108.0.623074`

**does not exist** (yet?)

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:2de80105abb49f813a85393c6758a4334deb6bcec4a2411bd2f059c0bee6ee4c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:9633c3e37e551beb003b2f546af18520705bd758f48c86d276b11ad3b5b8fcde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309198216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b6cbf0d2c17c0ffbf651cc821ed28e5e13b3559a3f477416357324f810ee21`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Thu, 05 Nov 2026 18:54:36 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:54:43 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Thu, 05 Nov 2026 18:54:43 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:54:43 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:4d0caf509dc94a4de2013706a77dc7c216de7ce218d516abd94ab8a76d65dd76`  
		Last Modified: Mon, 02 Nov 2026 20:09:09 GMT  
		Size: 309.2 MB (309186688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d90f4e608a7744f735f71219abaf4f31d11c9bcc205b39dd6981eda9f29d5d`  
		Last Modified: Thu, 05 Nov 2026 18:55:27 GMT  
		Size: 11.5 KB (11528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:e84dd3748b323129ca857cfb56a59d3463bd7f5c1d43d0ce015b636858e6b73d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14476748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729961af775098278c7d852f3d20f6a9488154a4fe36a3510c358c43d67c6df7`

```dockerfile
```

-	Layers:
	-	`sha256:6a4263f8928794221730f1e3c1b8ff713df07885c0686431e5e29f12683b04f4`  
		Last Modified: Thu, 05 Nov 2026 18:55:28 GMT  
		Size: 14.5 MB (14465036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e048f43f88170fd383847d462ce003b744de7e320000d092b977241124d41834`  
		Last Modified: Thu, 05 Nov 2026 18:55:28 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20261108.0.623074`

**does not exist** (yet?)

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:b1c2fe6e717bfd5673af8fc217e1e1c3ce0dcbb1d53c3414c8425e7ce79fc6d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:823e937464d1528b306a8e1137ef406b9c56e5fee43c7a19e93684d554af74e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134251507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db632a0cdf7aa65eb1f7e1df6b4f9c4cb0502023942a8e593ed08fcadd0826f`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Thu, 05 Nov 2026 18:54:12 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:54:15 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Thu, 05 Nov 2026 18:54:15 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:54:15 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:3f244b8f0c1879e8b146b9f4da81fbad49a1de2731bd96155d3bf9c4fd00f0e5`  
		Last Modified: Mon, 02 Nov 2026 20:07:34 GMT  
		Size: 134.2 MB (134242784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:432d78c9edb7529e3c52905064be9e29caf364d8895c119d100ec5e7fb9149f9`  
		Last Modified: Thu, 05 Nov 2026 18:54:37 GMT  
		Size: 8.7 KB (8723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:57e77814171c543bbdb10213c669c16349a859be7208046ea58b20e1673a3137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e76da896de22ecb17acd5653adf35e8b8d4891a0058daae892be06399bda1ff`

```dockerfile
```

-	Layers:
	-	`sha256:54199d0f305dd82cb429903d246ff5d14ef7ecb421be085c0dbc737853fe6864`  
		Last Modified: Thu, 05 Nov 2026 18:54:37 GMT  
		Size: 8.2 MB (8242563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:287c985ee146c665ea9e2d1db3a9938202d380389836404757650ddd5badab2f`  
		Last Modified: Thu, 05 Nov 2026 18:54:37 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:732829e182d0cb7ef3d799827e799ff3bdd2d27fee557770bbd611a211439cf6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:f7460d9dae5e6e256b85e3af9f4d3964d5876407c23797fe84512c2fe07fee86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331682716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b51b5a6d873cca93dc31c16478974a0ce05bdadce23404b841a8a31a812383c4`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Thu, 05 Nov 2026 18:54:40 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:54:48 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Thu, 05 Nov 2026 18:54:48 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:54:48 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:e9c9a06dcd01c8e14874c724c3deb3ffc5a48016be56d792d2454489b653fcdd`  
		Last Modified: Mon, 02 Nov 2026 20:11:20 GMT  
		Size: 331.7 MB (331670001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3a8a85cb479d19dfe17316c279c1908eb8cb3d1a721b5deec2a4c087241917`  
		Last Modified: Thu, 05 Nov 2026 18:55:42 GMT  
		Size: 12.7 KB (12715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:b78087271f29554339ac874c80e25cc352a04d513f2a40042d9c45ef479286f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14747892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330b401b6dc4fe8b79591ca29fae1c9493d1518c42e64b8eef571e6b3b4b43e7`

```dockerfile
```

-	Layers:
	-	`sha256:9fbaa2e5d5d64d348f9f8ef388d1729828ca9a2727c38b32a0b39dda11054e4e`  
		Last Modified: Thu, 05 Nov 2026 18:55:43 GMT  
		Size: 14.7 MB (14736124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56712012da890f784691efd6fc68a9c46934e89c5e14100904387d73b938cc9b`  
		Last Modified: Thu, 05 Nov 2026 18:55:42 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20261108.0.623074`

**does not exist** (yet?)
