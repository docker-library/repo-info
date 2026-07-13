## `archlinux:base`

```console
$ docker pull archlinux@sha256:fe6972d4dc1f660c0c10f4c41b2de8986bab89e7e2955378f8beadb8ebcd7433
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:9edcc183d2505745a1da7a18bf12833dde174734610c72a5978031191504af1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132617799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:782c3fdd491ffc7ab163461313a424649f18dfea92e35d326fba452ad4af75b7`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.version=20260712.0.555161
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 13 Jul 2026 17:31:40 GMT
LABEL org.opencontainers.image.created=2026-07-12T00:09:32+00:00
# Mon, 13 Jul 2026 17:31:40 GMT
COPY /rootfs/ / # buildkit
# Mon, 13 Jul 2026 17:31:43 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260712.0.555161' /etc/os-release # buildkit
# Mon, 13 Jul 2026 17:31:43 GMT
ENV LANG=C.UTF-8
# Mon, 13 Jul 2026 17:31:43 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:79cc0e93916d4b814c45a7080e19b9fa4081aefbbdb9270af33cfbde9f943b9e`  
		Last Modified: Mon, 13 Jul 2026 17:32:08 GMT  
		Size: 132.6 MB (132609152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8391dc5e0f5e3c47080d3a29bc7142ab59b545d9da8eb331aefbd3cef047ba13`  
		Last Modified: Mon, 13 Jul 2026 17:32:05 GMT  
		Size: 8.6 KB (8647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:ff661492033310815ccdccf38cc0008bd7b12a08ae0f3caeb75fb983d8efb15d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8219617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74f690044585b35850c25c9ccb90927856999a5dbd6b1924454e6e16f7cd2f4`

```dockerfile
```

-	Layers:
	-	`sha256:aa41535ae670ba7bb2feff9f53f09a4034866625c63067c3e381a035102ad10e`  
		Last Modified: Mon, 13 Jul 2026 17:32:05 GMT  
		Size: 8.2 MB (8207688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f92f4f8495c51e66ae396b86b424b3d06810bf4692fde51d1cb26916727a25a`  
		Last Modified: Mon, 13 Jul 2026 17:32:04 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json
