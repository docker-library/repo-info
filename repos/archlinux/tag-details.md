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
$ docker pull archlinux@sha256:b21322c663be387c0ed9cbc7bbbfe18e41633ad4e7b7c77cfad45f128be20040
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:eb8f6dcc89a38977c9735f10fcf6ae4afe496283e7008eb7a3420cdba31fbd04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133883060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e676a0a26efc7da658cc3763b65e9bd1927de617c30fd2db7a5b405d5cfc4d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.version=20260927.0.600689
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.created=2026-09-27T00:10:06+00:00
# Mon, 28 Sep 2026 19:20:18 GMT
COPY /rootfs/ / # buildkit
# Mon, 28 Sep 2026 19:20:20 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260927.0.600689' /etc/os-release # buildkit
# Mon, 28 Sep 2026 19:20:20 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 19:20:20 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:dcec04a77fe7c3e511a54cd3307f4ac42ace6b414f0850f3d5f9a7bccbfe84a2`  
		Last Modified: Mon, 28 Sep 2026 19:20:45 GMT  
		Size: 133.9 MB (133874354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08e1f66ae546574635af4d79571c9f7baa55fa280173f2cb4e4c29a7dbd10f1`  
		Last Modified: Mon, 28 Sep 2026 19:20:42 GMT  
		Size: 8.7 KB (8706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:335d244f8a607037739778b1eeb7cbc353d9668c74d794b10e38b4f894d73b89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8250560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe78cfddf44e5a4db550e166282493ebf852aa5a0cc3cda21671497f4f34510`

```dockerfile
```

-	Layers:
	-	`sha256:4f1944f4c7eedc0e33b2b1b07401fa27f4f21476d7ec5c9560d60d9c5144bd62`  
		Last Modified: Mon, 28 Sep 2026 19:20:42 GMT  
		Size: 8.2 MB (8238631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:664290887b164cc41622d579ba6997ac1fc6f61094520e00a2169ffbf404df4a`  
		Last Modified: Mon, 28 Sep 2026 19:20:41 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20261004.0.606936`

**does not exist** (yet?)

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:51dd3d24f7fba779e7c471caeee7804c50e8c134ad948e19685a1c83a42facc3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:8edb44f40a0cb5d3e44ef474f02780098ce0084e591c8641bdc01f02f185cc40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.0 MB (308019709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34af4119590d5a3a0f0b5c477b50093954b32886c858c01fcb3c1c543274fea5`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 28 Sep 2026 19:21:42 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 28 Sep 2026 19:21:42 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 28 Sep 2026 19:21:42 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 28 Sep 2026 19:21:42 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 28 Sep 2026 19:21:42 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 28 Sep 2026 19:21:42 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 28 Sep 2026 19:21:42 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 28 Sep 2026 19:21:42 GMT
LABEL org.opencontainers.image.version=20260927.0.600689
# Mon, 28 Sep 2026 19:21:42 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 28 Sep 2026 19:21:42 GMT
LABEL org.opencontainers.image.created=2026-09-27T00:10:06+00:00
# Mon, 28 Sep 2026 19:21:42 GMT
COPY /rootfs/ / # buildkit
# Mon, 28 Sep 2026 19:21:49 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260927.0.600689' /etc/os-release # buildkit
# Mon, 28 Sep 2026 19:21:49 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 19:21:49 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:27af5b1cb8f85fbabef288d4d274bc1cb91aa34e96e8f31766ab6c4cbb53844e`  
		Last Modified: Mon, 28 Sep 2026 19:22:41 GMT  
		Size: 308.0 MB (308008204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe1b2c7e4c0de65cb8100863e2533227dca4ccf6e1c07ce2540ab9ab8e190ab`  
		Last Modified: Mon, 28 Sep 2026 19:22:35 GMT  
		Size: 11.5 KB (11505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:616ca35582fbe6951e54027cbf3278bcb346ec9dab6e648138156cf24079b88f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14459341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759f5bae127a669e775911e7def4ba6890a1ad8b317f363a811326272b06ab7f`

```dockerfile
```

-	Layers:
	-	`sha256:089babf3a676a2ff62c3d689713fdb69a3de91731cbeac93b6b64453c14b4cf2`  
		Last Modified: Mon, 28 Sep 2026 19:22:35 GMT  
		Size: 14.4 MB (14447629 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3668a92c97a10d16ec26a879d79a54d034eb79bb8fc0ccead3a2bd350af2d93e`  
		Last Modified: Mon, 28 Sep 2026 19:22:35 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20261004.0.606936`

**does not exist** (yet?)

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:b21322c663be387c0ed9cbc7bbbfe18e41633ad4e7b7c77cfad45f128be20040
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:eb8f6dcc89a38977c9735f10fcf6ae4afe496283e7008eb7a3420cdba31fbd04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133883060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e676a0a26efc7da658cc3763b65e9bd1927de617c30fd2db7a5b405d5cfc4d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.version=20260927.0.600689
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 28 Sep 2026 19:20:18 GMT
LABEL org.opencontainers.image.created=2026-09-27T00:10:06+00:00
# Mon, 28 Sep 2026 19:20:18 GMT
COPY /rootfs/ / # buildkit
# Mon, 28 Sep 2026 19:20:20 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260927.0.600689' /etc/os-release # buildkit
# Mon, 28 Sep 2026 19:20:20 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 19:20:20 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:dcec04a77fe7c3e511a54cd3307f4ac42ace6b414f0850f3d5f9a7bccbfe84a2`  
		Last Modified: Mon, 28 Sep 2026 19:20:45 GMT  
		Size: 133.9 MB (133874354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08e1f66ae546574635af4d79571c9f7baa55fa280173f2cb4e4c29a7dbd10f1`  
		Last Modified: Mon, 28 Sep 2026 19:20:42 GMT  
		Size: 8.7 KB (8706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:335d244f8a607037739778b1eeb7cbc353d9668c74d794b10e38b4f894d73b89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8250560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe78cfddf44e5a4db550e166282493ebf852aa5a0cc3cda21671497f4f34510`

```dockerfile
```

-	Layers:
	-	`sha256:4f1944f4c7eedc0e33b2b1b07401fa27f4f21476d7ec5c9560d60d9c5144bd62`  
		Last Modified: Mon, 28 Sep 2026 19:20:42 GMT  
		Size: 8.2 MB (8238631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:664290887b164cc41622d579ba6997ac1fc6f61094520e00a2169ffbf404df4a`  
		Last Modified: Mon, 28 Sep 2026 19:20:41 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:c8b647459b2836c213c3382091cd946bd67ae1e484cb6c412f105a8d91370bc6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:bab132758d881b917ce978bb935420c672a8626a5b6846336e49f790ff420c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.5 MB (330502220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37400cd59eb580c486020c3c79d340996e42c96eec08dcf051415adfc83e8ae`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 28 Sep 2026 19:21:24 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 28 Sep 2026 19:21:24 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 28 Sep 2026 19:21:24 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 28 Sep 2026 19:21:24 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 28 Sep 2026 19:21:24 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 28 Sep 2026 19:21:24 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 28 Sep 2026 19:21:24 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 28 Sep 2026 19:21:24 GMT
LABEL org.opencontainers.image.version=20260927.0.600689
# Mon, 28 Sep 2026 19:21:24 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 28 Sep 2026 19:21:24 GMT
LABEL org.opencontainers.image.created=2026-09-27T00:10:06+00:00
# Mon, 28 Sep 2026 19:21:24 GMT
COPY /rootfs/ / # buildkit
# Mon, 28 Sep 2026 19:21:32 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260927.0.600689' /etc/os-release # buildkit
# Mon, 28 Sep 2026 19:21:32 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 19:21:32 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:2cade83a685b7d78a6373d08f7c8d885fd3188244c1a285953bd77be24d46db7`  
		Last Modified: Mon, 28 Sep 2026 19:22:29 GMT  
		Size: 330.5 MB (330489505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a405d9b1716c4a1446431483ce5ef7768afaa805b507ff7e5c6c8fcfec4eb7d`  
		Last Modified: Mon, 28 Sep 2026 19:22:22 GMT  
		Size: 12.7 KB (12715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:60b8f1a3d314a28977736b2c1a4b2fc4cda04f0ea4bb14b023af5d2fba4a9cd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14730485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a85beec15f459f264b55f367a242acac678eacc9d9fc6a85d5596a416086082`

```dockerfile
```

-	Layers:
	-	`sha256:201495d2a74e967f26881c540bb3520ecab2305b021bca381fd53741e3128455`  
		Last Modified: Mon, 28 Sep 2026 19:22:22 GMT  
		Size: 14.7 MB (14718717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c63f00825fedd5588b0b2002e5b510b154d24617af791171531dc52c02da7b4`  
		Last Modified: Mon, 28 Sep 2026 19:22:22 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20261004.0.606936`

**does not exist** (yet?)
