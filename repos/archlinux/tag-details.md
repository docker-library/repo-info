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
$ docker pull archlinux@sha256:d4594bb2300cba11f41c2f27923eb56f63d9988909c402f9c95517d1e362c899
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:fcee73ea1b96e236248f53a213f71276cc9072d9025b58bce9915e32f19963ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134305420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad77cf4a18d84f94e1e678496f9f5a5f2adc8bd2a62d2f13bf15598c2b214b1b`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.version=20261108.0.623074
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.created=2026-11-08T00:09:13+00:00
# Mon, 09 Nov 2026 22:24:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 09 Nov 2026 22:24:24 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261108.0.623074' /etc/os-release # buildkit
# Mon, 09 Nov 2026 22:24:24 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 22:24:24 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:129cf42f7a5d3019e23ac8c2534dd50c1ca1357e461895917cb31e991fe1a131`  
		Last Modified: Mon, 09 Nov 2026 22:24:50 GMT  
		Size: 134.3 MB (134296701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a46ee1b22da62c3f182f7677c96a30e1cbaf0fa23a2f00e0a53000f0a027a85`  
		Last Modified: Mon, 09 Nov 2026 22:24:47 GMT  
		Size: 8.7 KB (8719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:a62e41b794b62b4e26a0cf95e9d0e333e8e092db1904b3d2fbb616291a742936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad891349756ba9b7577f2bbe734a04b7841658e0848e52a1a4755399efa4cca1`

```dockerfile
```

-	Layers:
	-	`sha256:98c97a538fd50d083fc04e2729c74017b0d339062970d15920ffb8c732422965`  
		Last Modified: Mon, 09 Nov 2026 22:24:47 GMT  
		Size: 8.2 MB (8242560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f75f61ace23515ce6bcd56885cec01aa4cbb98dcf56c4f567111c6ac8d6bb177`  
		Last Modified: Mon, 09 Nov 2026 22:24:47 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20261108.0.623074`

```console
$ docker pull archlinux@sha256:d4594bb2300cba11f41c2f27923eb56f63d9988909c402f9c95517d1e362c899
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20261108.0.623074` - linux; amd64

```console
$ docker pull archlinux@sha256:fcee73ea1b96e236248f53a213f71276cc9072d9025b58bce9915e32f19963ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134305420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad77cf4a18d84f94e1e678496f9f5a5f2adc8bd2a62d2f13bf15598c2b214b1b`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.version=20261108.0.623074
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.created=2026-11-08T00:09:13+00:00
# Mon, 09 Nov 2026 22:24:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 09 Nov 2026 22:24:24 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261108.0.623074' /etc/os-release # buildkit
# Mon, 09 Nov 2026 22:24:24 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 22:24:24 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:129cf42f7a5d3019e23ac8c2534dd50c1ca1357e461895917cb31e991fe1a131`  
		Last Modified: Mon, 09 Nov 2026 22:24:50 GMT  
		Size: 134.3 MB (134296701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a46ee1b22da62c3f182f7677c96a30e1cbaf0fa23a2f00e0a53000f0a027a85`  
		Last Modified: Mon, 09 Nov 2026 22:24:47 GMT  
		Size: 8.7 KB (8719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20261108.0.623074` - unknown; unknown

```console
$ docker pull archlinux@sha256:a62e41b794b62b4e26a0cf95e9d0e333e8e092db1904b3d2fbb616291a742936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad891349756ba9b7577f2bbe734a04b7841658e0848e52a1a4755399efa4cca1`

```dockerfile
```

-	Layers:
	-	`sha256:98c97a538fd50d083fc04e2729c74017b0d339062970d15920ffb8c732422965`  
		Last Modified: Mon, 09 Nov 2026 22:24:47 GMT  
		Size: 8.2 MB (8242560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f75f61ace23515ce6bcd56885cec01aa4cbb98dcf56c4f567111c6ac8d6bb177`  
		Last Modified: Mon, 09 Nov 2026 22:24:47 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:fa2d4ce3310ddd90a4208e5168be8ad367da5129af1245f38fd2d803bcbe3239
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:97119fd9e21219b02b3c14ba256c9d3c0d031d07fc26c836c41ed793beeb5b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.3 MB (309262694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2743e9ec055adcc0ae9c3a4b055aad2daca4c48aedf3198c8213efe440eda8`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.version=20261108.0.623074
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.created=2026-11-08T00:09:13+00:00
# Mon, 09 Nov 2026 22:25:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 09 Nov 2026 22:25:11 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261108.0.623074' /etc/os-release # buildkit
# Mon, 09 Nov 2026 22:25:11 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 22:25:11 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:ead185a5af53375753e7ea309c44caf5614de508649a2a8451467f8dc8542cf0`  
		Last Modified: Mon, 09 Nov 2026 22:26:02 GMT  
		Size: 309.3 MB (309251209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0acbd8168bdeb2695634353d99aeb832106c8227ba711357399479c8bb2db013`  
		Last Modified: Mon, 09 Nov 2026 22:25:55 GMT  
		Size: 11.5 KB (11485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:535823aa08337acb23d8b01a500c8c83ba28e967176532770abda62974992f07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14476760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2a3ff8011c44d92f80e0dc33a3f3f1fb0c3b3f0956e2b337ea6863174db349`

```dockerfile
```

-	Layers:
	-	`sha256:e33165fedd03da945d01ef742c5c4ec4c5e930aa3bc7a5a0641a4ab3c24e4004`  
		Last Modified: Mon, 09 Nov 2026 22:25:56 GMT  
		Size: 14.5 MB (14465049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8a50385a3886d682e86fcd9ccf22bf4f81fc209b28ea4d04cedbbbbdd8ab50`  
		Last Modified: Mon, 09 Nov 2026 22:25:55 GMT  
		Size: 11.7 KB (11711 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20261108.0.623074`

```console
$ docker pull archlinux@sha256:fa2d4ce3310ddd90a4208e5168be8ad367da5129af1245f38fd2d803bcbe3239
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20261108.0.623074` - linux; amd64

```console
$ docker pull archlinux@sha256:97119fd9e21219b02b3c14ba256c9d3c0d031d07fc26c836c41ed793beeb5b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.3 MB (309262694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2743e9ec055adcc0ae9c3a4b055aad2daca4c48aedf3198c8213efe440eda8`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.version=20261108.0.623074
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.created=2026-11-08T00:09:13+00:00
# Mon, 09 Nov 2026 22:25:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 09 Nov 2026 22:25:11 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261108.0.623074' /etc/os-release # buildkit
# Mon, 09 Nov 2026 22:25:11 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 22:25:11 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:ead185a5af53375753e7ea309c44caf5614de508649a2a8451467f8dc8542cf0`  
		Last Modified: Mon, 09 Nov 2026 22:26:02 GMT  
		Size: 309.3 MB (309251209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0acbd8168bdeb2695634353d99aeb832106c8227ba711357399479c8bb2db013`  
		Last Modified: Mon, 09 Nov 2026 22:25:55 GMT  
		Size: 11.5 KB (11485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20261108.0.623074` - unknown; unknown

```console
$ docker pull archlinux@sha256:535823aa08337acb23d8b01a500c8c83ba28e967176532770abda62974992f07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14476760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2a3ff8011c44d92f80e0dc33a3f3f1fb0c3b3f0956e2b337ea6863174db349`

```dockerfile
```

-	Layers:
	-	`sha256:e33165fedd03da945d01ef742c5c4ec4c5e930aa3bc7a5a0641a4ab3c24e4004`  
		Last Modified: Mon, 09 Nov 2026 22:25:56 GMT  
		Size: 14.5 MB (14465049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8a50385a3886d682e86fcd9ccf22bf4f81fc209b28ea4d04cedbbbbdd8ab50`  
		Last Modified: Mon, 09 Nov 2026 22:25:55 GMT  
		Size: 11.7 KB (11711 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:d4594bb2300cba11f41c2f27923eb56f63d9988909c402f9c95517d1e362c899
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:fcee73ea1b96e236248f53a213f71276cc9072d9025b58bce9915e32f19963ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134305420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad77cf4a18d84f94e1e678496f9f5a5f2adc8bd2a62d2f13bf15598c2b214b1b`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.version=20261108.0.623074
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 09 Nov 2026 22:24:21 GMT
LABEL org.opencontainers.image.created=2026-11-08T00:09:13+00:00
# Mon, 09 Nov 2026 22:24:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 09 Nov 2026 22:24:24 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261108.0.623074' /etc/os-release # buildkit
# Mon, 09 Nov 2026 22:24:24 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 22:24:24 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:129cf42f7a5d3019e23ac8c2534dd50c1ca1357e461895917cb31e991fe1a131`  
		Last Modified: Mon, 09 Nov 2026 22:24:50 GMT  
		Size: 134.3 MB (134296701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a46ee1b22da62c3f182f7677c96a30e1cbaf0fa23a2f00e0a53000f0a027a85`  
		Last Modified: Mon, 09 Nov 2026 22:24:47 GMT  
		Size: 8.7 KB (8719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:a62e41b794b62b4e26a0cf95e9d0e333e8e092db1904b3d2fbb616291a742936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad891349756ba9b7577f2bbe734a04b7841658e0848e52a1a4755399efa4cca1`

```dockerfile
```

-	Layers:
	-	`sha256:98c97a538fd50d083fc04e2729c74017b0d339062970d15920ffb8c732422965`  
		Last Modified: Mon, 09 Nov 2026 22:24:47 GMT  
		Size: 8.2 MB (8242560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f75f61ace23515ce6bcd56885cec01aa4cbb98dcf56c4f567111c6ac8d6bb177`  
		Last Modified: Mon, 09 Nov 2026 22:24:47 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:bb587308dbad9c6273a677aadaae2776117b9343292872a443066242c790ca3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:a9406e268ab9bf7436d12713af4e57d77d1cceb35f183a78e617a4d3609df3bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331745633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8cdb4ec1721e9b5c5e213cd8df1dd723b89cd97d711b8c387f1064dbbd25e10`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.version=20261108.0.623074
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.created=2026-11-08T00:09:13+00:00
# Mon, 09 Nov 2026 22:25:27 GMT
COPY /rootfs/ / # buildkit
# Mon, 09 Nov 2026 22:25:35 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261108.0.623074' /etc/os-release # buildkit
# Mon, 09 Nov 2026 22:25:35 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 22:25:35 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:4f209e7718b075805cdfc9e0f03592250d2850dba9b2a710aaa5a57f10ef235e`  
		Last Modified: Mon, 09 Nov 2026 22:26:36 GMT  
		Size: 331.7 MB (331732838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f66dc16b81f5f03617bc11d360a5d421033ca14beeba52d261b012a2c3f4e13`  
		Last Modified: Mon, 09 Nov 2026 22:26:30 GMT  
		Size: 12.8 KB (12795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:4bb3f1cdebd26ac35d9df204e0a2d1813bca597b88904b0568e99e4c7d1ec9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14747903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fce0703c6f9e61c9886875b9f4957a8e69f3edbadf02291a2747b6593d716f0a`

```dockerfile
```

-	Layers:
	-	`sha256:54cf0b3825e3a1c6c30de113d5351603031b5b30cd34db256e68e6d85af32c76`  
		Last Modified: Mon, 09 Nov 2026 22:26:30 GMT  
		Size: 14.7 MB (14736135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:310b36135642125491d22d33df9a540a4a842df7d5dd59c32550e2fa8c25bb8f`  
		Last Modified: Mon, 09 Nov 2026 22:26:30 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20261108.0.623074`

```console
$ docker pull archlinux@sha256:bb587308dbad9c6273a677aadaae2776117b9343292872a443066242c790ca3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20261108.0.623074` - linux; amd64

```console
$ docker pull archlinux@sha256:a9406e268ab9bf7436d12713af4e57d77d1cceb35f183a78e617a4d3609df3bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331745633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8cdb4ec1721e9b5c5e213cd8df1dd723b89cd97d711b8c387f1064dbbd25e10`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.version=20261108.0.623074
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 09 Nov 2026 22:25:27 GMT
LABEL org.opencontainers.image.created=2026-11-08T00:09:13+00:00
# Mon, 09 Nov 2026 22:25:27 GMT
COPY /rootfs/ / # buildkit
# Mon, 09 Nov 2026 22:25:35 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261108.0.623074' /etc/os-release # buildkit
# Mon, 09 Nov 2026 22:25:35 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 22:25:35 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:4f209e7718b075805cdfc9e0f03592250d2850dba9b2a710aaa5a57f10ef235e`  
		Last Modified: Mon, 09 Nov 2026 22:26:36 GMT  
		Size: 331.7 MB (331732838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f66dc16b81f5f03617bc11d360a5d421033ca14beeba52d261b012a2c3f4e13`  
		Last Modified: Mon, 09 Nov 2026 22:26:30 GMT  
		Size: 12.8 KB (12795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20261108.0.623074` - unknown; unknown

```console
$ docker pull archlinux@sha256:4bb3f1cdebd26ac35d9df204e0a2d1813bca597b88904b0568e99e4c7d1ec9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14747903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fce0703c6f9e61c9886875b9f4957a8e69f3edbadf02291a2747b6593d716f0a`

```dockerfile
```

-	Layers:
	-	`sha256:54cf0b3825e3a1c6c30de113d5351603031b5b30cd34db256e68e6d85af32c76`  
		Last Modified: Mon, 09 Nov 2026 22:26:30 GMT  
		Size: 14.7 MB (14736135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:310b36135642125491d22d33df9a540a4a842df7d5dd59c32550e2fa8c25bb8f`  
		Last Modified: Mon, 09 Nov 2026 22:26:30 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
