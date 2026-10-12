<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20261011.0.609700`](#archlinuxbase-202610110609700)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20261011.0.609700`](#archlinuxbase-devel-202610110609700)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20261011.0.609700`](#archlinuxmultilib-devel-202610110609700)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:3c64b538588416593f69a1aebd2f2ec0f2541b29159f32556fa7def2167147a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:363129b67b2bc6c5a634f8fb4961a7e2eba213a2ec075d159127b1260290a722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134063065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a30b4acc83ff841682eb21795e00f7ff030796f5e6fd2a127decd7a45ba7cef`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.version=20261011.0.609700
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.created=2026-10-11T00:09:32+00:00
# Mon, 12 Oct 2026 17:57:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 12 Oct 2026 17:57:16 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261011.0.609700' /etc/os-release # buildkit
# Mon, 12 Oct 2026 17:57:16 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 17:57:16 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:d2cc54e7adee435a81c8b997d4346ca05a3a9639d71e1169d6cd9fb959bedaac`  
		Last Modified: Mon, 12 Oct 2026 17:57:41 GMT  
		Size: 134.1 MB (134054341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55924c9eac0db11dd02b15ee1743734f402b3b22b794909b72b93f7afb7d64b6`  
		Last Modified: Mon, 12 Oct 2026 17:57:38 GMT  
		Size: 8.7 KB (8724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:916246c6a700a0d0ab2fa8bfd4d7eb6596b0beef776d87df561b46bea50b488f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f94292aa9da96a1bbae8dcff13680c39e63d25d6732db41c825bc8b227f5c73`

```dockerfile
```

-	Layers:
	-	`sha256:c26d6a3ac7f66d8acdceea848e11ed79457abf7c35c89db957eb9ee748ee9ffe`  
		Last Modified: Mon, 12 Oct 2026 17:57:38 GMT  
		Size: 8.2 MB (8242403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffb1eb927ce61b647c3d133cdec60a57246a124560030da724ee8f57811f5e75`  
		Last Modified: Mon, 12 Oct 2026 17:57:38 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20261011.0.609700`

```console
$ docker pull archlinux@sha256:3c64b538588416593f69a1aebd2f2ec0f2541b29159f32556fa7def2167147a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20261011.0.609700` - linux; amd64

```console
$ docker pull archlinux@sha256:363129b67b2bc6c5a634f8fb4961a7e2eba213a2ec075d159127b1260290a722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134063065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a30b4acc83ff841682eb21795e00f7ff030796f5e6fd2a127decd7a45ba7cef`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.version=20261011.0.609700
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.created=2026-10-11T00:09:32+00:00
# Mon, 12 Oct 2026 17:57:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 12 Oct 2026 17:57:16 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261011.0.609700' /etc/os-release # buildkit
# Mon, 12 Oct 2026 17:57:16 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 17:57:16 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:d2cc54e7adee435a81c8b997d4346ca05a3a9639d71e1169d6cd9fb959bedaac`  
		Last Modified: Mon, 12 Oct 2026 17:57:41 GMT  
		Size: 134.1 MB (134054341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55924c9eac0db11dd02b15ee1743734f402b3b22b794909b72b93f7afb7d64b6`  
		Last Modified: Mon, 12 Oct 2026 17:57:38 GMT  
		Size: 8.7 KB (8724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20261011.0.609700` - unknown; unknown

```console
$ docker pull archlinux@sha256:916246c6a700a0d0ab2fa8bfd4d7eb6596b0beef776d87df561b46bea50b488f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f94292aa9da96a1bbae8dcff13680c39e63d25d6732db41c825bc8b227f5c73`

```dockerfile
```

-	Layers:
	-	`sha256:c26d6a3ac7f66d8acdceea848e11ed79457abf7c35c89db957eb9ee748ee9ffe`  
		Last Modified: Mon, 12 Oct 2026 17:57:38 GMT  
		Size: 8.2 MB (8242403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffb1eb927ce61b647c3d133cdec60a57246a124560030da724ee8f57811f5e75`  
		Last Modified: Mon, 12 Oct 2026 17:57:38 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:061679925e5d5028f2df9395d441ce6c4b9accf0157ff3486c06b6962e014ef1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:d6979123107e7a9f52c2de19104966b5f809e13a4593017780bd8c0b140f80ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.5 MB (308451882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5addca381813467a44c19a4a80470e37d6757277ec5fb2456cd9082ecc2c0786`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.version=20261011.0.609700
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.created=2026-10-11T00:09:32+00:00
# Mon, 12 Oct 2026 17:57:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 12 Oct 2026 17:57:38 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261011.0.609700' /etc/os-release # buildkit
# Mon, 12 Oct 2026 17:57:38 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 17:57:38 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:25ab4f5b262f237a1160b8aaffb569aacf2177ba424047b453decb8a759488ae`  
		Last Modified: Mon, 12 Oct 2026 17:58:35 GMT  
		Size: 308.4 MB (308440368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f03eb5919290571fb0b0bb63a230ebf312e46ab4c117ec48ceacf6071c9e567d`  
		Last Modified: Mon, 12 Oct 2026 17:58:29 GMT  
		Size: 11.5 KB (11514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:f6c5a84bb62773464b5412b85535d365d7bce27f2f88cf3f99e92bce093b8bbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14462478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78dca47be572a8254644fc7c93ca6c3f427e6ef7a01cd1e6c92f0cfd8af6a894`

```dockerfile
```

-	Layers:
	-	`sha256:9fc7ce12bac17fd8ed5892cf9304fd7cb1d07780dcbac34ed626a83a7533a5e6`  
		Last Modified: Mon, 12 Oct 2026 17:58:30 GMT  
		Size: 14.5 MB (14450766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04022b6a95d6bbe41389216dd2ab3dc7a42d1f13822170a5104e631adce9dc90`  
		Last Modified: Mon, 12 Oct 2026 17:58:29 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20261011.0.609700`

```console
$ docker pull archlinux@sha256:061679925e5d5028f2df9395d441ce6c4b9accf0157ff3486c06b6962e014ef1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20261011.0.609700` - linux; amd64

```console
$ docker pull archlinux@sha256:d6979123107e7a9f52c2de19104966b5f809e13a4593017780bd8c0b140f80ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.5 MB (308451882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5addca381813467a44c19a4a80470e37d6757277ec5fb2456cd9082ecc2c0786`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.version=20261011.0.609700
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 12 Oct 2026 17:57:31 GMT
LABEL org.opencontainers.image.created=2026-10-11T00:09:32+00:00
# Mon, 12 Oct 2026 17:57:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 12 Oct 2026 17:57:38 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261011.0.609700' /etc/os-release # buildkit
# Mon, 12 Oct 2026 17:57:38 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 17:57:38 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:25ab4f5b262f237a1160b8aaffb569aacf2177ba424047b453decb8a759488ae`  
		Last Modified: Mon, 12 Oct 2026 17:58:35 GMT  
		Size: 308.4 MB (308440368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f03eb5919290571fb0b0bb63a230ebf312e46ab4c117ec48ceacf6071c9e567d`  
		Last Modified: Mon, 12 Oct 2026 17:58:29 GMT  
		Size: 11.5 KB (11514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20261011.0.609700` - unknown; unknown

```console
$ docker pull archlinux@sha256:f6c5a84bb62773464b5412b85535d365d7bce27f2f88cf3f99e92bce093b8bbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14462478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78dca47be572a8254644fc7c93ca6c3f427e6ef7a01cd1e6c92f0cfd8af6a894`

```dockerfile
```

-	Layers:
	-	`sha256:9fc7ce12bac17fd8ed5892cf9304fd7cb1d07780dcbac34ed626a83a7533a5e6`  
		Last Modified: Mon, 12 Oct 2026 17:58:30 GMT  
		Size: 14.5 MB (14450766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04022b6a95d6bbe41389216dd2ab3dc7a42d1f13822170a5104e631adce9dc90`  
		Last Modified: Mon, 12 Oct 2026 17:58:29 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:3c64b538588416593f69a1aebd2f2ec0f2541b29159f32556fa7def2167147a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:363129b67b2bc6c5a634f8fb4961a7e2eba213a2ec075d159127b1260290a722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134063065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a30b4acc83ff841682eb21795e00f7ff030796f5e6fd2a127decd7a45ba7cef`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.version=20261011.0.609700
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.created=2026-10-11T00:09:32+00:00
# Mon, 12 Oct 2026 17:57:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 12 Oct 2026 17:57:16 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261011.0.609700' /etc/os-release # buildkit
# Mon, 12 Oct 2026 17:57:16 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 17:57:16 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:d2cc54e7adee435a81c8b997d4346ca05a3a9639d71e1169d6cd9fb959bedaac`  
		Last Modified: Mon, 12 Oct 2026 17:57:41 GMT  
		Size: 134.1 MB (134054341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55924c9eac0db11dd02b15ee1743734f402b3b22b794909b72b93f7afb7d64b6`  
		Last Modified: Mon, 12 Oct 2026 17:57:38 GMT  
		Size: 8.7 KB (8724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:916246c6a700a0d0ab2fa8bfd4d7eb6596b0beef776d87df561b46bea50b488f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f94292aa9da96a1bbae8dcff13680c39e63d25d6732db41c825bc8b227f5c73`

```dockerfile
```

-	Layers:
	-	`sha256:c26d6a3ac7f66d8acdceea848e11ed79457abf7c35c89db957eb9ee748ee9ffe`  
		Last Modified: Mon, 12 Oct 2026 17:57:38 GMT  
		Size: 8.2 MB (8242403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffb1eb927ce61b647c3d133cdec60a57246a124560030da724ee8f57811f5e75`  
		Last Modified: Mon, 12 Oct 2026 17:57:38 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:6378721c2bc81446a4a9ce087f3113c6f8489c9a4ed827f3723ed866aa62f212
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:46faaa57080c344fd24f1d728a54cb179c70ae8416822b01bc6c9291da3ce7af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.9 MB (330918873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf4b719d2e21aee75743d230f985be7ad6118a049324f264d5225c7689fa64a`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.version=20261011.0.609700
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.created=2026-10-11T00:09:32+00:00
# Mon, 12 Oct 2026 17:57:33 GMT
COPY /rootfs/ / # buildkit
# Mon, 12 Oct 2026 17:57:40 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261011.0.609700' /etc/os-release # buildkit
# Mon, 12 Oct 2026 17:57:40 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 17:57:40 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:f0234eb2b8f00daea70988cbd593808d1af3dd73ce5f2e101a74190df16a3c98`  
		Last Modified: Mon, 12 Oct 2026 17:58:39 GMT  
		Size: 330.9 MB (330906145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20fbaa0553b95d123d7ad3dc971e9ce59f2f4ac0e6a54948eec5940ff708cfb5`  
		Last Modified: Mon, 12 Oct 2026 17:58:32 GMT  
		Size: 12.7 KB (12728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:de21139ef9c8a0302edf91fff5bd0b79f0160cb756587e5627bb4b215c2f13c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14733622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87a74012a9868070728e39cc19cb0d369c8e3216c24f9d6c94e3e670a743dd7b`

```dockerfile
```

-	Layers:
	-	`sha256:ecb59ac2a800828230a3745b3a7bbbed10f89b2062e7d1d3bca221b8df08f15e`  
		Last Modified: Mon, 12 Oct 2026 17:58:33 GMT  
		Size: 14.7 MB (14721854 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1f3b0c46160d898507c859f57624277aeb963dfeb52d8f624221c8a9db6fa68`  
		Last Modified: Mon, 12 Oct 2026 17:58:32 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20261011.0.609700`

```console
$ docker pull archlinux@sha256:6378721c2bc81446a4a9ce087f3113c6f8489c9a4ed827f3723ed866aa62f212
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20261011.0.609700` - linux; amd64

```console
$ docker pull archlinux@sha256:46faaa57080c344fd24f1d728a54cb179c70ae8416822b01bc6c9291da3ce7af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.9 MB (330918873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf4b719d2e21aee75743d230f985be7ad6118a049324f264d5225c7689fa64a`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.version=20261011.0.609700
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 12 Oct 2026 17:57:33 GMT
LABEL org.opencontainers.image.created=2026-10-11T00:09:32+00:00
# Mon, 12 Oct 2026 17:57:33 GMT
COPY /rootfs/ / # buildkit
# Mon, 12 Oct 2026 17:57:40 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261011.0.609700' /etc/os-release # buildkit
# Mon, 12 Oct 2026 17:57:40 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 17:57:40 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:f0234eb2b8f00daea70988cbd593808d1af3dd73ce5f2e101a74190df16a3c98`  
		Last Modified: Mon, 12 Oct 2026 17:58:39 GMT  
		Size: 330.9 MB (330906145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20fbaa0553b95d123d7ad3dc971e9ce59f2f4ac0e6a54948eec5940ff708cfb5`  
		Last Modified: Mon, 12 Oct 2026 17:58:32 GMT  
		Size: 12.7 KB (12728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20261011.0.609700` - unknown; unknown

```console
$ docker pull archlinux@sha256:de21139ef9c8a0302edf91fff5bd0b79f0160cb756587e5627bb4b215c2f13c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14733622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87a74012a9868070728e39cc19cb0d369c8e3216c24f9d6c94e3e670a743dd7b`

```dockerfile
```

-	Layers:
	-	`sha256:ecb59ac2a800828230a3745b3a7bbbed10f89b2062e7d1d3bca221b8df08f15e`  
		Last Modified: Mon, 12 Oct 2026 17:58:33 GMT  
		Size: 14.7 MB (14721854 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1f3b0c46160d898507c859f57624277aeb963dfeb52d8f624221c8a9db6fa68`  
		Last Modified: Mon, 12 Oct 2026 17:58:32 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
