## `archlinux:base-devel-20261018.0.612668`

```console
$ docker pull archlinux@sha256:3cbf69d2d5958d6a294f3722c5668e6187c4df8e00fa27f72352f0bf83e495e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20261018.0.612668` - linux; amd64

```console
$ docker pull archlinux@sha256:2acfa2683d458b7803b7aa4ee3c139d2ba6922cd84666fcb7496a3a02fcc4c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.6 MB (308569882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44c728aafdd99305434b8593254164110e4f44cf2e35e7fa42d5cdb38d3ec11`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Wed, 21 Oct 2026 21:05:36 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Wed, 21 Oct 2026 21:05:36 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 21:05:43 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Wed, 21 Oct 2026 21:05:43 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:05:43 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:2fa36ba04d1ebe963bd56848143685147186905057ce6874df2d1680bbf80247`  
		Last Modified: Mon, 19 Oct 2026 17:56:10 GMT  
		Size: 308.6 MB (308558390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865ed116d3d2a0b24529d3b0117f6f4e471ce9cba3865e0f5c3c3d441aeb3e42`  
		Last Modified: Wed, 21 Oct 2026 21:06:28 GMT  
		Size: 11.5 KB (11492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20261018.0.612668` - unknown; unknown

```console
$ docker pull archlinux@sha256:a12b521bf2ed115c916c56f8be47bfc31fa392af223fdc9a282afd1ffd2afdb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14463776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e047cd401c01a7953989b9637a1b1b3e938262c5a7638a6c84aae6cabbfc1c`

```dockerfile
```

-	Layers:
	-	`sha256:511e903e5155657586aa62e1a91532be92cdd8f9ddcd0e1f548238af1d43413c`  
		Last Modified: Wed, 21 Oct 2026 21:06:29 GMT  
		Size: 14.5 MB (14452064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01cc7eda13e4bd3ddccbef1561fca5eb483af202a1873f2da7cb1744a051b770`  
		Last Modified: Wed, 21 Oct 2026 21:06:28 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
