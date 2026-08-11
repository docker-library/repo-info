## `archlinux:multilib-devel-20260809.0.570793`

```console
$ docker pull archlinux@sha256:cc15dc6d017bba84cf4ab0b5746c4cb6e690426002e6ed9f514d1706c006bb70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260809.0.570793` - linux; amd64

```console
$ docker pull archlinux@sha256:b50c908834bf0645e7d40525532adf1d5ad836f6a78771f8b17870cbde0f2c8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.3 MB (329271649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee393be2bcdab3ad7ee6c89f7e2a834d675bdcfbcf7ebee5905faf263680d8f`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.version=20260809.0.570793
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 10 Aug 2026 23:02:19 GMT
LABEL org.opencontainers.image.created=2026-08-09T00:10:15+00:00
# Mon, 10 Aug 2026 23:02:19 GMT
COPY /rootfs/ / # buildkit
# Mon, 10 Aug 2026 23:02:27 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260809.0.570793' /etc/os-release # buildkit
# Mon, 10 Aug 2026 23:02:27 GMT
ENV LANG=C.UTF-8
# Mon, 10 Aug 2026 23:02:27 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:322d0ed110abe082ba8e131803397e2cdfefc078e9d0059eb36ca8a5402edbf1`  
		Last Modified: Mon, 10 Aug 2026 23:03:26 GMT  
		Size: 329.3 MB (329259045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd89950c37119725b17f9d1a0b14ffbec37473324166d473166eca9b18df9a3e`  
		Last Modified: Mon, 10 Aug 2026 23:03:20 GMT  
		Size: 12.6 KB (12604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260809.0.570793` - unknown; unknown

```console
$ docker pull archlinux@sha256:67f9f77fae4630f90d767709a1583b8edfad9a1dee2855e7a955c459124f4007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14682158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fa12c7693d53b899d8e0efdbb0a13f441170acf39d2dbfe414cd27460d9158`

```dockerfile
```

-	Layers:
	-	`sha256:218ece613f3773e17823298b8111fa13fca7209db91b8fec5dc8ef7ccd77d221`  
		Last Modified: Mon, 10 Aug 2026 23:03:20 GMT  
		Size: 14.7 MB (14670390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06943d04a13408e03019c973e083a605d866d92d95eb3fed2587676401fe9da9`  
		Last Modified: Mon, 10 Aug 2026 23:03:20 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
