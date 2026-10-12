## `archlinux:base`

```console
$ docker pull archlinux@sha256:3c64b538588416593f69a1aebd2f2ec0f2541b29159f32556fa7def2167147a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:363129b67b2bc6c5a634f8fb4961a7e2eba213a2ec075d159127b1260290a722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134063065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a30b4acc83ff841682eb21795e00f7ff030796f5e6fd2a127decd7a45ba7cef`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.version=20261011.0.609700
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 12 Oct 2026 17:57:13 GMT
LABEL org.opencontainers.image.created=2026-10-11T00:09:32+00:00
# Mon, 12 Oct 2026 17:57:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 12 Oct 2026 17:57:16 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261011.0.609700' /etc/os-release # buildkit
# Mon, 12 Oct 2026 17:57:16 GMT
ENV LANG=C.UTF-8
# Mon, 12 Oct 2026 17:57:16 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:d2cc54e7adee435a81c8b997d4346ca05a3a9639d71e1169d6cd9fb959bedaac`  
		Last Modified: Mon, 12 Oct 2026 17:57:41 GMT  
		Size: 134.1 MB (134054341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55924c9eac0db11dd02b15ee1743734f402b3b22b794909b72b93f7afb7d64b6`  
		Last Modified: Mon, 12 Oct 2026 17:57:38 GMT  
		Size: 8.7 KB (8724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:916246c6a700a0d0ab2fa8bfd4d7eb6596b0beef776d87df561b46bea50b488f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f94292aa9da96a1bbae8dcff13680c39e63d25d6732db41c825bc8b227f5c73`

```dockerfile
```

-	Layers:
	-	`sha256:c26d6a3ac7f66d8acdceea848e11ed79457abf7c35c89db957eb9ee748ee9ffe`  
		Last Modified: Mon, 12 Oct 2026 17:57:38 GMT  
		Size: 8.2 MB (8242403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffb1eb927ce61b647c3d133cdec60a57246a124560030da724ee8f57811f5e75`  
		Last Modified: Mon, 12 Oct 2026 17:57:38 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json
