<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20261122.0.629543`](#archlinuxbase-202611220629543)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20261122.0.629543`](#archlinuxbase-devel-202611220629543)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20261122.0.629543`](#archlinuxmultilib-devel-202611220629543)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:375a401bb3c6376b37f40b6dfa25067db37ec78d0b7af67ae6315f43a0184a9d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:bddb91b7a73f31ed6be307fc8ec75e5dd59ff8ccf6c5a1bbb8205f14702c6b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.5 MB (134455004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac611c6bb2137d875108771a929336cfb66c24323d7131313a734f5feba7e47d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.version=20261122.0.629543
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.created=2026-11-22T00:09:11+00:00
# Mon, 23 Nov 2026 18:21:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 18:21:51 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261122.0.629543' /etc/os-release # buildkit
# Mon, 23 Nov 2026 18:21:51 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 18:21:51 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:3a05bbf5bc1be154e0b91d649e7c115c53fc0cd4f733fa398569471b3ffdbd50`  
		Last Modified: Mon, 23 Nov 2026 18:22:15 GMT  
		Size: 134.4 MB (134446289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b31e1de0029782ca04a2508095d5bf1d79fc9edf5176beddf73fd8e95cb2eb7`  
		Last Modified: Mon, 23 Nov 2026 18:22:12 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:95df6da84294dbba68c73cddc7a307afa2df1b6ab926c7a04335d2835279ca12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8252625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9dd3010403fb1c1c22e71bb4378a254e7f14108dfdea9acc9a36e25ec49c36`

```dockerfile
```

-	Layers:
	-	`sha256:25917d61409bfbc163eee6fd6fe0b26c43f50cf4b57b2221a533da26fbd37eda`  
		Last Modified: Mon, 23 Nov 2026 18:22:12 GMT  
		Size: 8.2 MB (8240696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87369c6c095894d57f0c40481ca519539bf74c2c8505dc8bc8d46b1a6c843d92`  
		Last Modified: Mon, 23 Nov 2026 18:22:12 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20261122.0.629543`

```console
$ docker pull archlinux@sha256:375a401bb3c6376b37f40b6dfa25067db37ec78d0b7af67ae6315f43a0184a9d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20261122.0.629543` - linux; amd64

```console
$ docker pull archlinux@sha256:bddb91b7a73f31ed6be307fc8ec75e5dd59ff8ccf6c5a1bbb8205f14702c6b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.5 MB (134455004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac611c6bb2137d875108771a929336cfb66c24323d7131313a734f5feba7e47d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.version=20261122.0.629543
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.created=2026-11-22T00:09:11+00:00
# Mon, 23 Nov 2026 18:21:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 18:21:51 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261122.0.629543' /etc/os-release # buildkit
# Mon, 23 Nov 2026 18:21:51 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 18:21:51 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:3a05bbf5bc1be154e0b91d649e7c115c53fc0cd4f733fa398569471b3ffdbd50`  
		Last Modified: Mon, 23 Nov 2026 18:22:15 GMT  
		Size: 134.4 MB (134446289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b31e1de0029782ca04a2508095d5bf1d79fc9edf5176beddf73fd8e95cb2eb7`  
		Last Modified: Mon, 23 Nov 2026 18:22:12 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20261122.0.629543` - unknown; unknown

```console
$ docker pull archlinux@sha256:95df6da84294dbba68c73cddc7a307afa2df1b6ab926c7a04335d2835279ca12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8252625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9dd3010403fb1c1c22e71bb4378a254e7f14108dfdea9acc9a36e25ec49c36`

```dockerfile
```

-	Layers:
	-	`sha256:25917d61409bfbc163eee6fd6fe0b26c43f50cf4b57b2221a533da26fbd37eda`  
		Last Modified: Mon, 23 Nov 2026 18:22:12 GMT  
		Size: 8.2 MB (8240696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87369c6c095894d57f0c40481ca519539bf74c2c8505dc8bc8d46b1a6c843d92`  
		Last Modified: Mon, 23 Nov 2026 18:22:12 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:949ecb1661609ab7e8f6854ba03efd62792e7a796313738e94b040c095c20d91
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:a1d4b509c51fc68dcc7ee1f88342fe26b1f65e6775c3aff26f196141e6c76a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.7 MB (312693534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb9f409a8e98ea6e6228c56c56fc4c01a9a20d13942a1ba7d8f059a7bb8e9ea4`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.version=20261122.0.629543
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.created=2026-11-22T00:09:11+00:00
# Mon, 23 Nov 2026 18:22:51 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 18:22:58 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261122.0.629543' /etc/os-release # buildkit
# Mon, 23 Nov 2026 18:22:58 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 18:22:58 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:610cc7f1a62dcd681dfc9520e819497230deff64cd5c2bc717398aa12f96a29f`  
		Last Modified: Mon, 23 Nov 2026 18:23:52 GMT  
		Size: 312.7 MB (312681967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7d07545b3b4a665db6240e1d790b90da7f5079940ad76604ba62872e400690`  
		Last Modified: Mon, 23 Nov 2026 18:23:46 GMT  
		Size: 11.6 KB (11567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:7b87de56a9080377600c20dabf21ca358a4e3a7ba7fbb14cd84fb475db82d1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14573871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56305983739b871fa511cd6f8ee0e9c0f388d8d70600136c951a157587a82140`

```dockerfile
```

-	Layers:
	-	`sha256:6143a5a1d283383ab2b24ac86813fb80fadea39950f32f28ab5fa4ad7c872c5e`  
		Last Modified: Mon, 23 Nov 2026 18:23:47 GMT  
		Size: 14.6 MB (14562159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5a42cb7c569ed197938e16435d554b3f72bd18cec3e22b9a805e52b712d7594`  
		Last Modified: Mon, 23 Nov 2026 18:23:46 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20261122.0.629543`

```console
$ docker pull archlinux@sha256:949ecb1661609ab7e8f6854ba03efd62792e7a796313738e94b040c095c20d91
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20261122.0.629543` - linux; amd64

```console
$ docker pull archlinux@sha256:a1d4b509c51fc68dcc7ee1f88342fe26b1f65e6775c3aff26f196141e6c76a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.7 MB (312693534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb9f409a8e98ea6e6228c56c56fc4c01a9a20d13942a1ba7d8f059a7bb8e9ea4`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.version=20261122.0.629543
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.created=2026-11-22T00:09:11+00:00
# Mon, 23 Nov 2026 18:22:51 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 18:22:58 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261122.0.629543' /etc/os-release # buildkit
# Mon, 23 Nov 2026 18:22:58 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 18:22:58 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:610cc7f1a62dcd681dfc9520e819497230deff64cd5c2bc717398aa12f96a29f`  
		Last Modified: Mon, 23 Nov 2026 18:23:52 GMT  
		Size: 312.7 MB (312681967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7d07545b3b4a665db6240e1d790b90da7f5079940ad76604ba62872e400690`  
		Last Modified: Mon, 23 Nov 2026 18:23:46 GMT  
		Size: 11.6 KB (11567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20261122.0.629543` - unknown; unknown

```console
$ docker pull archlinux@sha256:7b87de56a9080377600c20dabf21ca358a4e3a7ba7fbb14cd84fb475db82d1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14573871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56305983739b871fa511cd6f8ee0e9c0f388d8d70600136c951a157587a82140`

```dockerfile
```

-	Layers:
	-	`sha256:6143a5a1d283383ab2b24ac86813fb80fadea39950f32f28ab5fa4ad7c872c5e`  
		Last Modified: Mon, 23 Nov 2026 18:23:47 GMT  
		Size: 14.6 MB (14562159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5a42cb7c569ed197938e16435d554b3f72bd18cec3e22b9a805e52b712d7594`  
		Last Modified: Mon, 23 Nov 2026 18:23:46 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:375a401bb3c6376b37f40b6dfa25067db37ec78d0b7af67ae6315f43a0184a9d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:bddb91b7a73f31ed6be307fc8ec75e5dd59ff8ccf6c5a1bbb8205f14702c6b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.5 MB (134455004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac611c6bb2137d875108771a929336cfb66c24323d7131313a734f5feba7e47d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.version=20261122.0.629543
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.created=2026-11-22T00:09:11+00:00
# Mon, 23 Nov 2026 18:21:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 18:21:51 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261122.0.629543' /etc/os-release # buildkit
# Mon, 23 Nov 2026 18:21:51 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 18:21:51 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:3a05bbf5bc1be154e0b91d649e7c115c53fc0cd4f733fa398569471b3ffdbd50`  
		Last Modified: Mon, 23 Nov 2026 18:22:15 GMT  
		Size: 134.4 MB (134446289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b31e1de0029782ca04a2508095d5bf1d79fc9edf5176beddf73fd8e95cb2eb7`  
		Last Modified: Mon, 23 Nov 2026 18:22:12 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:95df6da84294dbba68c73cddc7a307afa2df1b6ab926c7a04335d2835279ca12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8252625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9dd3010403fb1c1c22e71bb4378a254e7f14108dfdea9acc9a36e25ec49c36`

```dockerfile
```

-	Layers:
	-	`sha256:25917d61409bfbc163eee6fd6fe0b26c43f50cf4b57b2221a533da26fbd37eda`  
		Last Modified: Mon, 23 Nov 2026 18:22:12 GMT  
		Size: 8.2 MB (8240696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87369c6c095894d57f0c40481ca519539bf74c2c8505dc8bc8d46b1a6c843d92`  
		Last Modified: Mon, 23 Nov 2026 18:22:12 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:c82eff9dbc25b4c24276e04e69662f585da769edd195af525276dc1efe7fc568
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:5b99891d2379f15b87c94fe061d52b5c1f9e74108d325879046afed1d2885e45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.2 MB (335170786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8feec9c9c4f5f8d8ea7c1e9ef7314bb4202946e12e1c50fb9d7661cc9dd66e69`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.version=20261122.0.629543
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.created=2026-11-22T00:09:11+00:00
# Mon, 23 Nov 2026 18:24:29 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 18:24:37 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261122.0.629543' /etc/os-release # buildkit
# Mon, 23 Nov 2026 18:24:37 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 18:24:37 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:2e4d85deb079424cc440672f4a12b00b75fb2cd2cb9e98b73631e64da373b535`  
		Last Modified: Mon, 23 Nov 2026 18:25:33 GMT  
		Size: 335.2 MB (335158011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c323e6fbbaa20ace2d811477fc9feb089e87ce6e5c44e49320aa42c2903b5c31`  
		Last Modified: Mon, 23 Nov 2026 18:25:27 GMT  
		Size: 12.8 KB (12775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:39c0a98ca79f1432594fdca63737fe4bf91dddbb8484e5cf648b6492184f1d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14845015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e88778338b8ede3acb25a94ac2a801b961d51a9b5f69d0009675d769f1aeaa`

```dockerfile
```

-	Layers:
	-	`sha256:72b2a0784b504ee12dd58d822694e706ac6a7c7f585e6453e334f04a2231018c`  
		Last Modified: Mon, 23 Nov 2026 18:25:28 GMT  
		Size: 14.8 MB (14833247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11aa3d120b6655b1409d7801417ef6196de796962488b932987e1569c2aefcab`  
		Last Modified: Mon, 23 Nov 2026 18:25:27 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20261122.0.629543`

```console
$ docker pull archlinux@sha256:c82eff9dbc25b4c24276e04e69662f585da769edd195af525276dc1efe7fc568
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20261122.0.629543` - linux; amd64

```console
$ docker pull archlinux@sha256:5b99891d2379f15b87c94fe061d52b5c1f9e74108d325879046afed1d2885e45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.2 MB (335170786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8feec9c9c4f5f8d8ea7c1e9ef7314bb4202946e12e1c50fb9d7661cc9dd66e69`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.version=20261122.0.629543
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 23 Nov 2026 18:24:29 GMT
LABEL org.opencontainers.image.created=2026-11-22T00:09:11+00:00
# Mon, 23 Nov 2026 18:24:29 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 18:24:37 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261122.0.629543' /etc/os-release # buildkit
# Mon, 23 Nov 2026 18:24:37 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 18:24:37 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:2e4d85deb079424cc440672f4a12b00b75fb2cd2cb9e98b73631e64da373b535`  
		Last Modified: Mon, 23 Nov 2026 18:25:33 GMT  
		Size: 335.2 MB (335158011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c323e6fbbaa20ace2d811477fc9feb089e87ce6e5c44e49320aa42c2903b5c31`  
		Last Modified: Mon, 23 Nov 2026 18:25:27 GMT  
		Size: 12.8 KB (12775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20261122.0.629543` - unknown; unknown

```console
$ docker pull archlinux@sha256:39c0a98ca79f1432594fdca63737fe4bf91dddbb8484e5cf648b6492184f1d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14845015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e88778338b8ede3acb25a94ac2a801b961d51a9b5f69d0009675d769f1aeaa`

```dockerfile
```

-	Layers:
	-	`sha256:72b2a0784b504ee12dd58d822694e706ac6a7c7f585e6453e334f04a2231018c`  
		Last Modified: Mon, 23 Nov 2026 18:25:28 GMT  
		Size: 14.8 MB (14833247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11aa3d120b6655b1409d7801417ef6196de796962488b932987e1569c2aefcab`  
		Last Modified: Mon, 23 Nov 2026 18:25:27 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
