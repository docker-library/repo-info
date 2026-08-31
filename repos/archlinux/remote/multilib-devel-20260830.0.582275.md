## `archlinux:multilib-devel-20260830.0.582275`

```console
$ docker pull archlinux@sha256:479c5aba4dcafdb86e12addeb215f00b432abd67962fe5c8a492ad6ece219618
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260830.0.582275` - linux; amd64

```console
$ docker pull archlinux@sha256:d2d668c251d26f31506404aa6a9255b21e3452769350db5ed5d227d8ab3a4058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.8 MB (329846589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b50d363a58223f35f20df286e5489e9dd2e5e0bf35a6be78267e016d60d04f8`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.version=20260830.0.582275
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 31 Aug 2026 19:10:50 GMT
LABEL org.opencontainers.image.created=2026-08-30T00:09:25+00:00
# Mon, 31 Aug 2026 19:10:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 31 Aug 2026 19:10:58 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260830.0.582275' /etc/os-release # buildkit
# Mon, 31 Aug 2026 19:10:58 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:10:58 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:8297d5615bf039415c6c3d0d43ce9980476ec265d84410c702354c1ba7c28b90`  
		Last Modified: Mon, 31 Aug 2026 19:11:57 GMT  
		Size: 329.8 MB (329833856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58ceba07a5062f1e99d9c80e9bbb0d7b392d8757378babebf1aba9c55467df7`  
		Last Modified: Mon, 31 Aug 2026 19:11:47 GMT  
		Size: 12.7 KB (12733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260830.0.582275` - unknown; unknown

```console
$ docker pull archlinux@sha256:6e86a413863412075040ff6864d9856a60f02a308f1e483c6e3c979125fd9fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14692897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50213a011d5ac54aa0cbd643b308f095ca4a459e3afd6037d63e5e950257a03e`

```dockerfile
```

-	Layers:
	-	`sha256:d5543c9f792abf483e0ca5de2e617bc58ec569fc1117679dc31c8a9f5c7948cd`  
		Last Modified: Mon, 31 Aug 2026 19:11:48 GMT  
		Size: 14.7 MB (14681129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:417b98f984bac0d5eaa11116ff037f47947d9c9352e45c3dc2962f49d90d00a5`  
		Last Modified: Mon, 31 Aug 2026 19:11:47 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
