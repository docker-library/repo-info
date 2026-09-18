## `archlinux:base-devel-20260913.0.592969`

```console
$ docker pull archlinux@sha256:4894f5a268c696fad671966f383175a13faf433c9d9c88cdd4e32eaa2d18838b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260913.0.592969` - linux; amd64

```console
$ docker pull archlinux@sha256:305558d2bce0b33170f7f7e4ee690633df4b1e0bdfd8194fe45a6545172319ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307653975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4bdccd34e24cae140c5d815dfadb3dab096b2b08d530110054111b22cc7aecf`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Thu, 17 Sep 2026 21:14:32 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Thu, 17 Sep 2026 21:14:32 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:14:39 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Thu, 17 Sep 2026 21:14:39 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:14:39 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:579a0240d65fcab6a1ced830c73a1e910b309d897d1ea8082389dace3d75594d`  
		Last Modified: Mon, 14 Sep 2026 19:06:42 GMT  
		Size: 307.6 MB (307642490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd2c417d4fc236f004df66eb4998e6a2177e3dff40b733d70e523f7667eb54f`  
		Last Modified: Thu, 17 Sep 2026 21:15:30 GMT  
		Size: 11.5 KB (11485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260913.0.592969` - unknown; unknown

```console
$ docker pull archlinux@sha256:4008336ba7478b643b9937f7be320b07f3214a62389e0a46b0e3c7b60b50c86c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14430662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a78991e929a2cce95c8d2edaa444d15c997b68fd34f093d165c7b26d652146d`

```dockerfile
```

-	Layers:
	-	`sha256:bbb8187bac2a7a4c6128ab7662c64e3cb09c08aaeadc8919f0d56a5bde0940ad`  
		Last Modified: Thu, 17 Sep 2026 21:15:31 GMT  
		Size: 14.4 MB (14418950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45157df0636cb2843a054563b9c6ca299f23e3071dd54dd6996911fd49f9e527`  
		Last Modified: Thu, 17 Sep 2026 21:15:30 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
