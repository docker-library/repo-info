## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:34b823cbb22bedbe2f9d16e5b0c1c02a1c927ccab98b69a82aa49313b8f7d2d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:a4628e7a0b0e5ee14dd071b168ac4a08942c910c40c9410090688456c7b21b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.0 MB (331048470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b337e6ee70f998d0ccc89368db2ed838b3da494d30d50ad86acb48af860016`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 19 Oct 2026 17:55:01 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 19 Oct 2026 17:55:01 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 19 Oct 2026 17:55:01 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 19 Oct 2026 17:55:01 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 19 Oct 2026 17:55:01 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 19 Oct 2026 17:55:01 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 19 Oct 2026 17:55:01 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 19 Oct 2026 17:55:01 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Mon, 19 Oct 2026 17:55:01 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 19 Oct 2026 17:55:01 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Mon, 19 Oct 2026 17:55:01 GMT
COPY /rootfs/ / # buildkit
# Mon, 19 Oct 2026 17:55:09 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Mon, 19 Oct 2026 17:55:09 GMT
ENV LANG=C.UTF-8
# Mon, 19 Oct 2026 17:55:09 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:a66c03a0640de7b471a1dae2a762e4712b8e4e528d9123cadd99ce7bbe8e4546`  
		Last Modified: Mon, 19 Oct 2026 17:56:16 GMT  
		Size: 331.0 MB (331035760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9a16c1f4ca317cc4913a23ec7253a0e993cd19cfb9115b5d9a5b69ff211210c`  
		Last Modified: Mon, 19 Oct 2026 17:56:04 GMT  
		Size: 12.7 KB (12710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:962a55ac388da11a8222a774658d0c9acaed7372fa0cd343a628711e8b66baf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14734919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:595a37fe1cc85690106495eaabe982436dcf46600a027cb1f34bb9a99727daab`

```dockerfile
```

-	Layers:
	-	`sha256:48e26d4269368341c17d91dd3a95ebe16f69d5c5b6ac6e39fc14681362ed0589`  
		Last Modified: Mon, 19 Oct 2026 17:56:05 GMT  
		Size: 14.7 MB (14723152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19f5d8b902619f76121eff45ab9c372b64da95ff90f9699087ead9df03b50d98`  
		Last Modified: Mon, 19 Oct 2026 17:56:04 GMT  
		Size: 11.8 KB (11767 bytes)  
		MIME: application/vnd.in-toto+json
