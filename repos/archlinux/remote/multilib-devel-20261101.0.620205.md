## `archlinux:multilib-devel-20261101.0.620205`

```console
$ docker pull archlinux@sha256:50cd3611de812e5ce83ba3b379cf1d685a0c20a858676e08bcf384a33f6ceff5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20261101.0.620205` - linux; amd64

```console
$ docker pull archlinux@sha256:974d6a365eb404e460d1893bfac76b6f4ae3e3bf47a9461f5abda9f7aa002e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331682724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040095d20177152ab0612cdca2438052c5942f6ccf4777f50d564ccb56cf5462`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 02 Nov 2026 20:10:16 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Mon, 02 Nov 2026 20:10:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 20:10:24 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Mon, 02 Nov 2026 20:10:24 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:24 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:e9c9a06dcd01c8e14874c724c3deb3ffc5a48016be56d792d2454489b653fcdd`  
		Last Modified: Mon, 02 Nov 2026 20:11:20 GMT  
		Size: 331.7 MB (331670001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beaba403ffc578fa3d2f4fcfee825bf17ae6ec29646f073a86315b9a9db1709`  
		Last Modified: Mon, 02 Nov 2026 20:11:14 GMT  
		Size: 12.7 KB (12723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20261101.0.620205` - unknown; unknown

```console
$ docker pull archlinux@sha256:508ecd6c11063de7ea857a47b9738f617cc4b11fde8d9219d476ff6ebbee90b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14747890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f781ae56b9e4864550d912a0ffdacc2f3054d5b95a90f158aef7b4e4f42b03`

```dockerfile
```

-	Layers:
	-	`sha256:ea064b84ce9c223ff02a3b3f8da6240297570c255d6360f5cda71a0111e494ed`  
		Last Modified: Mon, 02 Nov 2026 20:11:14 GMT  
		Size: 14.7 MB (14736124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8934673630fff91dde13dbecca9c91d28df7fc59864973d12b15b8e4b4b4ad80`  
		Last Modified: Mon, 02 Nov 2026 20:11:14 GMT  
		Size: 11.8 KB (11766 bytes)  
		MIME: application/vnd.in-toto+json
