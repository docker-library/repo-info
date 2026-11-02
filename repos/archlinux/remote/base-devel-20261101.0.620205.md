## `archlinux:base-devel-20261101.0.620205`

```console
$ docker pull archlinux@sha256:767de6eaa40dcfeda5263a48737ea03a782caabdf3a403b6e6a203c7fd333681
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20261101.0.620205` - linux; amd64

```console
$ docker pull archlinux@sha256:3942e1ff7ee3c41bdbcb6647ed850e199caae0c56dd18a4d3fa9bb9f3d2311f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309198194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9157a1811c15ae8ff1e6cf3fe3cc310285c0440c5b5781a4b9766fbb8bb55831`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.version=20261101.0.620205
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 02 Nov 2026 20:08:09 GMT
LABEL org.opencontainers.image.created=2026-11-01T00:09:36+00:00
# Mon, 02 Nov 2026 20:08:09 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 20:08:16 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261101.0.620205' /etc/os-release # buildkit
# Mon, 02 Nov 2026 20:08:16 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:08:16 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:4d0caf509dc94a4de2013706a77dc7c216de7ce218d516abd94ab8a76d65dd76`  
		Last Modified: Mon, 02 Nov 2026 20:09:09 GMT  
		Size: 309.2 MB (309186688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f04ed6cad425f8d99289e2e31197a12554626f9445453d97d2ff50865b5adc9`  
		Last Modified: Mon, 02 Nov 2026 20:09:03 GMT  
		Size: 11.5 KB (11506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20261101.0.620205` - unknown; unknown

```console
$ docker pull archlinux@sha256:3dfdad198b21ce26c4535a2b275cf5956eaf6a50d0c5499c8bf4d220b004fd11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14476748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3414ab630d909ff7c53318e8c3c026edbf7759a09650e3a8a44a8686fbcbb43`

```dockerfile
```

-	Layers:
	-	`sha256:55d7d37a13ad0981ff210b23c657e2708da99239b2352fe5006284680288ce45`  
		Last Modified: Mon, 02 Nov 2026 20:09:04 GMT  
		Size: 14.5 MB (14465036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54d9a61701fbf72e1f1e1ebd174e3fdf5012312e3a190c4e767d970257a663e8`  
		Last Modified: Mon, 02 Nov 2026 20:09:03 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
