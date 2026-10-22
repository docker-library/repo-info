## `archlinux:multilib-devel-20261018.0.612668`

```console
$ docker pull archlinux@sha256:3d8a37349a01e541cf7045c8c0d86cc5ff9fa1f1ce6101bacd08d6d4eac43f94
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20261018.0.612668` - linux; amd64

```console
$ docker pull archlinux@sha256:057dcd9984540fb9eade94112bbfcf28d6a40775e174e496e2ba2c0a40e9d613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.0 MB (331048488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76c0498da7d513336e3995b46fbeec22141c96bfa88cd31580acca0480c83e4e`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Wed, 21 Oct 2026 21:05:42 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Wed, 21 Oct 2026 21:05:42 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 21:05:50 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Wed, 21 Oct 2026 21:05:50 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:05:50 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:a66c03a0640de7b471a1dae2a762e4712b8e4e528d9123cadd99ce7bbe8e4546`  
		Last Modified: Mon, 19 Oct 2026 17:56:16 GMT  
		Size: 331.0 MB (331035760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eed2d186d9f9679b9dcbd9610394e8b054b5b8e8f264174006833bf546e09ea`  
		Last Modified: Wed, 21 Oct 2026 21:06:40 GMT  
		Size: 12.7 KB (12728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20261018.0.612668` - unknown; unknown

```console
$ docker pull archlinux@sha256:e69e5c31dfea0f96eb6914a3cd576861a77f689293b05a4d8bc041e36afd46f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14734920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa92191410cb90963f7d78892ac91d98a0db710f76c503dfd447975563f689f0`

```dockerfile
```

-	Layers:
	-	`sha256:6a6b9cbf285ce6e1c8c37d926b10264251359edc9a7c5727925ac03ba396ec68`  
		Last Modified: Wed, 21 Oct 2026 21:06:41 GMT  
		Size: 14.7 MB (14723152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a36df8c3e775c4ae8fd2acfce0ef781604b59af4cee45c5f73be48a1e9e0052b`  
		Last Modified: Wed, 21 Oct 2026 21:06:40 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
