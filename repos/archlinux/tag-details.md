<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20260913.0.592969`](#archlinuxbase-202609130592969)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20260913.0.592969`](#archlinuxbase-devel-202609130592969)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20260913.0.592969`](#archlinuxmultilib-devel-202609130592969)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:63c7b061c0c001cb7ce4f8d11b63d351c23e7f97121bc5c8bd5d9f431e615d7d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:374011da98ed9bef569a91a00b6466a071414049c10054ae27e62a75615b7e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133533668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b15f4618d794f2befec8665e9887d433b1ae2fbbf5f3f89974721d26a08c774`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Thu, 17 Sep 2026 21:14:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:14:19 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Thu, 17 Sep 2026 21:14:19 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:14:19 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:9b7a6195b886333e81c4b606533b61677f5799f0cf4b140c5a43e172ede2fad6`  
		Last Modified: Mon, 14 Sep 2026 19:04:57 GMT  
		Size: 133.5 MB (133524961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0408c9c50a738820c26b5a5e2d2e449aa408931f8d4f835ed4039a6d801b1f9a`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.7 KB (8707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:fe703c8699df0b0787b29e9cb37da9cfa430037acf617b58c5671a36154af523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8221881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bef51bbce3c1447254b7f2e3c03ee6099a374550bd153bf9a2fbb4c639e3758`

```dockerfile
```

-	Layers:
	-	`sha256:84f1599c50b34c091db8544b815aa1741ae19d90d127f496dfa5bd5f65ea3a90`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.2 MB (8209952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:510e10faebbc8b7fe7864d882c213f9a70dfdd4f9e8118288f37d0e57b700a43`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20260913.0.592969`

```console
$ docker pull archlinux@sha256:63c7b061c0c001cb7ce4f8d11b63d351c23e7f97121bc5c8bd5d9f431e615d7d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20260913.0.592969` - linux; amd64

```console
$ docker pull archlinux@sha256:374011da98ed9bef569a91a00b6466a071414049c10054ae27e62a75615b7e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133533668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b15f4618d794f2befec8665e9887d433b1ae2fbbf5f3f89974721d26a08c774`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Thu, 17 Sep 2026 21:14:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:14:19 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Thu, 17 Sep 2026 21:14:19 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:14:19 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:9b7a6195b886333e81c4b606533b61677f5799f0cf4b140c5a43e172ede2fad6`  
		Last Modified: Mon, 14 Sep 2026 19:04:57 GMT  
		Size: 133.5 MB (133524961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0408c9c50a738820c26b5a5e2d2e449aa408931f8d4f835ed4039a6d801b1f9a`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.7 KB (8707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20260913.0.592969` - unknown; unknown

```console
$ docker pull archlinux@sha256:fe703c8699df0b0787b29e9cb37da9cfa430037acf617b58c5671a36154af523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8221881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bef51bbce3c1447254b7f2e3c03ee6099a374550bd153bf9a2fbb4c639e3758`

```dockerfile
```

-	Layers:
	-	`sha256:84f1599c50b34c091db8544b815aa1741ae19d90d127f496dfa5bd5f65ea3a90`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.2 MB (8209952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:510e10faebbc8b7fe7864d882c213f9a70dfdd4f9e8118288f37d0e57b700a43`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:4894f5a268c696fad671966f383175a13faf433c9d9c88cdd4e32eaa2d18838b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:305558d2bce0b33170f7f7e4ee690633df4b1e0bdfd8194fe45a6545172319ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307653975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4bdccd34e24cae140c5d815dfadb3dab096b2b08d530110054111b22cc7aecf`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Thu, 17 Sep 2026 21:14:32 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:14:39 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Thu, 17 Sep 2026 21:14:39 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:14:39 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:579a0240d65fcab6a1ced830c73a1e910b309d897d1ea8082389dace3d75594d`  
		Last Modified: Mon, 14 Sep 2026 19:06:42 GMT  
		Size: 307.6 MB (307642490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd2c417d4fc236f004df66eb4998e6a2177e3dff40b733d70e523f7667eb54f`  
		Last Modified: Thu, 17 Sep 2026 21:15:30 GMT  
		Size: 11.5 KB (11485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:4008336ba7478b643b9937f7be320b07f3214a62389e0a46b0e3c7b60b50c86c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14430662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a78991e929a2cce95c8d2edaa444d15c997b68fd34f093d165c7b26d652146d`

```dockerfile
```

-	Layers:
	-	`sha256:bbb8187bac2a7a4c6128ab7662c64e3cb09c08aaeadc8919f0d56a5bde0940ad`  
		Last Modified: Thu, 17 Sep 2026 21:15:31 GMT  
		Size: 14.4 MB (14418950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45157df0636cb2843a054563b9c6ca299f23e3071dd54dd6996911fd49f9e527`  
		Last Modified: Thu, 17 Sep 2026 21:15:30 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20260913.0.592969`

```console
$ docker pull archlinux@sha256:4894f5a268c696fad671966f383175a13faf433c9d9c88cdd4e32eaa2d18838b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260913.0.592969` - linux; amd64

```console
$ docker pull archlinux@sha256:305558d2bce0b33170f7f7e4ee690633df4b1e0bdfd8194fe45a6545172319ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307653975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4bdccd34e24cae140c5d815dfadb3dab096b2b08d530110054111b22cc7aecf`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Thu, 17 Sep 2026 21:14:32 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:14:39 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Thu, 17 Sep 2026 21:14:39 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:14:39 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:579a0240d65fcab6a1ced830c73a1e910b309d897d1ea8082389dace3d75594d`  
		Last Modified: Mon, 14 Sep 2026 19:06:42 GMT  
		Size: 307.6 MB (307642490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd2c417d4fc236f004df66eb4998e6a2177e3dff40b733d70e523f7667eb54f`  
		Last Modified: Thu, 17 Sep 2026 21:15:30 GMT  
		Size: 11.5 KB (11485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260913.0.592969` - unknown; unknown

```console
$ docker pull archlinux@sha256:4008336ba7478b643b9937f7be320b07f3214a62389e0a46b0e3c7b60b50c86c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14430662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a78991e929a2cce95c8d2edaa444d15c997b68fd34f093d165c7b26d652146d`

```dockerfile
```

-	Layers:
	-	`sha256:bbb8187bac2a7a4c6128ab7662c64e3cb09c08aaeadc8919f0d56a5bde0940ad`  
		Last Modified: Thu, 17 Sep 2026 21:15:31 GMT  
		Size: 14.4 MB (14418950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45157df0636cb2843a054563b9c6ca299f23e3071dd54dd6996911fd49f9e527`  
		Last Modified: Thu, 17 Sep 2026 21:15:30 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:63c7b061c0c001cb7ce4f8d11b63d351c23e7f97121bc5c8bd5d9f431e615d7d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:374011da98ed9bef569a91a00b6466a071414049c10054ae27e62a75615b7e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133533668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b15f4618d794f2befec8665e9887d433b1ae2fbbf5f3f89974721d26a08c774`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Thu, 17 Sep 2026 21:14:16 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Thu, 17 Sep 2026 21:14:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:14:19 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Thu, 17 Sep 2026 21:14:19 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:14:19 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:9b7a6195b886333e81c4b606533b61677f5799f0cf4b140c5a43e172ede2fad6`  
		Last Modified: Mon, 14 Sep 2026 19:04:57 GMT  
		Size: 133.5 MB (133524961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0408c9c50a738820c26b5a5e2d2e449aa408931f8d4f835ed4039a6d801b1f9a`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.7 KB (8707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:fe703c8699df0b0787b29e9cb37da9cfa430037acf617b58c5671a36154af523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8221881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bef51bbce3c1447254b7f2e3c03ee6099a374550bd153bf9a2fbb4c639e3758`

```dockerfile
```

-	Layers:
	-	`sha256:84f1599c50b34c091db8544b815aa1741ae19d90d127f496dfa5bd5f65ea3a90`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.2 MB (8209952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:510e10faebbc8b7fe7864d882c213f9a70dfdd4f9e8118288f37d0e57b700a43`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:b477b4dee78762e992cc11dcd74ef4717aaa826fa2ba0dd65056389327da6590
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:8f0c05c996f3e3570bb71e2ab3528a1ead8049203c8ad70b9d8930de789dfefe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.1 MB (330127032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da7e45ed3fe57eab127f8ae7ce72bfd5ef4361b5721157e1c31ad5847693104`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Thu, 17 Sep 2026 21:14:39 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:14:47 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Thu, 17 Sep 2026 21:14:47 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:14:47 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:c406e7b80187800ed1d9f4bb7cdb82046233689c65342d511fedb424d32bfdd4`  
		Last Modified: Mon, 14 Sep 2026 19:07:11 GMT  
		Size: 330.1 MB (330114301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aae2e98fff96a71351638303fec314b5226813643aacba2644ed4ead45fe127`  
		Last Modified: Thu, 17 Sep 2026 21:15:40 GMT  
		Size: 12.7 KB (12731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:c1c63bc8f7f32253f9a4f2f893d9bf7f9537891c2360e192ba7395d2d5ad85ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14701805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28063540bf6c4e0392d0819ac5968b9cda7c8b3b9d83aeb2a1c8181cc30e9bfc`

```dockerfile
```

-	Layers:
	-	`sha256:1f2a87105435ba22d2aea1c7e904e88d49fe7f75bbae200926c4bcfdf4ec9ee6`  
		Last Modified: Thu, 17 Sep 2026 21:15:41 GMT  
		Size: 14.7 MB (14690038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cea81a69248c4691c5e3a0838ee97660d593d79088151e8a7812a6ab234a7e6`  
		Last Modified: Thu, 17 Sep 2026 21:15:40 GMT  
		Size: 11.8 KB (11767 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20260913.0.592969`

```console
$ docker pull archlinux@sha256:b477b4dee78762e992cc11dcd74ef4717aaa826fa2ba0dd65056389327da6590
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260913.0.592969` - linux; amd64

```console
$ docker pull archlinux@sha256:8f0c05c996f3e3570bb71e2ab3528a1ead8049203c8ad70b9d8930de789dfefe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.1 MB (330127032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da7e45ed3fe57eab127f8ae7ce72bfd5ef4361b5721157e1c31ad5847693104`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Thu, 17 Sep 2026 21:14:39 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:14:47 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Thu, 17 Sep 2026 21:14:47 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:14:47 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:c406e7b80187800ed1d9f4bb7cdb82046233689c65342d511fedb424d32bfdd4`  
		Last Modified: Mon, 14 Sep 2026 19:07:11 GMT  
		Size: 330.1 MB (330114301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aae2e98fff96a71351638303fec314b5226813643aacba2644ed4ead45fe127`  
		Last Modified: Thu, 17 Sep 2026 21:15:40 GMT  
		Size: 12.7 KB (12731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260913.0.592969` - unknown; unknown

```console
$ docker pull archlinux@sha256:c1c63bc8f7f32253f9a4f2f893d9bf7f9537891c2360e192ba7395d2d5ad85ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14701805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28063540bf6c4e0392d0819ac5968b9cda7c8b3b9d83aeb2a1c8181cc30e9bfc`

```dockerfile
```

-	Layers:
	-	`sha256:1f2a87105435ba22d2aea1c7e904e88d49fe7f75bbae200926c4bcfdf4ec9ee6`  
		Last Modified: Thu, 17 Sep 2026 21:15:41 GMT  
		Size: 14.7 MB (14690038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cea81a69248c4691c5e3a0838ee97660d593d79088151e8a7812a6ab234a7e6`  
		Last Modified: Thu, 17 Sep 2026 21:15:40 GMT  
		Size: 11.8 KB (11767 bytes)  
		MIME: application/vnd.in-toto+json
