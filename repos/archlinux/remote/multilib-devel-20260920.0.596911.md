## `archlinux:multilib-devel-20260920.0.596911`

```console
$ docker pull archlinux@sha256:f5c2ae0ba0f0a02a706762ed89f289c4bf1f12bc92c663715361cfbc9b15b893
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260920.0.596911` - linux; amd64

```console
$ docker pull archlinux@sha256:ab0171819dd030fe211a07deab8deb7336579863fc0eac322ea05237a86fe9ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.2 MB (330163410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2333a2cf6b0bf1d1c389ec9d39da8338ee5b6e25a746a6bde49f9c78c0f7b74c`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.version=20260920.0.596911
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.created=2026-09-20T00:09:21+00:00
# Mon, 21 Sep 2026 18:03:55 GMT
COPY /rootfs/ / # buildkit
# Mon, 21 Sep 2026 18:04:04 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260920.0.596911' /etc/os-release # buildkit
# Mon, 21 Sep 2026 18:04:04 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 18:04:04 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:f2d914c5f70a9a66295d6e72abc196dad05f044ee6d0929ce773c8b35bc78271`  
		Last Modified: Mon, 21 Sep 2026 18:05:02 GMT  
		Size: 330.2 MB (330150688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b677ed4de8e574851817e6e74902bcae80e07dda70b5668600f34d80ccef3fc`  
		Last Modified: Mon, 21 Sep 2026 18:04:56 GMT  
		Size: 12.7 KB (12722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260920.0.596911` - unknown; unknown

```console
$ docker pull archlinux@sha256:041f447b708fc53fc85572ba84be86a2efda4a890c4a08ba24bf7eb012c4b2ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14701816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b0fe9d670c82eef29023fc1eab3d9f844313976b77f7b853bf6f4e8c9e3fdd`

```dockerfile
```

-	Layers:
	-	`sha256:a1855eeb417f0b7a4332beaf80116861c101929ffb30f3f515321543ebb5ff94`  
		Last Modified: Mon, 21 Sep 2026 18:04:57 GMT  
		Size: 14.7 MB (14690048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adc950a0ac29659b17bb2d57f8b263650bb2a0395dba95f6d6e76e80b76fee62`  
		Last Modified: Mon, 21 Sep 2026 18:04:56 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
