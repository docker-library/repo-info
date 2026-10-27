## `archlinux:multilib-devel-20261025.0.616225`

```console
$ docker pull archlinux@sha256:24f56376d6108709576155647e85f7a33bf45295df282027d3a405b8363a0d87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20261025.0.616225` - linux; amd64

```console
$ docker pull archlinux@sha256:46c8cc3a89421b3626b64373ad4bff1ab9123d664ab1fb22694846bddc6d5d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331653806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fce48d49a982bd653e9b64fc735e3ff36ced95434ad80492095ece94a0b42d4`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.version=20261025.0.616225
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.created=2026-10-25T00:09:13+00:00
# Tue, 27 Oct 2026 16:31:24 GMT
COPY /rootfs/ / # buildkit
# Tue, 27 Oct 2026 16:31:32 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261025.0.616225' /etc/os-release # buildkit
# Tue, 27 Oct 2026 16:31:32 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:31:32 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:b50212de4db27791f314606475df1b8d50c3c69ddedda4c4f584c7677d736460`  
		Last Modified: Tue, 27 Oct 2026 16:32:31 GMT  
		Size: 331.6 MB (331641073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448620fc00cf519fe6862b1ce0d3b24839fb979a90438f1ec67bf755799b1a74`  
		Last Modified: Tue, 27 Oct 2026 16:32:25 GMT  
		Size: 12.7 KB (12733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20261025.0.616225` - unknown; unknown

```console
$ docker pull archlinux@sha256:da5f6974d00d2ed985117654da22277dcb9072914e2c9998c821ee825a094e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14745854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:264d330a7377d5648a1a5f5d4fbbd0fd7766d3729a14288d8af06db4e4efaed4`

```dockerfile
```

-	Layers:
	-	`sha256:8a53e8236c375e647db86a1fee5c14749497a087d23166eb96b46338d9323b52`  
		Last Modified: Tue, 27 Oct 2026 16:32:26 GMT  
		Size: 14.7 MB (14734087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0f390c51b555ed646f815c96b7f67fe26033a75b98bd662ce0380739d952052`  
		Last Modified: Tue, 27 Oct 2026 16:32:25 GMT  
		Size: 11.8 KB (11767 bytes)  
		MIME: application/vnd.in-toto+json
