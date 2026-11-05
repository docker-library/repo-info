## `archlinux:base-devel-20261101.0.620205`

```console
$ docker pull archlinux@sha256:2de80105abb49f813a85393c6758a4334deb6bcec4a2411bd2f059c0bee6ee4c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20261101.0.620205` - linux; amd64

```console
$ docker pull archlinux@sha256:9633c3e37e551beb003b2f546af18520705bd758f48c86d276b11ad3b5b8fcde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309198216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b6cbf0d2c17c0ffbf651cc821ed28e5e13b3559a3f477416357324f810ee21`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Thu, 05 Nov 2026 18:54:36 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Thu, 05 Nov 2026 18:54:36 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:54:43 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Thu, 05 Nov 2026 18:54:43 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:54:43 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:4d0caf509dc94a4de2013706a77dc7c216de7ce218d516abd94ab8a76d65dd76`  
		Last Modified: Mon, 02 Nov 2026 20:09:09 GMT  
		Size: 309.2 MB (309186688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d90f4e608a7744f735f71219abaf4f31d11c9bcc205b39dd6981eda9f29d5d`  
		Last Modified: Thu, 05 Nov 2026 18:55:27 GMT  
		Size: 11.5 KB (11528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20261101.0.620205` - unknown; unknown

```console
$ docker pull archlinux@sha256:e84dd3748b323129ca857cfb56a59d3463bd7f5c1d43d0ce015b636858e6b73d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14476748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729961af775098278c7d852f3d20f6a9488154a4fe36a3510c358c43d67c6df7`

```dockerfile
```

-	Layers:
	-	`sha256:6a4263f8928794221730f1e3c1b8ff713df07885c0686431e5e29f12683b04f4`  
		Last Modified: Thu, 05 Nov 2026 18:55:28 GMT  
		Size: 14.5 MB (14465036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e048f43f88170fd383847d462ce003b744de7e320000d092b977241124d41834`  
		Last Modified: Thu, 05 Nov 2026 18:55:28 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
