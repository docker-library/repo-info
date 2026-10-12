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
