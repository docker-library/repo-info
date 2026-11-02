## `archlinux:base`

```console
$ docker pull archlinux@sha256:ece6c971fec3c532fd508bce299a446deaf469feecbfe7c353e995bc1a5e7bba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:42217d5f09e11d3fe7ad3b309b7fde891d458464dab5d674e629073765610427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134251498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b9c2f3a1a72268cab659ab3f20956bb6ce730e8dd716fe90754ba03a8870e19`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 02 Nov 2026 20:07:06 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Mon, 02 Nov 2026 20:07:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 20:07:09 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Mon, 02 Nov 2026 20:07:09 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:07:09 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:3f244b8f0c1879e8b146b9f4da81fbad49a1de2731bd96155d3bf9c4fd00f0e5`  
		Last Modified: Mon, 02 Nov 2026 20:07:34 GMT  
		Size: 134.2 MB (134242784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78875d6118c2f9302fe11ab479d1f15b4246b1decd0aff9ffbe74faedd3a1d43`  
		Last Modified: Mon, 02 Nov 2026 20:07:30 GMT  
		Size: 8.7 KB (8714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:24ca2138e3f4305cb36d4d567d76f8730a9d7a4f2645f069ca2b057586a2421d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c582409dbbd00b78fa77ae28d1a8f396d462c27106e9aa593fd48d0eb2d7281c`

```dockerfile
```

-	Layers:
	-	`sha256:c0f7f3b3db73cfcdb0cc87f7186c18e846cc0149ca5d3f2d1591c3cf9aecd8eb`  
		Last Modified: Mon, 02 Nov 2026 20:07:31 GMT  
		Size: 8.2 MB (8242563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f33aa6b59c70c7531a8693a813d993aad83d01cbea90536321f9f1532af51c69`  
		Last Modified: Mon, 02 Nov 2026 20:07:31 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json
