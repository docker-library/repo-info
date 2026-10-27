## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:624bdc7fc6615155d67bc34cf7146c0c9fd0e3c92943977da63a630e4ca49c30
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:cb06b309ab9424b354a8e1099a934fc48b13e62c3d4453d19d50beaa72c6caee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309171052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:663144237b9d7520631776b4138047ecf7398c2b2ab2514500c0351c6cb431a0`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.version=20261025.0.616225
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.created=2026-10-25T00:09:13+00:00
# Tue, 27 Oct 2026 16:31:57 GMT
COPY /rootfs/ / # buildkit
# Tue, 27 Oct 2026 16:32:04 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261025.0.616225' /etc/os-release # buildkit
# Tue, 27 Oct 2026 16:32:04 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:32:04 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:4667fffe4e95a25657f64902c821d3ead6745a50c75a07e48ed390433b1e7dbe`  
		Last Modified: Tue, 27 Oct 2026 16:33:02 GMT  
		Size: 309.2 MB (309159555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7231ba0c2dcdf4dbd52dee3a905d7d0df0f0ad3cc825644452d40faad779726`  
		Last Modified: Tue, 27 Oct 2026 16:32:56 GMT  
		Size: 11.5 KB (11497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:8dfdc195f48436b5cf4b413bdf3ea56598b741d92757fb0d84398e4d6d3142c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14474711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817a791877c33879098a3e1c519441c12751b07834bb7fc2224469d36859a7b0`

```dockerfile
```

-	Layers:
	-	`sha256:93e0e84d985a496adf90e2cf6bbdcc15155e96cb7245f77c7b5c80e361b1df93`  
		Last Modified: Tue, 27 Oct 2026 16:32:56 GMT  
		Size: 14.5 MB (14462999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d9c5730f794fd8ed1e6457b25933189a633c73b7bdc09f9914d07298ea6734`  
		Last Modified: Tue, 27 Oct 2026 16:32:56 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
