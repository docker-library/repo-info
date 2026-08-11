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
$ docker pull archlinux@sha256:345a872f6c95e082d4b8c050af637eebb57402c6e2177b411c3acf7df84eb33b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:a674898d53cc63b1af4023a468ccddc25ed9d7aecc3996f16171838a57085999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133074676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6e7b9be4b043b727f1544a0d82ac88f0a9bad1f6579934ddb8d60f7e288a2a`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.version=20260802.0.566770
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.created=2026-08-02T00:10:23+00:00
# Mon, 03 Aug 2026 17:47:02 GMT
COPY /rootfs/ / # buildkit
# Mon, 03 Aug 2026 17:47:04 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260802.0.566770' /etc/os-release # buildkit
# Mon, 03 Aug 2026 17:47:04 GMT
ENV LANG=C.UTF-8
# Mon, 03 Aug 2026 17:47:04 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:02c267a58978913be55f4ca7aab498efb8783307576e6deb3b2959d8f03a2582`  
		Last Modified: Mon, 03 Aug 2026 17:47:30 GMT  
		Size: 133.1 MB (133066014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b148d46c3cd1e8a6ea75ace56a24ee5b147df5d31450cc8db6f06dc9806dec`  
		Last Modified: Mon, 03 Aug 2026 17:47:26 GMT  
		Size: 8.7 KB (8662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:2b875b3f505dabf4643e29c9d39f390956c6038cc058ca3be220f34cd04b607e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8204398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7c61cd0ffc45d6c9e2369ce47c48923f05828964e2291512d21e63dad8c5e11`

```dockerfile
```

-	Layers:
	-	`sha256:494ca300ef4589bfd2af65ed4c5ceda7881f2851da82b78599b15c11807cb5ec`  
		Last Modified: Mon, 03 Aug 2026 17:47:27 GMT  
		Size: 8.2 MB (8192469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7da895707cd47b5db58b477499b4fb73759236c9c18e842d78dcfa23ad205a9d`  
		Last Modified: Mon, 03 Aug 2026 17:47:26 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20260809.0.570793`

**does not exist** (yet?)

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:c1829f370be8434135f43fb3acaef1256780804ac3b2d2eec90dfb1232e1ffdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:fae033b815a16f930325c2697e620362be4d2e5d739a301b10ad1fc9c8643a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306781143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22433964ab61fe476301c405cba6ff79d2f0c6d6b4662d60f688d72b4b4564cd`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.version=20260802.0.566770
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.created=2026-08-02T00:10:23+00:00
# Mon, 03 Aug 2026 17:47:59 GMT
COPY /rootfs/ / # buildkit
# Mon, 03 Aug 2026 17:48:06 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260802.0.566770' /etc/os-release # buildkit
# Mon, 03 Aug 2026 17:48:06 GMT
ENV LANG=C.UTF-8
# Mon, 03 Aug 2026 17:48:06 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:17d65cad339120c06d8f02f706502b31d9fc1f2dc7809cb9e83de0d0aa00a027`  
		Last Modified: Mon, 03 Aug 2026 17:48:58 GMT  
		Size: 306.8 MB (306769697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7318fdabbbe3d781b76bcd6649f28d051d1354a99032e1d800888b817fbacbb1`  
		Last Modified: Mon, 03 Aug 2026 17:48:52 GMT  
		Size: 11.4 KB (11446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:69d1e96fb0bc9be8d29df354d570eb47113e1939ce051fcf8f3b1de6ed1e1cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14411006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d1caf1045b97ce3d5716a358f7759de7d18035b489fa0161e6b4f0d0f7e566`

```dockerfile
```

-	Layers:
	-	`sha256:593bd2d6426d7b2002290728ad3f758991efca2d01edd7551b90eef8da3985b0`  
		Last Modified: Mon, 03 Aug 2026 17:48:53 GMT  
		Size: 14.4 MB (14399294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df41c5efd2776f27f14649ad2466be8e4ff1c58ff121385acd5ea735c4d51917`  
		Last Modified: Mon, 03 Aug 2026 17:48:52 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20260809.0.570793`

**does not exist** (yet?)

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:345a872f6c95e082d4b8c050af637eebb57402c6e2177b411c3acf7df84eb33b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:a674898d53cc63b1af4023a468ccddc25ed9d7aecc3996f16171838a57085999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133074676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6e7b9be4b043b727f1544a0d82ac88f0a9bad1f6579934ddb8d60f7e288a2a`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.version=20260802.0.566770
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 03 Aug 2026 17:47:02 GMT
LABEL org.opencontainers.image.created=2026-08-02T00:10:23+00:00
# Mon, 03 Aug 2026 17:47:02 GMT
COPY /rootfs/ / # buildkit
# Mon, 03 Aug 2026 17:47:04 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260802.0.566770' /etc/os-release # buildkit
# Mon, 03 Aug 2026 17:47:04 GMT
ENV LANG=C.UTF-8
# Mon, 03 Aug 2026 17:47:04 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:02c267a58978913be55f4ca7aab498efb8783307576e6deb3b2959d8f03a2582`  
		Last Modified: Mon, 03 Aug 2026 17:47:30 GMT  
		Size: 133.1 MB (133066014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b148d46c3cd1e8a6ea75ace56a24ee5b147df5d31450cc8db6f06dc9806dec`  
		Last Modified: Mon, 03 Aug 2026 17:47:26 GMT  
		Size: 8.7 KB (8662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:2b875b3f505dabf4643e29c9d39f390956c6038cc058ca3be220f34cd04b607e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8204398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7c61cd0ffc45d6c9e2369ce47c48923f05828964e2291512d21e63dad8c5e11`

```dockerfile
```

-	Layers:
	-	`sha256:494ca300ef4589bfd2af65ed4c5ceda7881f2851da82b78599b15c11807cb5ec`  
		Last Modified: Mon, 03 Aug 2026 17:47:27 GMT  
		Size: 8.2 MB (8192469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7da895707cd47b5db58b477499b4fb73759236c9c18e842d78dcfa23ad205a9d`  
		Last Modified: Mon, 03 Aug 2026 17:47:26 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:351a6d85eb7259b59aa80967ea99969dc39089fc416ec3547ebbdc4254006417
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:32185ddac3eaa9b966918e47d359a6375d9d3eaf4393bcf5ca522f41954f61ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329239054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de4abad929ec94339cc0cbfe54f39c5291e9321c0c93b0a0197412e95870514`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.version=20260802.0.566770
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.created=2026-08-02T00:10:23+00:00
# Mon, 03 Aug 2026 17:48:20 GMT
COPY /rootfs/ / # buildkit
# Mon, 03 Aug 2026 17:48:28 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260802.0.566770' /etc/os-release # buildkit
# Mon, 03 Aug 2026 17:48:28 GMT
ENV LANG=C.UTF-8
# Mon, 03 Aug 2026 17:48:28 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:062d3beae4253741a43156d093664d97048f45bae4fc6bccd2f5274f282b4f41`  
		Last Modified: Mon, 03 Aug 2026 17:49:29 GMT  
		Size: 329.2 MB (329226449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ef57b44d228887df03caba8a2a7ce29bc51721fbf05f7d5b2522b1be270121`  
		Last Modified: Mon, 03 Aug 2026 17:49:22 GMT  
		Size: 12.6 KB (12605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:084fd7d33344be80930d9917398123add121fb7d0ef07f17863974f1aed1c577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14682150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6501fd2d53ef4b3786b04ff62bba7c857ff4dd42ed7878b71a66e0719c3525df`

```dockerfile
```

-	Layers:
	-	`sha256:da46b5424d8062831658f4c7f047e3ccfdc454468a55f1cdb20d240017a1b91c`  
		Last Modified: Mon, 03 Aug 2026 17:49:23 GMT  
		Size: 14.7 MB (14670382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a84d5e2ab0e8db7f33005610603812ca3254ed61dac3bf82db0048563da1632`  
		Last Modified: Mon, 03 Aug 2026 17:49:22 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20260809.0.570793`

**does not exist** (yet?)
