## `archlinux:base-devel-20260906.0.587075`

```console
$ docker pull archlinux@sha256:61f7de2dd88cc4ba1fe36c24cfe1a503c3936984492d6405eeab013ce6ac68c5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260906.0.587075` - linux; amd64

```console
$ docker pull archlinux@sha256:5b987b0196907ea97dd10e7b48e7d403c35c0389986da015aa86cf8d0b058084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307533695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d7d4095befb7be2b30678f87d9717b0bacc5b21e0564dac8dbfc521df645aed`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.version=20260906.0.587075
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.created=2026-09-06T00:08:57+00:00
# Tue, 08 Sep 2026 19:09:51 GMT
COPY /rootfs/ / # buildkit
# Tue, 08 Sep 2026 19:09:58 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260906.0.587075' /etc/os-release # buildkit
# Tue, 08 Sep 2026 19:09:58 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:09:58 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:5147011f04b05c1be37986893624d5f95a9587e9d3d281f50b3c3f5e901c8cf5`  
		Last Modified: Tue, 08 Sep 2026 19:10:49 GMT  
		Size: 307.5 MB (307522172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44aaf160d33d7bf0638b1a5535afd039e1fe5f70fbc4f272b6d8304a2fd969db`  
		Last Modified: Tue, 08 Sep 2026 19:10:43 GMT  
		Size: 11.5 KB (11523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260906.0.587075` - unknown; unknown

```console
$ docker pull archlinux@sha256:e0099fae0e038d7e96c5d31447379ad552bea4988b6207a79c689f0c5d274492
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14421758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d95ab4dd4b38ae197ee292ae5d96749b9008b38a0245780a94374297380cbf4`

```dockerfile
```

-	Layers:
	-	`sha256:398c599bc68b755ac51d3f7b132071389d065874551b90026d6570f8b537f392`  
		Last Modified: Tue, 08 Sep 2026 19:10:43 GMT  
		Size: 14.4 MB (14410046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce9007629cb4e3b539d6afe40705db165ebc25d64c579add7a96272ba50f3c6c`  
		Last Modified: Tue, 08 Sep 2026 19:10:42 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
