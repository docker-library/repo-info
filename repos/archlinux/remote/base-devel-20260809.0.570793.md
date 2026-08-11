## `archlinux:base-devel-20260809.0.570793`

```console
$ docker pull archlinux@sha256:ee205c220399524a683cf495d411691b921baed8ab47cdc6d732efa782fae484
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260809.0.570793` - linux; amd64

```console
$ docker pull archlinux@sha256:49facfaf7eac45ed51ea3056091b8478191df5bcd62225e457e89c246b7cbda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306821075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0864f97b9567bf14c4450f820234617de489069d5157a3aef4a14a3e9bdf7508`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.version=20260809.0.570793
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 10 Aug 2026 23:02:02 GMT
LABEL org.opencontainers.image.created=2026-08-09T00:10:15+00:00
# Mon, 10 Aug 2026 23:02:02 GMT
COPY /rootfs/ / # buildkit
# Mon, 10 Aug 2026 23:02:09 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260809.0.570793' /etc/os-release # buildkit
# Mon, 10 Aug 2026 23:02:09 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:02:09 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:b7e1cd3f87e68f3ba6a40f5cc289faf651fd5df11d72caa35017ab5f2b92cfbf`  
		Last Modified: Mon, 10 Aug 2026 23:03:05 GMT  
		Size: 306.8 MB (306809622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dabbe614f2f404de7042013c5dc04efd97161b93b6e635b3fff805c5f8791b74`  
		Last Modified: Mon, 10 Aug 2026 23:02:58 GMT  
		Size: 11.5 KB (11453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260809.0.570793` - unknown; unknown

```console
$ docker pull archlinux@sha256:59628e0fadc6a90d7d79787a69306ebe8117e4feea10aee5f8daf5361e8886ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14411013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5125d190bfd51d063cc129a4bc8175ba78e859cc271c9efb6aeb37ff5f449793`

```dockerfile
```

-	Layers:
	-	`sha256:cbf9814b5decf6aa9f52b7bccdeded223d1fbe74f466067ce36042e18af2321b`  
		Last Modified: Mon, 10 Aug 2026 23:02:59 GMT  
		Size: 14.4 MB (14399302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68a71c124cc99d42c24fd0bbe4c16a13665c02e54ecd17a02110e4519d4970fe`  
		Last Modified: Mon, 10 Aug 2026 23:02:58 GMT  
		Size: 11.7 KB (11711 bytes)  
		MIME: application/vnd.in-toto+json
