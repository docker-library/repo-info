## `archlinux:multilib-devel-20260906.0.587075`

```console
$ docker pull archlinux@sha256:f0e55fc691faa3aef37d7eb508174794cfb3dc2e9afff49bd354d8755ba78a87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260906.0.587075` - linux; amd64

```console
$ docker pull archlinux@sha256:81413326fa039aff7c91b6455178e37fefd94e4aeba3c38c3ea629e41f507f06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.0 MB (330006281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d48531512c3348dd437fb86488825c294bf08d5d99b560d5e26335451f8a167`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.version=20260906.0.587075
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.created=2026-09-06T00:08:57+00:00
# Tue, 08 Sep 2026 19:11:24 GMT
COPY /rootfs/ / # buildkit
# Tue, 08 Sep 2026 19:11:32 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260906.0.587075' /etc/os-release # buildkit
# Tue, 08 Sep 2026 19:11:32 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:11:32 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:020e6f6470d9d8388fc997fafb9722293611c80ead99ead21ca52b3465a3d309`  
		Last Modified: Tue, 08 Sep 2026 19:12:26 GMT  
		Size: 330.0 MB (329993542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313f4203d10a5c599fbdff53a0f1aead408d85eb70897e43b74c41e957e3f06b`  
		Last Modified: Tue, 08 Sep 2026 19:12:20 GMT  
		Size: 12.7 KB (12739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260906.0.587075` - unknown; unknown

```console
$ docker pull archlinux@sha256:f37c41c1e9a450cd7e34c2ac4faad33d7b0fb5208271b17a992dea25a71e3650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14692902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e34ad95e8af0b553a6d0655f3d86b3599c4fcdb3af0bd78ca52b06777cc9326`

```dockerfile
```

-	Layers:
	-	`sha256:bec54e52a1c668a8d0a05cbcc9332bf6b4cc39c6f84faddc30a8a8d583e1aabb`  
		Last Modified: Tue, 08 Sep 2026 19:12:21 GMT  
		Size: 14.7 MB (14681134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4679bcc3880656058dd0a9ea8606d6bb51565f4f024a7b9904685fe4f158878c`  
		Last Modified: Tue, 08 Sep 2026 19:12:20 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
