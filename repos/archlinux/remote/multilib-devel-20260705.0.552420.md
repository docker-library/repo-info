## `archlinux:multilib-devel-20260705.0.552420`

```console
$ docker pull archlinux@sha256:080cec97ea7d6193de4180e52513b042baf4a3bd28987bcbbe580bb902371734
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260705.0.552420` - linux; amd64

```console
$ docker pull archlinux@sha256:ad812b74cb71e3d0347af1f18b16d0fae323c43ebee04762e468ba3bb1fda98f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.4 MB (327392557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4083012278207aa62d95f72d00af4fec564ed590c65f5da093ae3442d9444c0`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.version=20260705.0.552420
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 06 Jul 2026 18:57:06 GMT
LABEL org.opencontainers.image.created=2026-07-05T00:09:31+00:00
# Mon, 06 Jul 2026 18:57:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 06 Jul 2026 18:57:13 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260705.0.552420' /etc/os-release # buildkit
# Mon, 06 Jul 2026 18:57:13 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 18:57:13 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:696df5e6673835c7bdb137e8ef78f706a1978591b63e76bb20d6075b2a70bf9f`  
		Last Modified: Mon, 06 Jul 2026 18:58:14 GMT  
		Size: 327.4 MB (327379977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55a4152feffc7d7bbc7ecf2bc6b7fdec41add8a9eaf517cabfbebd1c70d2a824`  
		Last Modified: Mon, 06 Jul 2026 18:58:07 GMT  
		Size: 12.6 KB (12580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260705.0.552420` - unknown; unknown

```console
$ docker pull archlinux@sha256:8fbd5b732d36830f4739853abf805e7ae0f3e71ec5943a281b975ad313139c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14684100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd345cd0412651319faec7f6400ca82e4f06c520f3a81a6141061f48da27de7`

```dockerfile
```

-	Layers:
	-	`sha256:301ffa28c775584a75aece6cac1d114b8bd2193d07f79535144fcf16039fbe5e`  
		Last Modified: Mon, 06 Jul 2026 18:58:08 GMT  
		Size: 14.7 MB (14672332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dd14e0370526122ced95a1aa2cfecdc28f5e2a8df1358683bea3b04f24b5ed8`  
		Last Modified: Mon, 06 Jul 2026 18:58:07 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
