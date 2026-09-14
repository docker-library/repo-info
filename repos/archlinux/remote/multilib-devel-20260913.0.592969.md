## `archlinux:multilib-devel-20260913.0.592969`

```console
$ docker pull archlinux@sha256:8b56ef450d658dd2c46672270ffe79ed683b3e42be78878235174b16f8d261ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260913.0.592969` - linux; amd64

```console
$ docker pull archlinux@sha256:26b0dbe4d9133578c798d2b9b23d3327116968e2dab40907c6b033bfed3a06be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.1 MB (330127030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4faaf9e446bdc034b72a43248d5c0deaf83339dfd7e788b4676c16ebf0abac2d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Mon, 14 Sep 2026 19:06:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 19:06:14 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Mon, 14 Sep 2026 19:06:14 GMT
ENV LANG=C.UTF-8
# Mon, 14 Sep 2026 19:06:14 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:c406e7b80187800ed1d9f4bb7cdb82046233689c65342d511fedb424d32bfdd4`  
		Last Modified: Mon, 14 Sep 2026 19:07:11 GMT  
		Size: 330.1 MB (330114301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57eef1ba4608eb184be88108521c5cde7329353155edd7c911be28e6276fcda9`  
		Last Modified: Mon, 14 Sep 2026 19:07:04 GMT  
		Size: 12.7 KB (12729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260913.0.592969` - unknown; unknown

```console
$ docker pull archlinux@sha256:3869818d515e15109714696e428956ad5fddbe4634cf8b45550906f14ace9b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14701805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3602268e0f7354310e9176421d29dc37c90b26e456f5bd4776f2bfc6d697ec4`

```dockerfile
```

-	Layers:
	-	`sha256:b8a7eec92c474a09fd56815a178d66506e537e7f92bba9c7d9bc3bfbb1512757`  
		Last Modified: Mon, 14 Sep 2026 19:07:05 GMT  
		Size: 14.7 MB (14690038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:448a1fddabe22da188b121c873e8a3744256e63ec07584d27e2fa20c82283e02`  
		Last Modified: Mon, 14 Sep 2026 19:07:04 GMT  
		Size: 11.8 KB (11767 bytes)  
		MIME: application/vnd.in-toto+json
