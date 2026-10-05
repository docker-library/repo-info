<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20261004.0.606936`](#archlinuxbase-202610040606936)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20261004.0.606936`](#archlinuxbase-devel-202610040606936)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20261004.0.606936`](#archlinuxmultilib-devel-202610040606936)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:4e77cf2ea5f410e6f8be5abf93ccf17ce2436e87a138c167208356711a405dbd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:2fd1ae548076c67bcd41098ddd44e799058010e8d55f085d453dbb890e706860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.0 MB (134002486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757718cecb34fbe2c56e22b5f6299a45f149c7ce1c9b85def543a340bacdf7af`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.version=20261004.0.606936
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.created=2026-10-04T00:09:23+00:00
# Mon, 05 Oct 2026 18:58:35 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:58:37 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261004.0.606936' /etc/os-release # buildkit
# Mon, 05 Oct 2026 18:58:37 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:58:37 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:9df4a71740bac465174ffcdc445e624409ab822c1738302325b03887fbf75daf`  
		Last Modified: Mon, 05 Oct 2026 18:59:05 GMT  
		Size: 134.0 MB (133993765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97290d28223872e83bae823bbb5bdad6ffb2590145b4cb023bc2faec2e44f45a`  
		Last Modified: Mon, 05 Oct 2026 18:59:01 GMT  
		Size: 8.7 KB (8721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:47b77af30a20115d9a384b7dde43b8b7787a1efaf6d1dfb75cadbe3af7922fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7cbb6615d32730b4b44439053bd4d0d8d6b3e8e820e8a3e1b87f18d3fdb2c19`

```dockerfile
```

-	Layers:
	-	`sha256:4412ab84ec25ddfb67fc1eacd806aafd042afc95b4c781db3da376306652781c`  
		Last Modified: Mon, 05 Oct 2026 18:59:02 GMT  
		Size: 8.2 MB (8242383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e076718d4bf84b1889cdd3793e84857b5687a3e47085144053db160ebaf61439`  
		Last Modified: Mon, 05 Oct 2026 18:59:01 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20261004.0.606936`

```console
$ docker pull archlinux@sha256:4e77cf2ea5f410e6f8be5abf93ccf17ce2436e87a138c167208356711a405dbd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20261004.0.606936` - linux; amd64

```console
$ docker pull archlinux@sha256:2fd1ae548076c67bcd41098ddd44e799058010e8d55f085d453dbb890e706860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.0 MB (134002486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757718cecb34fbe2c56e22b5f6299a45f149c7ce1c9b85def543a340bacdf7af`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.version=20261004.0.606936
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.created=2026-10-04T00:09:23+00:00
# Mon, 05 Oct 2026 18:58:35 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:58:37 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261004.0.606936' /etc/os-release # buildkit
# Mon, 05 Oct 2026 18:58:37 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:58:37 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:9df4a71740bac465174ffcdc445e624409ab822c1738302325b03887fbf75daf`  
		Last Modified: Mon, 05 Oct 2026 18:59:05 GMT  
		Size: 134.0 MB (133993765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97290d28223872e83bae823bbb5bdad6ffb2590145b4cb023bc2faec2e44f45a`  
		Last Modified: Mon, 05 Oct 2026 18:59:01 GMT  
		Size: 8.7 KB (8721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20261004.0.606936` - unknown; unknown

```console
$ docker pull archlinux@sha256:47b77af30a20115d9a384b7dde43b8b7787a1efaf6d1dfb75cadbe3af7922fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7cbb6615d32730b4b44439053bd4d0d8d6b3e8e820e8a3e1b87f18d3fdb2c19`

```dockerfile
```

-	Layers:
	-	`sha256:4412ab84ec25ddfb67fc1eacd806aafd042afc95b4c781db3da376306652781c`  
		Last Modified: Mon, 05 Oct 2026 18:59:02 GMT  
		Size: 8.2 MB (8242383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e076718d4bf84b1889cdd3793e84857b5687a3e47085144053db160ebaf61439`  
		Last Modified: Mon, 05 Oct 2026 18:59:01 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:996c3a1d6b0d87b01242f6fcd8cfa3ad3eece1a67ab5c8f108e20af1d7b97bdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:99e98cdd1c714023ca481b4959c9214415323129530bfc101da2ff50dd9a6106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.3 MB (308253012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f477b4c3b130405b0f9fd36ceaff1c250b84edde9fc68b88c5865b0d276a8de`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.version=20261004.0.606936
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.created=2026-10-04T00:09:23+00:00
# Mon, 05 Oct 2026 18:59:41 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:59:49 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261004.0.606936' /etc/os-release # buildkit
# Mon, 05 Oct 2026 18:59:49 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:59:49 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:888484b0b597e25a0bb2cdc6b392c91607e63ed5d73975ad4116e73b5f0f1f35`  
		Last Modified: Mon, 05 Oct 2026 19:00:47 GMT  
		Size: 308.2 MB (308241519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a93b1ce547ce065ba5304ef7ef4cd754dfdb094037cc6717eef10357d3fa4f3e`  
		Last Modified: Mon, 05 Oct 2026 19:00:39 GMT  
		Size: 11.5 KB (11493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:9ccd38d81ae45fdee18948986f1474cc83648b9f2a6bb270a5be1120313e0f37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14464495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05c048207699d753a03bc4eb548b099b70a291a6c98fc5e36142527c750a936`

```dockerfile
```

-	Layers:
	-	`sha256:3cb3f38c1bc4246bd4370bd6f1766e73f7e8f2ba99cbd14040b77b838cc43098`  
		Last Modified: Mon, 05 Oct 2026 19:00:40 GMT  
		Size: 14.5 MB (14452783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c5d5358f0d12534f459d54667fd0f2afe2ad1b4ae3d21bd2f2dabf4add900e3`  
		Last Modified: Mon, 05 Oct 2026 19:00:39 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20261004.0.606936`

```console
$ docker pull archlinux@sha256:996c3a1d6b0d87b01242f6fcd8cfa3ad3eece1a67ab5c8f108e20af1d7b97bdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20261004.0.606936` - linux; amd64

```console
$ docker pull archlinux@sha256:99e98cdd1c714023ca481b4959c9214415323129530bfc101da2ff50dd9a6106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.3 MB (308253012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f477b4c3b130405b0f9fd36ceaff1c250b84edde9fc68b88c5865b0d276a8de`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.version=20261004.0.606936
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.created=2026-10-04T00:09:23+00:00
# Mon, 05 Oct 2026 18:59:41 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:59:49 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261004.0.606936' /etc/os-release # buildkit
# Mon, 05 Oct 2026 18:59:49 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:59:49 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:888484b0b597e25a0bb2cdc6b392c91607e63ed5d73975ad4116e73b5f0f1f35`  
		Last Modified: Mon, 05 Oct 2026 19:00:47 GMT  
		Size: 308.2 MB (308241519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a93b1ce547ce065ba5304ef7ef4cd754dfdb094037cc6717eef10357d3fa4f3e`  
		Last Modified: Mon, 05 Oct 2026 19:00:39 GMT  
		Size: 11.5 KB (11493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20261004.0.606936` - unknown; unknown

```console
$ docker pull archlinux@sha256:9ccd38d81ae45fdee18948986f1474cc83648b9f2a6bb270a5be1120313e0f37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14464495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05c048207699d753a03bc4eb548b099b70a291a6c98fc5e36142527c750a936`

```dockerfile
```

-	Layers:
	-	`sha256:3cb3f38c1bc4246bd4370bd6f1766e73f7e8f2ba99cbd14040b77b838cc43098`  
		Last Modified: Mon, 05 Oct 2026 19:00:40 GMT  
		Size: 14.5 MB (14452783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c5d5358f0d12534f459d54667fd0f2afe2ad1b4ae3d21bd2f2dabf4add900e3`  
		Last Modified: Mon, 05 Oct 2026 19:00:39 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:4e77cf2ea5f410e6f8be5abf93ccf17ce2436e87a138c167208356711a405dbd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:2fd1ae548076c67bcd41098ddd44e799058010e8d55f085d453dbb890e706860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.0 MB (134002486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757718cecb34fbe2c56e22b5f6299a45f149c7ce1c9b85def543a340bacdf7af`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.version=20261004.0.606936
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.created=2026-10-04T00:09:23+00:00
# Mon, 05 Oct 2026 18:58:35 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:58:37 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261004.0.606936' /etc/os-release # buildkit
# Mon, 05 Oct 2026 18:58:37 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:58:37 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:9df4a71740bac465174ffcdc445e624409ab822c1738302325b03887fbf75daf`  
		Last Modified: Mon, 05 Oct 2026 18:59:05 GMT  
		Size: 134.0 MB (133993765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97290d28223872e83bae823bbb5bdad6ffb2590145b4cb023bc2faec2e44f45a`  
		Last Modified: Mon, 05 Oct 2026 18:59:01 GMT  
		Size: 8.7 KB (8721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:47b77af30a20115d9a384b7dde43b8b7787a1efaf6d1dfb75cadbe3af7922fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7cbb6615d32730b4b44439053bd4d0d8d6b3e8e820e8a3e1b87f18d3fdb2c19`

```dockerfile
```

-	Layers:
	-	`sha256:4412ab84ec25ddfb67fc1eacd806aafd042afc95b4c781db3da376306652781c`  
		Last Modified: Mon, 05 Oct 2026 18:59:02 GMT  
		Size: 8.2 MB (8242383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e076718d4bf84b1889cdd3793e84857b5687a3e47085144053db160ebaf61439`  
		Last Modified: Mon, 05 Oct 2026 18:59:01 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:082944f9c556a61b1f9d45e8b38f06fbbf1572e582a3dd87a3f541fdc66c87e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:d7ca4c67169c56703f0f7a740aa2d2040ff5007ca901d13b9f6186a49321d0cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.7 MB (330731991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee886e5db6935ef4bcd20d8b45194fd78bd104ff7203a4928a6c04a7063785d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.version=20261004.0.606936
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.created=2026-10-04T00:09:23+00:00
# Mon, 05 Oct 2026 19:01:26 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 19:01:33 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261004.0.606936' /etc/os-release # buildkit
# Mon, 05 Oct 2026 19:01:33 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 19:01:33 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:5ca61c9878fa42d0f8bac39a79b4af74914ac07d561238f9615deb2d9eccf1dc`  
		Last Modified: Mon, 05 Oct 2026 19:02:33 GMT  
		Size: 330.7 MB (330719274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1690580bc944c6b0dfe97b3fe9adb40845340db2556a7e3a6a9ae05b08d22174`  
		Last Modified: Mon, 05 Oct 2026 19:02:27 GMT  
		Size: 12.7 KB (12717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:e10f65ff707bb7042bdc1ad68acc8bba074d890eaa2b0249983c9b49e99d1147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14735639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a628e3359fddb920e81db9214497eb1bbec4c4c3dbf76cc062da06dbe1c347`

```dockerfile
```

-	Layers:
	-	`sha256:a0081edd17d5fff27e38ae16d3c81660e8a110a776ab58b29dde51c9943a38bd`  
		Last Modified: Mon, 05 Oct 2026 19:02:27 GMT  
		Size: 14.7 MB (14723871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b967d4ab27c736bdde04a7aab8a099ef9a9c37a2d961f8146e868e64379b9c6e`  
		Last Modified: Mon, 05 Oct 2026 19:02:27 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20261004.0.606936`

```console
$ docker pull archlinux@sha256:082944f9c556a61b1f9d45e8b38f06fbbf1572e582a3dd87a3f541fdc66c87e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20261004.0.606936` - linux; amd64

```console
$ docker pull archlinux@sha256:d7ca4c67169c56703f0f7a740aa2d2040ff5007ca901d13b9f6186a49321d0cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.7 MB (330731991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee886e5db6935ef4bcd20d8b45194fd78bd104ff7203a4928a6c04a7063785d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.version=20261004.0.606936
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.created=2026-10-04T00:09:23+00:00
# Mon, 05 Oct 2026 19:01:26 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 19:01:33 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261004.0.606936' /etc/os-release # buildkit
# Mon, 05 Oct 2026 19:01:33 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 19:01:33 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:5ca61c9878fa42d0f8bac39a79b4af74914ac07d561238f9615deb2d9eccf1dc`  
		Last Modified: Mon, 05 Oct 2026 19:02:33 GMT  
		Size: 330.7 MB (330719274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1690580bc944c6b0dfe97b3fe9adb40845340db2556a7e3a6a9ae05b08d22174`  
		Last Modified: Mon, 05 Oct 2026 19:02:27 GMT  
		Size: 12.7 KB (12717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20261004.0.606936` - unknown; unknown

```console
$ docker pull archlinux@sha256:e10f65ff707bb7042bdc1ad68acc8bba074d890eaa2b0249983c9b49e99d1147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14735639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a628e3359fddb920e81db9214497eb1bbec4c4c3dbf76cc062da06dbe1c347`

```dockerfile
```

-	Layers:
	-	`sha256:a0081edd17d5fff27e38ae16d3c81660e8a110a776ab58b29dde51c9943a38bd`  
		Last Modified: Mon, 05 Oct 2026 19:02:27 GMT  
		Size: 14.7 MB (14723871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b967d4ab27c736bdde04a7aab8a099ef9a9c37a2d961f8146e868e64379b9c6e`  
		Last Modified: Mon, 05 Oct 2026 19:02:27 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
