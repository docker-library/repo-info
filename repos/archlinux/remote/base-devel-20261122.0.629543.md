## `archlinux:base-devel-20261122.0.629543`

```console
$ docker pull archlinux@sha256:949ecb1661609ab7e8f6854ba03efd62792e7a796313738e94b040c095c20d91
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20261122.0.629543` - linux; amd64

```console
$ docker pull archlinux@sha256:a1d4b509c51fc68dcc7ee1f88342fe26b1f65e6775c3aff26f196141e6c76a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.7 MB (312693534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb9f409a8e98ea6e6228c56c56fc4c01a9a20d13942a1ba7d8f059a7bb8e9ea4`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.version=20261122.0.629543
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 23 Nov 2026 18:22:51 GMT
LABEL org.opencontainers.image.created=2026-11-22T00:09:11+00:00
# Mon, 23 Nov 2026 18:22:51 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 18:22:58 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261122.0.629543' /etc/os-release # buildkit
# Mon, 23 Nov 2026 18:22:58 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 18:22:58 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:610cc7f1a62dcd681dfc9520e819497230deff64cd5c2bc717398aa12f96a29f`  
		Last Modified: Mon, 23 Nov 2026 18:23:52 GMT  
		Size: 312.7 MB (312681967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7d07545b3b4a665db6240e1d790b90da7f5079940ad76604ba62872e400690`  
		Last Modified: Mon, 23 Nov 2026 18:23:46 GMT  
		Size: 11.6 KB (11567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20261122.0.629543` - unknown; unknown

```console
$ docker pull archlinux@sha256:7b87de56a9080377600c20dabf21ca358a4e3a7ba7fbb14cd84fb475db82d1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14573871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56305983739b871fa511cd6f8ee0e9c0f388d8d70600136c951a157587a82140`

```dockerfile
```

-	Layers:
	-	`sha256:6143a5a1d283383ab2b24ac86813fb80fadea39950f32f28ab5fa4ad7c872c5e`  
		Last Modified: Mon, 23 Nov 2026 18:23:47 GMT  
		Size: 14.6 MB (14562159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5a42cb7c569ed197938e16435d554b3f72bd18cec3e22b9a805e52b712d7594`  
		Last Modified: Mon, 23 Nov 2026 18:23:46 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
