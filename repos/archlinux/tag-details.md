<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20260712.0.555161`](#archlinuxbase-202607120555161)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20260712.0.555161`](#archlinuxbase-devel-202607120555161)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20260712.0.555161`](#archlinuxmultilib-devel-202607120555161)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:681569955d1d17313ef7134acc8b5cd8adcda2fc24709bed472d95e1cf3d71a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:2b4d67033863d9f495dfd0f52ad8b451fae84adb71b4bdf63f69d10643df2403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132655527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10124be3e394dacb74f7614a7694d51c44fab07c54bc11e52f0a6d98454a41c3`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.version=20260705.0.552420
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.created=2026-07-05T00:09:31+00:00
# Mon, 06 Jul 2026 18:56:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 06 Jul 2026 18:56:47 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260705.0.552420' /etc/os-release # buildkit
# Mon, 06 Jul 2026 18:56:47 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 18:56:47 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:591e11c5ab19a1d8c8a11ddbdcfc3d97d776a7cd1ed984e299f50c26a845164f`  
		Last Modified: Mon, 06 Jul 2026 18:57:14 GMT  
		Size: 132.6 MB (132646865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86e40f3e7d9ff29c124d3aa8340a30c606ae99a66f904f568293da35ee8d418`  
		Last Modified: Mon, 06 Jul 2026 18:57:10 GMT  
		Size: 8.7 KB (8662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:e01b034c227be3b6e0c67a75fda0c7476635686f4f21b1c32808ea2b751ab43f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8222461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484590683487bc0fc7734344f96aa24208d0f35df6fd006d2080466e5489bab9`

```dockerfile
```

-	Layers:
	-	`sha256:db7969750690047168d6f6a171e1713d146560cf061f94fa090fde2c1b79df11`  
		Last Modified: Mon, 06 Jul 2026 18:57:11 GMT  
		Size: 8.2 MB (8210532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbf74763e9f1b88667758ea381e9d639aee2d5280286a6bdbafe0b3963bfc74a`  
		Last Modified: Mon, 06 Jul 2026 18:57:10 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20260712.0.555161`

**does not exist** (yet?)

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:b21289eb1954872de0dc9f88976627e38611b1817be75e50946c83ab7b9c474d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:377f594c95c2c4f245e7285ec7f0bc7cd5a36003bd8b869c932b9b0ff2d761a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.0 MB (305024351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8e193a01e9e91aa0966b171e857cde7183392b33b09a5bed268f2a38dad8b6`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.version=20260705.0.552420
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.created=2026-07-05T00:09:31+00:00
# Mon, 06 Jul 2026 18:57:00 GMT
COPY /rootfs/ / # buildkit
# Mon, 06 Jul 2026 18:57:07 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260705.0.552420' /etc/os-release # buildkit
# Mon, 06 Jul 2026 18:57:07 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 18:57:07 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:3b9fc7ae39e7b9b403232773a0fdeced6b5d7d72f22fc93f25fefb52b169eaad`  
		Last Modified: Mon, 06 Jul 2026 18:58:03 GMT  
		Size: 305.0 MB (305012906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e41423bd05647bd329138f0bb616daabf72b618a9237341c7a150e4845c62e`  
		Last Modified: Mon, 06 Jul 2026 18:57:57 GMT  
		Size: 11.4 KB (11445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:92f402fcdd1d135dbb49dfb355e5438aa34e56c40581834206725dbdbb8fa27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14414582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1076ef59696b64297eba20aa1800fead61c3406200d0d94bf0fd9775b8961b7e`

```dockerfile
```

-	Layers:
	-	`sha256:e4b456d99aa6c43becabe84fd73ec77ec4b3c0d35865304fb86c4aedf571d0bc`  
		Last Modified: Mon, 06 Jul 2026 18:57:58 GMT  
		Size: 14.4 MB (14402870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ba5c7f0c7cb43ccf0e05111ae9c72e6a28661f5f36c63aa0cebabbbd528c8b4`  
		Last Modified: Mon, 06 Jul 2026 18:57:57 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20260712.0.555161`

**does not exist** (yet?)

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:681569955d1d17313ef7134acc8b5cd8adcda2fc24709bed472d95e1cf3d71a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:2b4d67033863d9f495dfd0f52ad8b451fae84adb71b4bdf63f69d10643df2403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132655527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10124be3e394dacb74f7614a7694d51c44fab07c54bc11e52f0a6d98454a41c3`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.version=20260705.0.552420
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.created=2026-07-05T00:09:31+00:00
# Mon, 06 Jul 2026 18:56:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 06 Jul 2026 18:56:47 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260705.0.552420' /etc/os-release # buildkit
# Mon, 06 Jul 2026 18:56:47 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 18:56:47 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:591e11c5ab19a1d8c8a11ddbdcfc3d97d776a7cd1ed984e299f50c26a845164f`  
		Last Modified: Mon, 06 Jul 2026 18:57:14 GMT  
		Size: 132.6 MB (132646865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86e40f3e7d9ff29c124d3aa8340a30c606ae99a66f904f568293da35ee8d418`  
		Last Modified: Mon, 06 Jul 2026 18:57:10 GMT  
		Size: 8.7 KB (8662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:e01b034c227be3b6e0c67a75fda0c7476635686f4f21b1c32808ea2b751ab43f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8222461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484590683487bc0fc7734344f96aa24208d0f35df6fd006d2080466e5489bab9`

```dockerfile
```

-	Layers:
	-	`sha256:db7969750690047168d6f6a171e1713d146560cf061f94fa090fde2c1b79df11`  
		Last Modified: Mon, 06 Jul 2026 18:57:11 GMT  
		Size: 8.2 MB (8210532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbf74763e9f1b88667758ea381e9d639aee2d5280286a6bdbafe0b3963bfc74a`  
		Last Modified: Mon, 06 Jul 2026 18:57:10 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:080cec97ea7d6193de4180e52513b042baf4a3bd28987bcbbe580bb902371734
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:ad812b74cb71e3d0347af1f18b16d0fae323c43ebee04762e468ba3bb1fda98f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.4 MB (327392557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4083012278207aa62d95f72d00af4fec564ed590c65f5da093ae3442d9444c0`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.version=20260705.0.552420
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.created=2026-07-05T00:09:31+00:00
# Mon, 06 Jul 2026 18:57:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 06 Jul 2026 18:57:13 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260705.0.552420' /etc/os-release # buildkit
# Mon, 06 Jul 2026 18:57:13 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 18:57:13 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:696df5e6673835c7bdb137e8ef78f706a1978591b63e76bb20d6075b2a70bf9f`  
		Last Modified: Mon, 06 Jul 2026 18:58:14 GMT  
		Size: 327.4 MB (327379977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55a4152feffc7d7bbc7ecf2bc6b7fdec41add8a9eaf517cabfbebd1c70d2a824`  
		Last Modified: Mon, 06 Jul 2026 18:58:07 GMT  
		Size: 12.6 KB (12580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:8fbd5b732d36830f4739853abf805e7ae0f3e71ec5943a281b975ad313139c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14684100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd345cd0412651319faec7f6400ca82e4f06c520f3a81a6141061f48da27de7`

```dockerfile
```

-	Layers:
	-	`sha256:301ffa28c775584a75aece6cac1d114b8bd2193d07f79535144fcf16039fbe5e`  
		Last Modified: Mon, 06 Jul 2026 18:58:08 GMT  
		Size: 14.7 MB (14672332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dd14e0370526122ced95a1aa2cfecdc28f5e2a8df1358683bea3b04f24b5ed8`  
		Last Modified: Mon, 06 Jul 2026 18:58:07 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20260712.0.555161`

**does not exist** (yet?)
