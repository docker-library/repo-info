## `archlinux:latest`

```console
$ docker pull archlinux@sha256:4e77cf2ea5f410e6f8be5abf93ccf17ce2436e87a138c167208356711a405dbd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:2fd1ae548076c67bcd41098ddd44e799058010e8d55f085d453dbb890e706860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.0 MB (134002486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757718cecb34fbe2c56e22b5f6299a45f149c7ce1c9b85def543a340bacdf7af`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.version=20261004.0.606936
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 05 Oct 2026 18:58:35 GMT
LABEL org.opencontainers.image.created=2026-10-04T00:09:23+00:00
# Mon, 05 Oct 2026 18:58:35 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:58:37 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261004.0.606936' /etc/os-release # buildkit
# Mon, 05 Oct 2026 18:58:37 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:58:37 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:9df4a71740bac465174ffcdc445e624409ab822c1738302325b03887fbf75daf`  
		Last Modified: Mon, 05 Oct 2026 18:59:05 GMT  
		Size: 134.0 MB (133993765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97290d28223872e83bae823bbb5bdad6ffb2590145b4cb023bc2faec2e44f45a`  
		Last Modified: Mon, 05 Oct 2026 18:59:01 GMT  
		Size: 8.7 KB (8721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:47b77af30a20115d9a384b7dde43b8b7787a1efaf6d1dfb75cadbe3af7922fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7cbb6615d32730b4b44439053bd4d0d8d6b3e8e820e8a3e1b87f18d3fdb2c19`

```dockerfile
```

-	Layers:
	-	`sha256:4412ab84ec25ddfb67fc1eacd806aafd042afc95b4c781db3da376306652781c`  
		Last Modified: Mon, 05 Oct 2026 18:59:02 GMT  
		Size: 8.2 MB (8242383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e076718d4bf84b1889cdd3793e84857b5687a3e47085144053db160ebaf61439`  
		Last Modified: Mon, 05 Oct 2026 18:59:01 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json
