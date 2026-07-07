## `archlinux:base-devel-20260705.0.552420`

```console
$ docker pull archlinux@sha256:b21289eb1954872de0dc9f88976627e38611b1817be75e50946c83ab7b9c474d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260705.0.552420` - linux; amd64

```console
$ docker pull archlinux@sha256:377f594c95c2c4f245e7285ec7f0bc7cd5a36003bd8b869c932b9b0ff2d761a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.0 MB (305024351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8e193a01e9e91aa0966b171e857cde7183392b33b09a5bed268f2a38dad8b6`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.version=20260705.0.552420
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 06 Jul 2026 18:57:00 GMT
LABEL org.opencontainers.image.created=2026-07-05T00:09:31+00:00
# Mon, 06 Jul 2026 18:57:00 GMT
COPY /rootfs/ / # buildkit
# Mon, 06 Jul 2026 18:57:07 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260705.0.552420' /etc/os-release # buildkit
# Mon, 06 Jul 2026 18:57:07 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 18:57:07 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:3b9fc7ae39e7b9b403232773a0fdeced6b5d7d72f22fc93f25fefb52b169eaad`  
		Last Modified: Mon, 06 Jul 2026 18:58:03 GMT  
		Size: 305.0 MB (305012906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e41423bd05647bd329138f0bb616daabf72b618a9237341c7a150e4845c62e`  
		Last Modified: Mon, 06 Jul 2026 18:57:57 GMT  
		Size: 11.4 KB (11445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260705.0.552420` - unknown; unknown

```console
$ docker pull archlinux@sha256:92f402fcdd1d135dbb49dfb355e5438aa34e56c40581834206725dbdbb8fa27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14414582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1076ef59696b64297eba20aa1800fead61c3406200d0d94bf0fd9775b8961b7e`

```dockerfile
```

-	Layers:
	-	`sha256:e4b456d99aa6c43becabe84fd73ec77ec4b3c0d35865304fb86c4aedf571d0bc`  
		Last Modified: Mon, 06 Jul 2026 18:57:58 GMT  
		Size: 14.4 MB (14402870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ba5c7f0c7cb43ccf0e05111ae9c72e6a28661f5f36c63aa0cebabbbd528c8b4`  
		Last Modified: Mon, 06 Jul 2026 18:57:57 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
