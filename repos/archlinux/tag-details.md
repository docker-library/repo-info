<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20260809.0.570793`](#archlinuxbase-202608090570793)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20260809.0.570793`](#archlinuxbase-devel-202608090570793)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20260809.0.570793`](#archlinuxmultilib-devel-202608090570793)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:b0deabeb3d283da2c7f7dbf0eea051b7b2cd0554e0b737cc457fd21683bdcdd1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:f0703c5a076af362f1cb99a01d1d0670fa63f16f5aeb74881b7ded9b63eea0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133118347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:246344d948ab5fd1c232f64bd92a5faf18dcae040322c2287613c68c884e476a`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.version=20260809.0.570793
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.created=2026-08-09T00:10:15+00:00
# Mon, 10 Aug 2026 23:01:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 10 Aug 2026 23:01:52 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260809.0.570793' /etc/os-release # buildkit
# Mon, 10 Aug 2026 23:01:52 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:01:52 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:282e2e0e165ea093880e76b723a5042d17aef1820356e450dc859c33a18bcae5`  
		Last Modified: Mon, 10 Aug 2026 23:02:19 GMT  
		Size: 133.1 MB (133109688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ac673653f3eb63122ca0a5a88a3bdf60fe85283b2322f8daf2136fedb6786f`  
		Last Modified: Mon, 10 Aug 2026 23:02:15 GMT  
		Size: 8.7 KB (8659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:7549f2e507032b1f1c41ea85e3d45f5412984328c8cd71850e02e5f142610048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8204406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19aaff9eded88e8e207a9191cd942b6e7640f4ce77e25f7064ca8221b3a71b0`

```dockerfile
```

-	Layers:
	-	`sha256:2991ddb836bf7866b7439a45093ff63a8cac4fc3945c56dcebef0edf6e3f526c`  
		Last Modified: Mon, 10 Aug 2026 23:02:16 GMT  
		Size: 8.2 MB (8192477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8699925372089c09e18e185a64542840bcfa2ed479587e47cf3e201d2995159`  
		Last Modified: Mon, 10 Aug 2026 23:02:16 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20260809.0.570793`

```console
$ docker pull archlinux@sha256:b0deabeb3d283da2c7f7dbf0eea051b7b2cd0554e0b737cc457fd21683bdcdd1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20260809.0.570793` - linux; amd64

```console
$ docker pull archlinux@sha256:f0703c5a076af362f1cb99a01d1d0670fa63f16f5aeb74881b7ded9b63eea0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133118347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:246344d948ab5fd1c232f64bd92a5faf18dcae040322c2287613c68c884e476a`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.version=20260809.0.570793
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.created=2026-08-09T00:10:15+00:00
# Mon, 10 Aug 2026 23:01:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 10 Aug 2026 23:01:52 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260809.0.570793' /etc/os-release # buildkit
# Mon, 10 Aug 2026 23:01:52 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:01:52 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:282e2e0e165ea093880e76b723a5042d17aef1820356e450dc859c33a18bcae5`  
		Last Modified: Mon, 10 Aug 2026 23:02:19 GMT  
		Size: 133.1 MB (133109688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ac673653f3eb63122ca0a5a88a3bdf60fe85283b2322f8daf2136fedb6786f`  
		Last Modified: Mon, 10 Aug 2026 23:02:15 GMT  
		Size: 8.7 KB (8659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20260809.0.570793` - unknown; unknown

```console
$ docker pull archlinux@sha256:7549f2e507032b1f1c41ea85e3d45f5412984328c8cd71850e02e5f142610048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8204406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19aaff9eded88e8e207a9191cd942b6e7640f4ce77e25f7064ca8221b3a71b0`

```dockerfile
```

-	Layers:
	-	`sha256:2991ddb836bf7866b7439a45093ff63a8cac4fc3945c56dcebef0edf6e3f526c`  
		Last Modified: Mon, 10 Aug 2026 23:02:16 GMT  
		Size: 8.2 MB (8192477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8699925372089c09e18e185a64542840bcfa2ed479587e47cf3e201d2995159`  
		Last Modified: Mon, 10 Aug 2026 23:02:16 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:ee205c220399524a683cf495d411691b921baed8ab47cdc6d732efa782fae484
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:49facfaf7eac45ed51ea3056091b8478191df5bcd62225e457e89c246b7cbda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306821075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0864f97b9567bf14c4450f820234617de489069d5157a3aef4a14a3e9bdf7508`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.version=20260809.0.570793
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.created=2026-08-09T00:10:15+00:00
# Mon, 10 Aug 2026 23:02:02 GMT
COPY /rootfs/ / # buildkit
# Mon, 10 Aug 2026 23:02:09 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260809.0.570793' /etc/os-release # buildkit
# Mon, 10 Aug 2026 23:02:09 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:02:09 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:b7e1cd3f87e68f3ba6a40f5cc289faf651fd5df11d72caa35017ab5f2b92cfbf`  
		Last Modified: Mon, 10 Aug 2026 23:03:05 GMT  
		Size: 306.8 MB (306809622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dabbe614f2f404de7042013c5dc04efd97161b93b6e635b3fff805c5f8791b74`  
		Last Modified: Mon, 10 Aug 2026 23:02:58 GMT  
		Size: 11.5 KB (11453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:59628e0fadc6a90d7d79787a69306ebe8117e4feea10aee5f8daf5361e8886ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14411013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5125d190bfd51d063cc129a4bc8175ba78e859cc271c9efb6aeb37ff5f449793`

```dockerfile
```

-	Layers:
	-	`sha256:cbf9814b5decf6aa9f52b7bccdeded223d1fbe74f466067ce36042e18af2321b`  
		Last Modified: Mon, 10 Aug 2026 23:02:59 GMT  
		Size: 14.4 MB (14399302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68a71c124cc99d42c24fd0bbe4c16a13665c02e54ecd17a02110e4519d4970fe`  
		Last Modified: Mon, 10 Aug 2026 23:02:58 GMT  
		Size: 11.7 KB (11711 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20260809.0.570793`

```console
$ docker pull archlinux@sha256:ee205c220399524a683cf495d411691b921baed8ab47cdc6d732efa782fae484
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260809.0.570793` - linux; amd64

```console
$ docker pull archlinux@sha256:49facfaf7eac45ed51ea3056091b8478191df5bcd62225e457e89c246b7cbda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306821075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0864f97b9567bf14c4450f820234617de489069d5157a3aef4a14a3e9bdf7508`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.version=20260809.0.570793
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.created=2026-08-09T00:10:15+00:00
# Mon, 10 Aug 2026 23:02:02 GMT
COPY /rootfs/ / # buildkit
# Mon, 10 Aug 2026 23:02:09 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260809.0.570793' /etc/os-release # buildkit
# Mon, 10 Aug 2026 23:02:09 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:02:09 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:b7e1cd3f87e68f3ba6a40f5cc289faf651fd5df11d72caa35017ab5f2b92cfbf`  
		Last Modified: Mon, 10 Aug 2026 23:03:05 GMT  
		Size: 306.8 MB (306809622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dabbe614f2f404de7042013c5dc04efd97161b93b6e635b3fff805c5f8791b74`  
		Last Modified: Mon, 10 Aug 2026 23:02:58 GMT  
		Size: 11.5 KB (11453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260809.0.570793` - unknown; unknown

```console
$ docker pull archlinux@sha256:59628e0fadc6a90d7d79787a69306ebe8117e4feea10aee5f8daf5361e8886ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14411013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5125d190bfd51d063cc129a4bc8175ba78e859cc271c9efb6aeb37ff5f449793`

```dockerfile
```

-	Layers:
	-	`sha256:cbf9814b5decf6aa9f52b7bccdeded223d1fbe74f466067ce36042e18af2321b`  
		Last Modified: Mon, 10 Aug 2026 23:02:59 GMT  
		Size: 14.4 MB (14399302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68a71c124cc99d42c24fd0bbe4c16a13665c02e54ecd17a02110e4519d4970fe`  
		Last Modified: Mon, 10 Aug 2026 23:02:58 GMT  
		Size: 11.7 KB (11711 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:b0deabeb3d283da2c7f7dbf0eea051b7b2cd0554e0b737cc457fd21683bdcdd1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:f0703c5a076af362f1cb99a01d1d0670fa63f16f5aeb74881b7ded9b63eea0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133118347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:246344d948ab5fd1c232f64bd92a5faf18dcae040322c2287613c68c884e476a`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.version=20260809.0.570793
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 10 Aug 2026 23:01:50 GMT
LABEL org.opencontainers.image.created=2026-08-09T00:10:15+00:00
# Mon, 10 Aug 2026 23:01:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 10 Aug 2026 23:01:52 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260809.0.570793' /etc/os-release # buildkit
# Mon, 10 Aug 2026 23:01:52 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:01:52 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:282e2e0e165ea093880e76b723a5042d17aef1820356e450dc859c33a18bcae5`  
		Last Modified: Mon, 10 Aug 2026 23:02:19 GMT  
		Size: 133.1 MB (133109688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ac673653f3eb63122ca0a5a88a3bdf60fe85283b2322f8daf2136fedb6786f`  
		Last Modified: Mon, 10 Aug 2026 23:02:15 GMT  
		Size: 8.7 KB (8659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:7549f2e507032b1f1c41ea85e3d45f5412984328c8cd71850e02e5f142610048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8204406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19aaff9eded88e8e207a9191cd942b6e7640f4ce77e25f7064ca8221b3a71b0`

```dockerfile
```

-	Layers:
	-	`sha256:2991ddb836bf7866b7439a45093ff63a8cac4fc3945c56dcebef0edf6e3f526c`  
		Last Modified: Mon, 10 Aug 2026 23:02:16 GMT  
		Size: 8.2 MB (8192477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8699925372089c09e18e185a64542840bcfa2ed479587e47cf3e201d2995159`  
		Last Modified: Mon, 10 Aug 2026 23:02:16 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:cc15dc6d017bba84cf4ab0b5746c4cb6e690426002e6ed9f514d1706c006bb70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:b50c908834bf0645e7d40525532adf1d5ad836f6a78771f8b17870cbde0f2c8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.3 MB (329271649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee393be2bcdab3ad7ee6c89f7e2a834d675bdcfbcf7ebee5905faf263680d8f`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.version=20260809.0.570793
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.created=2026-08-09T00:10:15+00:00
# Mon, 10 Aug 2026 23:02:19 GMT
COPY /rootfs/ / # buildkit
# Mon, 10 Aug 2026 23:02:27 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260809.0.570793' /etc/os-release # buildkit
# Mon, 10 Aug 2026 23:02:27 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:02:27 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:322d0ed110abe082ba8e131803397e2cdfefc078e9d0059eb36ca8a5402edbf1`  
		Last Modified: Mon, 10 Aug 2026 23:03:26 GMT  
		Size: 329.3 MB (329259045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd89950c37119725b17f9d1a0b14ffbec37473324166d473166eca9b18df9a3e`  
		Last Modified: Mon, 10 Aug 2026 23:03:20 GMT  
		Size: 12.6 KB (12604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:67f9f77fae4630f90d767709a1583b8edfad9a1dee2855e7a955c459124f4007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14682158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fa12c7693d53b899d8e0efdbb0a13f441170acf39d2dbfe414cd27460d9158`

```dockerfile
```

-	Layers:
	-	`sha256:218ece613f3773e17823298b8111fa13fca7209db91b8fec5dc8ef7ccd77d221`  
		Last Modified: Mon, 10 Aug 2026 23:03:20 GMT  
		Size: 14.7 MB (14670390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06943d04a13408e03019c973e083a605d866d92d95eb3fed2587676401fe9da9`  
		Last Modified: Mon, 10 Aug 2026 23:03:20 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20260809.0.570793`

```console
$ docker pull archlinux@sha256:cc15dc6d017bba84cf4ab0b5746c4cb6e690426002e6ed9f514d1706c006bb70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260809.0.570793` - linux; amd64

```console
$ docker pull archlinux@sha256:b50c908834bf0645e7d40525532adf1d5ad836f6a78771f8b17870cbde0f2c8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.3 MB (329271649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee393be2bcdab3ad7ee6c89f7e2a834d675bdcfbcf7ebee5905faf263680d8f`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.version=20260809.0.570793
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.created=2026-08-09T00:10:15+00:00
# Mon, 10 Aug 2026 23:02:19 GMT
COPY /rootfs/ / # buildkit
# Mon, 10 Aug 2026 23:02:27 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260809.0.570793' /etc/os-release # buildkit
# Mon, 10 Aug 2026 23:02:27 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:02:27 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:322d0ed110abe082ba8e131803397e2cdfefc078e9d0059eb36ca8a5402edbf1`  
		Last Modified: Mon, 10 Aug 2026 23:03:26 GMT  
		Size: 329.3 MB (329259045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd89950c37119725b17f9d1a0b14ffbec37473324166d473166eca9b18df9a3e`  
		Last Modified: Mon, 10 Aug 2026 23:03:20 GMT  
		Size: 12.6 KB (12604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260809.0.570793` - unknown; unknown

```console
$ docker pull archlinux@sha256:67f9f77fae4630f90d767709a1583b8edfad9a1dee2855e7a955c459124f4007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14682158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fa12c7693d53b899d8e0efdbb0a13f441170acf39d2dbfe414cd27460d9158`

```dockerfile
```

-	Layers:
	-	`sha256:218ece613f3773e17823298b8111fa13fca7209db91b8fec5dc8ef7ccd77d221`  
		Last Modified: Mon, 10 Aug 2026 23:03:20 GMT  
		Size: 14.7 MB (14670390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06943d04a13408e03019c973e083a605d866d92d95eb3fed2587676401fe9da9`  
		Last Modified: Mon, 10 Aug 2026 23:03:20 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
