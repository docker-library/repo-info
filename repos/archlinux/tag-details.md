<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20260719.0.558177`](#archlinuxbase-202607190558177)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20260719.0.558177`](#archlinuxbase-devel-202607190558177)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20260719.0.558177`](#archlinuxmultilib-devel-202607190558177)

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

## `archlinux:base-20260719.0.558177`

```console
$ docker pull archlinux@sha256:592e11bd99ab579f933a0cb77a8f66e2f3ae57f5eafacf13aea44a6e98ef21ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20260719.0.558177` - linux; amd64

```console
$ docker pull archlinux@sha256:5ad8aef51c0535fa9845cce4ae9875624483b868a8aa0fe84b9b1ae3f9dcbb26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132906350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5fa677a6615cfcb63153dd4ccaafc55fdb4c6133a98334a895edc294bc4257`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.version=20260719.0.558177
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.created=2026-07-19T00:09:41+00:00
# Mon, 20 Jul 2026 18:37:43 GMT
COPY /rootfs/ / # buildkit
# Mon, 20 Jul 2026 18:37:45 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260719.0.558177' /etc/os-release # buildkit
# Mon, 20 Jul 2026 18:37:45 GMT
ENV LANG=C.UTF-8
# Mon, 20 Jul 2026 18:37:45 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:ba7c788549e97db7fb7d2a8e946c9396d90d82e9552b21a148b93843c5442f21`  
		Last Modified: Mon, 20 Jul 2026 18:38:12 GMT  
		Size: 132.9 MB (132897674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa584ff2f2f43b0cc25544200b4f67df0664a06e93fc0beaec9c84feed8ca51`  
		Last Modified: Mon, 20 Jul 2026 18:38:08 GMT  
		Size: 8.7 KB (8676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20260719.0.558177` - unknown; unknown

```console
$ docker pull archlinux@sha256:9d48ba37fab9f5ca36e745f26d81d1b79083c84cbb2f25d1883d28bbd49a872f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8219023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6818dc9f4920d18ae41128af7f01b4411d394483593cf54c937283dc2f444973`

```dockerfile
```

-	Layers:
	-	`sha256:75b8231e2031b11e07701ca323c0c178185ff28caf0bfc01bb5f617255c0dbc3`  
		Last Modified: Mon, 20 Jul 2026 18:38:09 GMT  
		Size: 8.2 MB (8207094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eef90961e9d9b2f8f959b2fd73942638eae6fdf52ea1564384e1c3b8cb9ab4fe`  
		Last Modified: Mon, 20 Jul 2026 18:38:08 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:412efebb0eeef0ef322ff24ad73f82b1ba2d3b12377db4c5fbe3074c7e7e8678
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:bf0af8920a0e70715207d9c4f463ebac321db72748db2b8a391b639696965d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.9 MB (305853503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d47d5bfe559578f78143624017e155915db3b38553cfb5d04482861fa166ffc`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.version=20260719.0.558177
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.created=2026-07-19T00:09:41+00:00
# Mon, 20 Jul 2026 18:39:08 GMT
COPY /rootfs/ / # buildkit
# Mon, 20 Jul 2026 18:39:15 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260719.0.558177' /etc/os-release # buildkit
# Mon, 20 Jul 2026 18:39:15 GMT
ENV LANG=C.UTF-8
# Mon, 20 Jul 2026 18:39:15 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:214090e279267bc95c6b0262e6e9613abeb2b2234bd42846093fae23b9b0a1c8`  
		Last Modified: Mon, 20 Jul 2026 18:40:07 GMT  
		Size: 305.8 MB (305842026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9baa1c94a47480aeace434a16b3e1f833064163c29ba04174d2e4a73e3cade`  
		Last Modified: Mon, 20 Jul 2026 18:40:01 GMT  
		Size: 11.5 KB (11477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:b65068766be4b2e55952d02aa05121b4ebc30c8d4ca17592491f99468872ccff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14420396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:567373cba12246e0dc1a2340124ef7a460d65b83e7a9bee03842840caa22bbe8`

```dockerfile
```

-	Layers:
	-	`sha256:2b01731f9b8a9116843dbc5d9ab2732c03a7b6c253744d6560c70dcdf959f544`  
		Last Modified: Mon, 20 Jul 2026 18:40:01 GMT  
		Size: 14.4 MB (14408684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b8c6cc8309e2b49e78c39fb0b69595b1596c7ecdf27dc326a5c4d2b276597bf`  
		Last Modified: Mon, 20 Jul 2026 18:40:01 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20260719.0.558177`

```console
$ docker pull archlinux@sha256:412efebb0eeef0ef322ff24ad73f82b1ba2d3b12377db4c5fbe3074c7e7e8678
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260719.0.558177` - linux; amd64

```console
$ docker pull archlinux@sha256:bf0af8920a0e70715207d9c4f463ebac321db72748db2b8a391b639696965d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.9 MB (305853503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d47d5bfe559578f78143624017e155915db3b38553cfb5d04482861fa166ffc`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.version=20260719.0.558177
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.created=2026-07-19T00:09:41+00:00
# Mon, 20 Jul 2026 18:39:08 GMT
COPY /rootfs/ / # buildkit
# Mon, 20 Jul 2026 18:39:15 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260719.0.558177' /etc/os-release # buildkit
# Mon, 20 Jul 2026 18:39:15 GMT
ENV LANG=C.UTF-8
# Mon, 20 Jul 2026 18:39:15 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:214090e279267bc95c6b0262e6e9613abeb2b2234bd42846093fae23b9b0a1c8`  
		Last Modified: Mon, 20 Jul 2026 18:40:07 GMT  
		Size: 305.8 MB (305842026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9baa1c94a47480aeace434a16b3e1f833064163c29ba04174d2e4a73e3cade`  
		Last Modified: Mon, 20 Jul 2026 18:40:01 GMT  
		Size: 11.5 KB (11477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260719.0.558177` - unknown; unknown

```console
$ docker pull archlinux@sha256:b65068766be4b2e55952d02aa05121b4ebc30c8d4ca17592491f99468872ccff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14420396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:567373cba12246e0dc1a2340124ef7a460d65b83e7a9bee03842840caa22bbe8`

```dockerfile
```

-	Layers:
	-	`sha256:2b01731f9b8a9116843dbc5d9ab2732c03a7b6c253744d6560c70dcdf959f544`  
		Last Modified: Mon, 20 Jul 2026 18:40:01 GMT  
		Size: 14.4 MB (14408684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b8c6cc8309e2b49e78c39fb0b69595b1596c7ecdf27dc326a5c4d2b276597bf`  
		Last Modified: Mon, 20 Jul 2026 18:40:01 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:592e11bd99ab579f933a0cb77a8f66e2f3ae57f5eafacf13aea44a6e98ef21ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:5ad8aef51c0535fa9845cce4ae9875624483b868a8aa0fe84b9b1ae3f9dcbb26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132906350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5fa677a6615cfcb63153dd4ccaafc55fdb4c6133a98334a895edc294bc4257`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.version=20260719.0.558177
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.created=2026-07-19T00:09:41+00:00
# Mon, 20 Jul 2026 18:37:43 GMT
COPY /rootfs/ / # buildkit
# Mon, 20 Jul 2026 18:37:45 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260719.0.558177' /etc/os-release # buildkit
# Mon, 20 Jul 2026 18:37:45 GMT
ENV LANG=C.UTF-8
# Mon, 20 Jul 2026 18:37:45 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:ba7c788549e97db7fb7d2a8e946c9396d90d82e9552b21a148b93843c5442f21`  
		Last Modified: Mon, 20 Jul 2026 18:38:12 GMT  
		Size: 132.9 MB (132897674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa584ff2f2f43b0cc25544200b4f67df0664a06e93fc0beaec9c84feed8ca51`  
		Last Modified: Mon, 20 Jul 2026 18:38:08 GMT  
		Size: 8.7 KB (8676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:9d48ba37fab9f5ca36e745f26d81d1b79083c84cbb2f25d1883d28bbd49a872f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8219023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6818dc9f4920d18ae41128af7f01b4411d394483593cf54c937283dc2f444973`

```dockerfile
```

-	Layers:
	-	`sha256:75b8231e2031b11e07701ca323c0c178185ff28caf0bfc01bb5f617255c0dbc3`  
		Last Modified: Mon, 20 Jul 2026 18:38:09 GMT  
		Size: 8.2 MB (8207094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eef90961e9d9b2f8f959b2fd73942638eae6fdf52ea1564384e1c3b8cb9ab4fe`  
		Last Modified: Mon, 20 Jul 2026 18:38:08 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:62e879ed5dc984360ec0c067ccd631a99da7a385b4b46709c3af27d1df919496
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:d032a5254d6e25ff83274f5854fbbc750ac05209547f340762dd1fa8cc25648e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.2 MB (328226858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855bd97ec7e77a3f728926aab791fe726eefd4faf404c81401b1f4688e350013`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.version=20260719.0.558177
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.created=2026-07-19T00:09:41+00:00
# Mon, 20 Jul 2026 18:38:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 20 Jul 2026 18:38:56 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260719.0.558177' /etc/os-release # buildkit
# Mon, 20 Jul 2026 18:38:56 GMT
ENV LANG=C.UTF-8
# Mon, 20 Jul 2026 18:38:56 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:39fb84fc7037abcad6f5574d167f0d0ec08bc11df850ee299c4c18e9fa2a5972`  
		Last Modified: Mon, 20 Jul 2026 18:39:54 GMT  
		Size: 328.2 MB (328214233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f5b73cc1d27de7e47c23e1dfad035ad785289e77ca812a337f3c9e9e759e89`  
		Last Modified: Mon, 20 Jul 2026 18:39:47 GMT  
		Size: 12.6 KB (12625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:95d9aff467b2d8f078aa84ffe24b435fddcd86682c7a34ce97599a0e817ba398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14689914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138f4e0486585bf7cdef7c14b6f851cf0575c24cb9f11f4ef5e2199d703b6d48`

```dockerfile
```

-	Layers:
	-	`sha256:f49e980c0d9752934be1047b640e7269352368210d3d0c4e007ab379ce941305`  
		Last Modified: Mon, 20 Jul 2026 18:39:48 GMT  
		Size: 14.7 MB (14678146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:361e64c44a3116e94669cd7c639b3d837564eab2b8f5ba359479db47cf03ce51`  
		Last Modified: Mon, 20 Jul 2026 18:39:47 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20260719.0.558177`

```console
$ docker pull archlinux@sha256:62e879ed5dc984360ec0c067ccd631a99da7a385b4b46709c3af27d1df919496
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260719.0.558177` - linux; amd64

```console
$ docker pull archlinux@sha256:d032a5254d6e25ff83274f5854fbbc750ac05209547f340762dd1fa8cc25648e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.2 MB (328226858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855bd97ec7e77a3f728926aab791fe726eefd4faf404c81401b1f4688e350013`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.version=20260719.0.558177
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.created=2026-07-19T00:09:41+00:00
# Mon, 20 Jul 2026 18:38:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 20 Jul 2026 18:38:56 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260719.0.558177' /etc/os-release # buildkit
# Mon, 20 Jul 2026 18:38:56 GMT
ENV LANG=C.UTF-8
# Mon, 20 Jul 2026 18:38:56 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:39fb84fc7037abcad6f5574d167f0d0ec08bc11df850ee299c4c18e9fa2a5972`  
		Last Modified: Mon, 20 Jul 2026 18:39:54 GMT  
		Size: 328.2 MB (328214233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f5b73cc1d27de7e47c23e1dfad035ad785289e77ca812a337f3c9e9e759e89`  
		Last Modified: Mon, 20 Jul 2026 18:39:47 GMT  
		Size: 12.6 KB (12625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260719.0.558177` - unknown; unknown

```console
$ docker pull archlinux@sha256:95d9aff467b2d8f078aa84ffe24b435fddcd86682c7a34ce97599a0e817ba398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14689914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138f4e0486585bf7cdef7c14b6f851cf0575c24cb9f11f4ef5e2199d703b6d48`

```dockerfile
```

-	Layers:
	-	`sha256:f49e980c0d9752934be1047b640e7269352368210d3d0c4e007ab379ce941305`  
		Last Modified: Mon, 20 Jul 2026 18:39:48 GMT  
		Size: 14.7 MB (14678146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:361e64c44a3116e94669cd7c639b3d837564eab2b8f5ba359479db47cf03ce51`  
		Last Modified: Mon, 20 Jul 2026 18:39:47 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
