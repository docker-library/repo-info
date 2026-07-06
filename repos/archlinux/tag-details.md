<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20260705.0.552420`](#archlinuxbase-202607050552420)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20260705.0.552420`](#archlinuxbase-devel-202607050552420)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20260705.0.552420`](#archlinuxmultilib-devel-202607050552420)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:068a765646e75e51fe5d544b0f95c85d0322d0a372659e9d5f10fb8402ca53f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:d41d768e81cac3bede426e294ac5b2c55ed4bf697698c0f13ddd86b911f7f260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132537200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cfecaf404bacab06015241b0ef859fadd56a432e90a8a1afe85ae711064b02e`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.version=20260628.0.549485
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.created=2026-06-28T00:09:46+00:00
# Mon, 29 Jun 2026 19:08:08 GMT
COPY /rootfs/ / # buildkit
# Mon, 29 Jun 2026 19:08:11 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260628.0.549485' /etc/os-release # buildkit
# Mon, 29 Jun 2026 19:08:11 GMT
ENV LANG=C.UTF-8
# Mon, 29 Jun 2026 19:08:11 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:cbe7d739b4820a7988913bcd894e81d9f657edc581454eaa28e235edaa237ab4`  
		Last Modified: Mon, 29 Jun 2026 19:08:39 GMT  
		Size: 132.5 MB (132528550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e307b4573bcc6dbfb3498befdf48ad1688c41c4e8f14618adfc9a7d124f20dbc`  
		Last Modified: Mon, 29 Jun 2026 19:08:34 GMT  
		Size: 8.7 KB (8650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:9f5eac37450bbb717c8f6d9b6c93449c767c72f222b1d61b88a0bd0868ff947d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8222452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9f0524ef21299cfb524f7b0e37dad9968ee8563998eeeabe9dcb1ef52eb3d3`

```dockerfile
```

-	Layers:
	-	`sha256:8a16447ffc2389c3bd76eb49ed8c81d2023ed8b117ef02e0d40abb1bd364b190`  
		Last Modified: Mon, 29 Jun 2026 19:08:34 GMT  
		Size: 8.2 MB (8210523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f56d5ad22f159f7099ae9af8fc654198cd9bb933aa99c70ce4f1b9b7a4b6f9e`  
		Last Modified: Mon, 29 Jun 2026 19:08:34 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20260705.0.552420`

**does not exist** (yet?)

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:5fb487a262dd7c25a26071b4d67daca47098433090727c23b71618a5cc3e5ecb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:3f692909298cab4188877ac21a3bd294664b6653ddc2862785bd17980613fe6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.9 MB (304932717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56e15d495ca01bc634b5e96d4d7bfc6b2b3d25ed03c755f8dbc087196cabb91`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 19:09:30 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 29 Jun 2026 19:09:30 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 29 Jun 2026 19:09:30 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 29 Jun 2026 19:09:30 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 29 Jun 2026 19:09:30 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 29 Jun 2026 19:09:30 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 29 Jun 2026 19:09:30 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 29 Jun 2026 19:09:30 GMT
LABEL org.opencontainers.image.version=20260628.0.549485
# Mon, 29 Jun 2026 19:09:30 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 29 Jun 2026 19:09:30 GMT
LABEL org.opencontainers.image.created=2026-06-28T00:09:46+00:00
# Mon, 29 Jun 2026 19:09:30 GMT
COPY /rootfs/ / # buildkit
# Mon, 29 Jun 2026 19:09:37 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260628.0.549485' /etc/os-release # buildkit
# Mon, 29 Jun 2026 19:09:37 GMT
ENV LANG=C.UTF-8
# Mon, 29 Jun 2026 19:09:37 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:793b9865fc2e25877b456615434390b6feb8fbb2888e58f23a81e0d8f8586a22`  
		Last Modified: Mon, 29 Jun 2026 19:10:29 GMT  
		Size: 304.9 MB (304921264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07efb25f7f69f72f7093662826e83e1ee4e4fa7f632a6d95b6f5f7cd752a374f`  
		Last Modified: Mon, 29 Jun 2026 19:10:22 GMT  
		Size: 11.5 KB (11453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:b7fa568e9a126719d275391d9bd65911ac25190316f3881459debb1eefae3b37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14414573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:001b19969c639bc8822d2713e27335069efb59fc7fdb9e93794ec31e4c10086b`

```dockerfile
```

-	Layers:
	-	`sha256:d18161be1e12b38f8bf95ec09582c689a582a1e737c478d17165feb387cf0825`  
		Last Modified: Mon, 29 Jun 2026 19:10:22 GMT  
		Size: 14.4 MB (14402861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:610f818dcbb151019f45f8e705717767fb9c98449c83eba2e89c700bd24b0369`  
		Last Modified: Mon, 29 Jun 2026 19:10:22 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20260705.0.552420`

**does not exist** (yet?)

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:068a765646e75e51fe5d544b0f95c85d0322d0a372659e9d5f10fb8402ca53f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:d41d768e81cac3bede426e294ac5b2c55ed4bf697698c0f13ddd86b911f7f260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132537200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cfecaf404bacab06015241b0ef859fadd56a432e90a8a1afe85ae711064b02e`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.version=20260628.0.549485
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 29 Jun 2026 19:08:08 GMT
LABEL org.opencontainers.image.created=2026-06-28T00:09:46+00:00
# Mon, 29 Jun 2026 19:08:08 GMT
COPY /rootfs/ / # buildkit
# Mon, 29 Jun 2026 19:08:11 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260628.0.549485' /etc/os-release # buildkit
# Mon, 29 Jun 2026 19:08:11 GMT
ENV LANG=C.UTF-8
# Mon, 29 Jun 2026 19:08:11 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:cbe7d739b4820a7988913bcd894e81d9f657edc581454eaa28e235edaa237ab4`  
		Last Modified: Mon, 29 Jun 2026 19:08:39 GMT  
		Size: 132.5 MB (132528550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e307b4573bcc6dbfb3498befdf48ad1688c41c4e8f14618adfc9a7d124f20dbc`  
		Last Modified: Mon, 29 Jun 2026 19:08:34 GMT  
		Size: 8.7 KB (8650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:9f5eac37450bbb717c8f6d9b6c93449c767c72f222b1d61b88a0bd0868ff947d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8222452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9f0524ef21299cfb524f7b0e37dad9968ee8563998eeeabe9dcb1ef52eb3d3`

```dockerfile
```

-	Layers:
	-	`sha256:8a16447ffc2389c3bd76eb49ed8c81d2023ed8b117ef02e0d40abb1bd364b190`  
		Last Modified: Mon, 29 Jun 2026 19:08:34 GMT  
		Size: 8.2 MB (8210523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f56d5ad22f159f7099ae9af8fc654198cd9bb933aa99c70ce4f1b9b7a4b6f9e`  
		Last Modified: Mon, 29 Jun 2026 19:08:34 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:9bc32184564e58859eb926bb2e1bed6f0f015630d03efe3e2c5ac0f18ef068b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:8701413ec07e507e1ada210786064a69d40bacf83446f0703054c4e883451701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327304532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c81fc202fa87a9fdde656d8614a075838c20a4155e38104147c89a2b920f3b2`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 19:09:15 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 29 Jun 2026 19:09:15 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 29 Jun 2026 19:09:15 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 29 Jun 2026 19:09:15 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 29 Jun 2026 19:09:15 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 29 Jun 2026 19:09:15 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 29 Jun 2026 19:09:15 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 29 Jun 2026 19:09:15 GMT
LABEL org.opencontainers.image.version=20260628.0.549485
# Mon, 29 Jun 2026 19:09:15 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 29 Jun 2026 19:09:15 GMT
LABEL org.opencontainers.image.created=2026-06-28T00:09:46+00:00
# Mon, 29 Jun 2026 19:09:15 GMT
COPY /rootfs/ / # buildkit
# Mon, 29 Jun 2026 19:09:23 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260628.0.549485' /etc/os-release # buildkit
# Mon, 29 Jun 2026 19:09:23 GMT
ENV LANG=C.UTF-8
# Mon, 29 Jun 2026 19:09:23 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:1a1e4c1b130ce3d9c5fa0b371b195ba2d4f472e3198d2f0c91b8f5baf610e1dc`  
		Last Modified: Mon, 29 Jun 2026 19:10:23 GMT  
		Size: 327.3 MB (327291896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0316db9df4d6ef93a9f0bccfe375745144f4bc23913e475d1c826f058e9179d2`  
		Last Modified: Mon, 29 Jun 2026 19:10:17 GMT  
		Size: 12.6 KB (12636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:0cf4386f3c403a8d29e0167e1f9722b95e1ef6901254f10266d2d91610a5f3ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14684091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c163c8f212b070958b87cf3d913ab6a7fe178415bd105eb6d1869ffbe9d41e`

```dockerfile
```

-	Layers:
	-	`sha256:229910163543f007522df8de01b1d252db6f6093f53c8d790f42ef07a8112c76`  
		Last Modified: Mon, 29 Jun 2026 19:10:18 GMT  
		Size: 14.7 MB (14672323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab190e33c8fa87d2ad7c2d8e4a53db49d5e44882140fe51e150f377a5ce1b2a0`  
		Last Modified: Mon, 29 Jun 2026 19:10:17 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20260705.0.552420`

**does not exist** (yet?)
