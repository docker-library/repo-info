## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:732829e182d0cb7ef3d799827e799ff3bdd2d27fee557770bbd611a211439cf6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:f7460d9dae5e6e256b85e3af9f4d3964d5876407c23797fe84512c2fe07fee86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331682716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b51b5a6d873cca93dc31c16478974a0ce05bdadce23404b841a8a31a812383c4`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Thu, 05 Nov 2026 18:54:40 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Thu, 05 Nov 2026 18:54:40 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:54:48 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Thu, 05 Nov 2026 18:54:48 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:54:48 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:e9c9a06dcd01c8e14874c724c3deb3ffc5a48016be56d792d2454489b653fcdd`  
		Last Modified: Mon, 02 Nov 2026 20:11:20 GMT  
		Size: 331.7 MB (331670001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3a8a85cb479d19dfe17316c279c1908eb8cb3d1a721b5deec2a4c087241917`  
		Last Modified: Thu, 05 Nov 2026 18:55:42 GMT  
		Size: 12.7 KB (12715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:b78087271f29554339ac874c80e25cc352a04d513f2a40042d9c45ef479286f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14747892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330b401b6dc4fe8b79591ca29fae1c9493d1518c42e64b8eef571e6b3b4b43e7`

```dockerfile
```

-	Layers:
	-	`sha256:9fbaa2e5d5d64d348f9f8ef388d1729828ca9a2727c38b32a0b39dda11054e4e`  
		Last Modified: Thu, 05 Nov 2026 18:55:43 GMT  
		Size: 14.7 MB (14736124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56712012da890f784691efd6fc68a9c46934e89c5e14100904387d73b938cc9b`  
		Last Modified: Thu, 05 Nov 2026 18:55:42 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
