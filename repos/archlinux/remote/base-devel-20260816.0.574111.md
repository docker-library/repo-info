## `archlinux:base-devel-20260816.0.574111`

```console
$ docker pull archlinux@sha256:714acd1eef9ae997d95691b1c5220ada0076185b77857c1813f02de0fa83cf7b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260816.0.574111` - linux; amd64

```console
$ docker pull archlinux@sha256:aecf5b39bd3139a951090dfb3d940f9317e4c5fca038c65fb49ac03910f7133e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.1 MB (307132560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502916001acf4fba3a7f8cf60111de0cb575a140cab3b6746eb67b7ad0ea0a73`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.version=20260816.0.574111
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.created=2026-08-16T00:10:28+00:00
# Mon, 17 Aug 2026 17:21:01 GMT
COPY /rootfs/ / # buildkit
# Mon, 17 Aug 2026 17:21:08 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260816.0.574111' /etc/os-release # buildkit
# Mon, 17 Aug 2026 17:21:08 GMT
ENV LANG=C.UTF-8
# Mon, 17 Aug 2026 17:21:08 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:ad458849f865f96e29049ec253d427cc57c2397288b4a5df2a54a705b075d135`  
		Last Modified: Mon, 17 Aug 2026 17:22:06 GMT  
		Size: 307.1 MB (307121104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e629da57546eea6468f4cd62d9d9e75f8570807dc0da336ffe71021daedc1ad`  
		Last Modified: Mon, 17 Aug 2026 17:21:59 GMT  
		Size: 11.5 KB (11456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260816.0.574111` - unknown; unknown

```console
$ docker pull archlinux@sha256:5f4b9d6dac74a3f7adfd00e4b7245cfc2de3cc8f8a551479a3f8c90905687038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14426300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f165d9cb80bcaaf98f3b402e0a00d023ed673b909b58f4be4f6dda3b99e2081`

```dockerfile
```

-	Layers:
	-	`sha256:be7e9fcb0c165334d577c2924c17a6587f2670314857a892c7cf7245720d9685`  
		Last Modified: Mon, 17 Aug 2026 17:22:00 GMT  
		Size: 14.4 MB (14414588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2560b303288d277a1b4da76765fb356a8c9924f13fb361d7c3675c7384669b47`  
		Last Modified: Mon, 17 Aug 2026 17:22:00 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
