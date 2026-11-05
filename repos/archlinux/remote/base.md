## `archlinux:base`

```console
$ docker pull archlinux@sha256:b1c2fe6e717bfd5673af8fc217e1e1c3ce0dcbb1d53c3414c8425e7ce79fc6d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:823e937464d1528b306a8e1137ef406b9c56e5fee43c7a19e93684d554af74e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134251507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db632a0cdf7aa65eb1f7e1df6b4f9c4cb0502023942a8e593ed08fcadd0826f`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Thu, 05 Nov 2026 18:54:12 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Thu, 05 Nov 2026 18:54:12 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:54:15 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Thu, 05 Nov 2026 18:54:15 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:54:15 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:3f244b8f0c1879e8b146b9f4da81fbad49a1de2731bd96155d3bf9c4fd00f0e5`  
		Last Modified: Mon, 02 Nov 2026 20:07:34 GMT  
		Size: 134.2 MB (134242784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:432d78c9edb7529e3c52905064be9e29caf364d8895c119d100ec5e7fb9149f9`  
		Last Modified: Thu, 05 Nov 2026 18:54:37 GMT  
		Size: 8.7 KB (8723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:57e77814171c543bbdb10213c669c16349a859be7208046ea58b20e1673a3137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e76da896de22ecb17acd5653adf35e8b8d4891a0058daae892be06399bda1ff`

```dockerfile
```

-	Layers:
	-	`sha256:54199d0f305dd82cb429903d246ff5d14ef7ecb421be085c0dbc737853fe6864`  
		Last Modified: Thu, 05 Nov 2026 18:54:37 GMT  
		Size: 8.2 MB (8242563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:287c985ee146c665ea9e2d1db3a9938202d380389836404757650ddd5badab2f`  
		Last Modified: Thu, 05 Nov 2026 18:54:37 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json
