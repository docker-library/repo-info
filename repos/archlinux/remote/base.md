## `archlinux:base`

```console
$ docker pull archlinux@sha256:681569955d1d17313ef7134acc8b5cd8adcda2fc24709bed472d95e1cf3d71a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:2b4d67033863d9f495dfd0f52ad8b451fae84adb71b4bdf63f69d10643df2403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132655527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10124be3e394dacb74f7614a7694d51c44fab07c54bc11e52f0a6d98454a41c3`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.version=20260705.0.552420
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 06 Jul 2026 18:56:44 GMT
LABEL org.opencontainers.image.created=2026-07-05T00:09:31+00:00
# Mon, 06 Jul 2026 18:56:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 06 Jul 2026 18:56:47 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260705.0.552420' /etc/os-release # buildkit
# Mon, 06 Jul 2026 18:56:47 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 18:56:47 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:591e11c5ab19a1d8c8a11ddbdcfc3d97d776a7cd1ed984e299f50c26a845164f`  
		Last Modified: Mon, 06 Jul 2026 18:57:14 GMT  
		Size: 132.6 MB (132646865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86e40f3e7d9ff29c124d3aa8340a30c606ae99a66f904f568293da35ee8d418`  
		Last Modified: Mon, 06 Jul 2026 18:57:10 GMT  
		Size: 8.7 KB (8662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:e01b034c227be3b6e0c67a75fda0c7476635686f4f21b1c32808ea2b751ab43f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8222461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484590683487bc0fc7734344f96aa24208d0f35df6fd006d2080466e5489bab9`

```dockerfile
```

-	Layers:
	-	`sha256:db7969750690047168d6f6a171e1713d146560cf061f94fa090fde2c1b79df11`  
		Last Modified: Mon, 06 Jul 2026 18:57:11 GMT  
		Size: 8.2 MB (8210532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbf74763e9f1b88667758ea381e9d639aee2d5280286a6bdbafe0b3963bfc74a`  
		Last Modified: Mon, 06 Jul 2026 18:57:10 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json
