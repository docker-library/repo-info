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
$ docker pull archlinux@sha256:fe6972d4dc1f660c0c10f4c41b2de8986bab89e7e2955378f8beadb8ebcd7433
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:9edcc183d2505745a1da7a18bf12833dde174734610c72a5978031191504af1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132617799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:782c3fdd491ffc7ab163461313a424649f18dfea92e35d326fba452ad4af75b7`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.version=20260712.0.555161
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.created=2026-07-12T00:09:32+00:00
# Mon, 13 Jul 2026 17:31:40 GMT
COPY /rootfs/ / # buildkit
# Mon, 13 Jul 2026 17:31:43 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260712.0.555161' /etc/os-release # buildkit
# Mon, 13 Jul 2026 17:31:43 GMT
ENV LANG=C.UTF-8
# Mon, 13 Jul 2026 17:31:43 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:79cc0e93916d4b814c45a7080e19b9fa4081aefbbdb9270af33cfbde9f943b9e`  
		Last Modified: Mon, 13 Jul 2026 17:32:08 GMT  
		Size: 132.6 MB (132609152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8391dc5e0f5e3c47080d3a29bc7142ab59b545d9da8eb331aefbd3cef047ba13`  
		Last Modified: Mon, 13 Jul 2026 17:32:05 GMT  
		Size: 8.6 KB (8647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:ff661492033310815ccdccf38cc0008bd7b12a08ae0f3caeb75fb983d8efb15d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8219617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74f690044585b35850c25c9ccb90927856999a5dbd6b1924454e6e16f7cd2f4`

```dockerfile
```

-	Layers:
	-	`sha256:aa41535ae670ba7bb2feff9f53f09a4034866625c63067c3e381a035102ad10e`  
		Last Modified: Mon, 13 Jul 2026 17:32:05 GMT  
		Size: 8.2 MB (8207688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f92f4f8495c51e66ae396b86b424b3d06810bf4692fde51d1cb26916727a25a`  
		Last Modified: Mon, 13 Jul 2026 17:32:04 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20260712.0.555161`

```console
$ docker pull archlinux@sha256:fe6972d4dc1f660c0c10f4c41b2de8986bab89e7e2955378f8beadb8ebcd7433
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20260712.0.555161` - linux; amd64

```console
$ docker pull archlinux@sha256:9edcc183d2505745a1da7a18bf12833dde174734610c72a5978031191504af1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132617799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:782c3fdd491ffc7ab163461313a424649f18dfea92e35d326fba452ad4af75b7`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.version=20260712.0.555161
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.created=2026-07-12T00:09:32+00:00
# Mon, 13 Jul 2026 17:31:40 GMT
COPY /rootfs/ / # buildkit
# Mon, 13 Jul 2026 17:31:43 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260712.0.555161' /etc/os-release # buildkit
# Mon, 13 Jul 2026 17:31:43 GMT
ENV LANG=C.UTF-8
# Mon, 13 Jul 2026 17:31:43 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:79cc0e93916d4b814c45a7080e19b9fa4081aefbbdb9270af33cfbde9f943b9e`  
		Last Modified: Mon, 13 Jul 2026 17:32:08 GMT  
		Size: 132.6 MB (132609152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8391dc5e0f5e3c47080d3a29bc7142ab59b545d9da8eb331aefbd3cef047ba13`  
		Last Modified: Mon, 13 Jul 2026 17:32:05 GMT  
		Size: 8.6 KB (8647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20260712.0.555161` - unknown; unknown

```console
$ docker pull archlinux@sha256:ff661492033310815ccdccf38cc0008bd7b12a08ae0f3caeb75fb983d8efb15d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8219617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74f690044585b35850c25c9ccb90927856999a5dbd6b1924454e6e16f7cd2f4`

```dockerfile
```

-	Layers:
	-	`sha256:aa41535ae670ba7bb2feff9f53f09a4034866625c63067c3e381a035102ad10e`  
		Last Modified: Mon, 13 Jul 2026 17:32:05 GMT  
		Size: 8.2 MB (8207688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f92f4f8495c51e66ae396b86b424b3d06810bf4692fde51d1cb26916727a25a`  
		Last Modified: Mon, 13 Jul 2026 17:32:04 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:212b1e518e94ee9c52be55e8a32da75fcf11e7b5610b80b49479e67880102406
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:d5ae80f3489764be5c8e27fe19b7ebfe876b35d7b42aaa5ab99aff2bf7438c34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.5 MB (305505654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923c58ad3d50f024a21e499c0b4b43777661d0373d45bff60d56d20bc2c0b699`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.version=20260712.0.555161
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.created=2026-07-12T00:09:32+00:00
# Mon, 13 Jul 2026 17:32:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 13 Jul 2026 17:33:04 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260712.0.555161' /etc/os-release # buildkit
# Mon, 13 Jul 2026 17:33:04 GMT
ENV LANG=C.UTF-8
# Mon, 13 Jul 2026 17:33:04 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:033715f1ddb09147c20bf66fe6d6da7face3f7580bc3d5b79a40d59c9dd4f528`  
		Last Modified: Mon, 13 Jul 2026 17:34:02 GMT  
		Size: 305.5 MB (305494172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1cbde703137b434c8904c80101aba662aae8ac00b31abdaf9cd4d47f03be572`  
		Last Modified: Mon, 13 Jul 2026 17:33:55 GMT  
		Size: 11.5 KB (11482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:da2381e8c1ed0381f1dfcf7baed36a970155584a8c70d838f9a3f949152e63cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14419786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfafd8fc71fedce2e20e7733e99698b2e364afaec00525fd2693245e0293ade3`

```dockerfile
```

-	Layers:
	-	`sha256:90b1cd01b2e4ab01e5f26994420c2c6fb34bcedfe319d2b0b90fb98b651cbf56`  
		Last Modified: Mon, 13 Jul 2026 17:33:56 GMT  
		Size: 14.4 MB (14408074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a975db45ecbea5abea16402d106d7b89ec6f7b41d11673bb392a03b8653f85b`  
		Last Modified: Mon, 13 Jul 2026 17:33:55 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20260712.0.555161`

```console
$ docker pull archlinux@sha256:212b1e518e94ee9c52be55e8a32da75fcf11e7b5610b80b49479e67880102406
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260712.0.555161` - linux; amd64

```console
$ docker pull archlinux@sha256:d5ae80f3489764be5c8e27fe19b7ebfe876b35d7b42aaa5ab99aff2bf7438c34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.5 MB (305505654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923c58ad3d50f024a21e499c0b4b43777661d0373d45bff60d56d20bc2c0b699`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.version=20260712.0.555161
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.created=2026-07-12T00:09:32+00:00
# Mon, 13 Jul 2026 17:32:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 13 Jul 2026 17:33:04 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260712.0.555161' /etc/os-release # buildkit
# Mon, 13 Jul 2026 17:33:04 GMT
ENV LANG=C.UTF-8
# Mon, 13 Jul 2026 17:33:04 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:033715f1ddb09147c20bf66fe6d6da7face3f7580bc3d5b79a40d59c9dd4f528`  
		Last Modified: Mon, 13 Jul 2026 17:34:02 GMT  
		Size: 305.5 MB (305494172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1cbde703137b434c8904c80101aba662aae8ac00b31abdaf9cd4d47f03be572`  
		Last Modified: Mon, 13 Jul 2026 17:33:55 GMT  
		Size: 11.5 KB (11482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260712.0.555161` - unknown; unknown

```console
$ docker pull archlinux@sha256:da2381e8c1ed0381f1dfcf7baed36a970155584a8c70d838f9a3f949152e63cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14419786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfafd8fc71fedce2e20e7733e99698b2e364afaec00525fd2693245e0293ade3`

```dockerfile
```

-	Layers:
	-	`sha256:90b1cd01b2e4ab01e5f26994420c2c6fb34bcedfe319d2b0b90fb98b651cbf56`  
		Last Modified: Mon, 13 Jul 2026 17:33:56 GMT  
		Size: 14.4 MB (14408074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a975db45ecbea5abea16402d106d7b89ec6f7b41d11673bb392a03b8653f85b`  
		Last Modified: Mon, 13 Jul 2026 17:33:55 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:fe6972d4dc1f660c0c10f4c41b2de8986bab89e7e2955378f8beadb8ebcd7433
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:9edcc183d2505745a1da7a18bf12833dde174734610c72a5978031191504af1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132617799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:782c3fdd491ffc7ab163461313a424649f18dfea92e35d326fba452ad4af75b7`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.version=20260712.0.555161
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.created=2026-07-12T00:09:32+00:00
# Mon, 13 Jul 2026 17:31:40 GMT
COPY /rootfs/ / # buildkit
# Mon, 13 Jul 2026 17:31:43 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260712.0.555161' /etc/os-release # buildkit
# Mon, 13 Jul 2026 17:31:43 GMT
ENV LANG=C.UTF-8
# Mon, 13 Jul 2026 17:31:43 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:79cc0e93916d4b814c45a7080e19b9fa4081aefbbdb9270af33cfbde9f943b9e`  
		Last Modified: Mon, 13 Jul 2026 17:32:08 GMT  
		Size: 132.6 MB (132609152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8391dc5e0f5e3c47080d3a29bc7142ab59b545d9da8eb331aefbd3cef047ba13`  
		Last Modified: Mon, 13 Jul 2026 17:32:05 GMT  
		Size: 8.6 KB (8647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:ff661492033310815ccdccf38cc0008bd7b12a08ae0f3caeb75fb983d8efb15d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8219617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74f690044585b35850c25c9ccb90927856999a5dbd6b1924454e6e16f7cd2f4`

```dockerfile
```

-	Layers:
	-	`sha256:aa41535ae670ba7bb2feff9f53f09a4034866625c63067c3e381a035102ad10e`  
		Last Modified: Mon, 13 Jul 2026 17:32:05 GMT  
		Size: 8.2 MB (8207688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f92f4f8495c51e66ae396b86b424b3d06810bf4692fde51d1cb26916727a25a`  
		Last Modified: Mon, 13 Jul 2026 17:32:04 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:908268416d7bbd8de0cec8272f98c2b1d50c819436018850a5af0ea223877fee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:9964c4d12f02b59190692572a55a57fd2858aaccc92a50956122be98ba7b78df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.9 MB (327882947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8f5cb0dae3621a345a9ab30f96b3ccdd37238e591baf4191f5321f9b1df981`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.version=20260712.0.555161
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.created=2026-07-12T00:09:32+00:00
# Mon, 13 Jul 2026 17:32:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 13 Jul 2026 17:32:51 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260712.0.555161' /etc/os-release # buildkit
# Mon, 13 Jul 2026 17:32:51 GMT
ENV LANG=C.UTF-8
# Mon, 13 Jul 2026 17:32:51 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:b14e98eecf2ebd9769b1dfb1687b9720b19e0661e57409242279571bb9fcdb2e`  
		Last Modified: Mon, 13 Jul 2026 17:33:48 GMT  
		Size: 327.9 MB (327870356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6c219fea5cea4a98ad5fab2a449d83a32a67cfe5730e9296d7c28bd50f0216`  
		Last Modified: Mon, 13 Jul 2026 17:33:41 GMT  
		Size: 12.6 KB (12591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:64931d1914863a025ec230517af394ce5bbf7f7653c7412de71f768701054723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14689304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149c429ff44d789f05ba09e977efbd7a3d1a062211cc5ebfa042ed6c9b7d3c40`

```dockerfile
```

-	Layers:
	-	`sha256:cd952608373776ae48855a888c5b2c75b79cc22226cdc32da6e7a63307d87213`  
		Last Modified: Mon, 13 Jul 2026 17:33:42 GMT  
		Size: 14.7 MB (14677536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6aad06b170516070a321d243fd5fa6015700fcd18725c5a31873cc906f043aa`  
		Last Modified: Mon, 13 Jul 2026 17:33:41 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20260712.0.555161`

```console
$ docker pull archlinux@sha256:908268416d7bbd8de0cec8272f98c2b1d50c819436018850a5af0ea223877fee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260712.0.555161` - linux; amd64

```console
$ docker pull archlinux@sha256:9964c4d12f02b59190692572a55a57fd2858aaccc92a50956122be98ba7b78df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.9 MB (327882947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8f5cb0dae3621a345a9ab30f96b3ccdd37238e591baf4191f5321f9b1df981`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.version=20260712.0.555161
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.created=2026-07-12T00:09:32+00:00
# Mon, 13 Jul 2026 17:32:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 13 Jul 2026 17:32:51 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260712.0.555161' /etc/os-release # buildkit
# Mon, 13 Jul 2026 17:32:51 GMT
ENV LANG=C.UTF-8
# Mon, 13 Jul 2026 17:32:51 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:b14e98eecf2ebd9769b1dfb1687b9720b19e0661e57409242279571bb9fcdb2e`  
		Last Modified: Mon, 13 Jul 2026 17:33:48 GMT  
		Size: 327.9 MB (327870356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6c219fea5cea4a98ad5fab2a449d83a32a67cfe5730e9296d7c28bd50f0216`  
		Last Modified: Mon, 13 Jul 2026 17:33:41 GMT  
		Size: 12.6 KB (12591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260712.0.555161` - unknown; unknown

```console
$ docker pull archlinux@sha256:64931d1914863a025ec230517af394ce5bbf7f7653c7412de71f768701054723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14689304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149c429ff44d789f05ba09e977efbd7a3d1a062211cc5ebfa042ed6c9b7d3c40`

```dockerfile
```

-	Layers:
	-	`sha256:cd952608373776ae48855a888c5b2c75b79cc22226cdc32da6e7a63307d87213`  
		Last Modified: Mon, 13 Jul 2026 17:33:42 GMT  
		Size: 14.7 MB (14677536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6aad06b170516070a321d243fd5fa6015700fcd18725c5a31873cc906f043aa`  
		Last Modified: Mon, 13 Jul 2026 17:33:41 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
