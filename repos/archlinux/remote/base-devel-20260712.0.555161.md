## `archlinux:base-devel-20260712.0.555161`

```console
$ docker pull archlinux@sha256:212b1e518e94ee9c52be55e8a32da75fcf11e7b5610b80b49479e67880102406
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260712.0.555161` - linux; amd64

```console
$ docker pull archlinux@sha256:d5ae80f3489764be5c8e27fe19b7ebfe876b35d7b42aaa5ab99aff2bf7438c34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.5 MB (305505654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923c58ad3d50f024a21e499c0b4b43777661d0373d45bff60d56d20bc2c0b699`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.version=20260712.0.555161
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 13 Jul 2026 17:32:56 GMT
LABEL org.opencontainers.image.created=2026-07-12T00:09:32+00:00
# Mon, 13 Jul 2026 17:32:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 13 Jul 2026 17:33:04 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260712.0.555161' /etc/os-release # buildkit
# Mon, 13 Jul 2026 17:33:04 GMT
ENV LANG=C.UTF-8
# Mon, 13 Jul 2026 17:33:04 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:033715f1ddb09147c20bf66fe6d6da7face3f7580bc3d5b79a40d59c9dd4f528`  
		Last Modified: Mon, 13 Jul 2026 17:34:02 GMT  
		Size: 305.5 MB (305494172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1cbde703137b434c8904c80101aba662aae8ac00b31abdaf9cd4d47f03be572`  
		Last Modified: Mon, 13 Jul 2026 17:33:55 GMT  
		Size: 11.5 KB (11482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260712.0.555161` - unknown; unknown

```console
$ docker pull archlinux@sha256:da2381e8c1ed0381f1dfcf7baed36a970155584a8c70d838f9a3f949152e63cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14419786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfafd8fc71fedce2e20e7733e99698b2e364afaec00525fd2693245e0293ade3`

```dockerfile
```

-	Layers:
	-	`sha256:90b1cd01b2e4ab01e5f26994420c2c6fb34bcedfe319d2b0b90fb98b651cbf56`  
		Last Modified: Mon, 13 Jul 2026 17:33:56 GMT  
		Size: 14.4 MB (14408074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a975db45ecbea5abea16402d106d7b89ec6f7b41d11673bb392a03b8653f85b`  
		Last Modified: Mon, 13 Jul 2026 17:33:55 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
