## `archlinux:latest`

```console
$ docker pull archlinux@sha256:52dfbd5afb23a220d5ee92dafcb4c788d96c026ed04179890c23adef4c897fa0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:dfb01267da058e5d08ffdc543bf484c9b404655b0bac1d0201d972bf950cdfd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134183301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c22c3194d74cdee63a036f904175005556c8b5c3044ed268e059438e2bc60bfd`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Wed, 21 Oct 2026 21:05:12 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Wed, 21 Oct 2026 21:05:12 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 21:05:14 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Wed, 21 Oct 2026 21:05:14 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:05:14 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:7450fb54bb4fadc27bfa0277ecfbf489a6457ee6c2ae59d4300bde68610b6f48`  
		Last Modified: Mon, 19 Oct 2026 17:54:24 GMT  
		Size: 134.2 MB (134174595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62956096fa4d1a774d823a6a881611b258b5a0c6253a7c5be596b6826e40103f`  
		Last Modified: Wed, 21 Oct 2026 21:05:37 GMT  
		Size: 8.7 KB (8706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:baf91e62aa8f8e0b8e5b1993d90dd5b4d5833c86724a1a5312a07ac4078ca315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d8ee74275deb120002b88954bf9e4090d0545b095570db99eae8adace86e063`

```dockerfile
```

-	Layers:
	-	`sha256:ec0a8040d9fbed0c7ac909b6facf0bf3107f917024731f604771b906464a139f`  
		Last Modified: Wed, 21 Oct 2026 21:05:37 GMT  
		Size: 8.2 MB (8242435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:862d5806c467ac55402f7c98112b276763f42746e073a88eee3347b9d895178c`  
		Last Modified: Wed, 21 Oct 2026 21:05:37 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json
