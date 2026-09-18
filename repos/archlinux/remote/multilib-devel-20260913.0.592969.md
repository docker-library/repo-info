## `archlinux:multilib-devel-20260913.0.592969`

```console
$ docker pull archlinux@sha256:b477b4dee78762e992cc11dcd74ef4717aaa826fa2ba0dd65056389327da6590
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260913.0.592969` - linux; amd64

```console
$ docker pull archlinux@sha256:8f0c05c996f3e3570bb71e2ab3528a1ead8049203c8ad70b9d8930de789dfefe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.1 MB (330127032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da7e45ed3fe57eab127f8ae7ce72bfd5ef4361b5721157e1c31ad5847693104`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Thu, 17 Sep 2026 21:14:39 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Thu, 17 Sep 2026 21:14:39 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:14:47 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Thu, 17 Sep 2026 21:14:47 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:14:47 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:c406e7b80187800ed1d9f4bb7cdb82046233689c65342d511fedb424d32bfdd4`  
		Last Modified: Mon, 14 Sep 2026 19:07:11 GMT  
		Size: 330.1 MB (330114301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aae2e98fff96a71351638303fec314b5226813643aacba2644ed4ead45fe127`  
		Last Modified: Thu, 17 Sep 2026 21:15:40 GMT  
		Size: 12.7 KB (12731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260913.0.592969` - unknown; unknown

```console
$ docker pull archlinux@sha256:c1c63bc8f7f32253f9a4f2f893d9bf7f9537891c2360e192ba7395d2d5ad85ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14701805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28063540bf6c4e0392d0819ac5968b9cda7c8b3b9d83aeb2a1c8181cc30e9bfc`

```dockerfile
```

-	Layers:
	-	`sha256:1f2a87105435ba22d2aea1c7e904e88d49fe7f75bbae200926c4bcfdf4ec9ee6`  
		Last Modified: Thu, 17 Sep 2026 21:15:41 GMT  
		Size: 14.7 MB (14690038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cea81a69248c4691c5e3a0838ee97660d593d79088151e8a7812a6ab234a7e6`  
		Last Modified: Thu, 17 Sep 2026 21:15:40 GMT  
		Size: 11.8 KB (11767 bytes)  
		MIME: application/vnd.in-toto+json
