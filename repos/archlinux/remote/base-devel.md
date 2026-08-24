## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:68bfc3b0d277b08a99101dc9b94aaa03e5ae70cf1b4fb965c03b2b87b915760d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:a26046b7363dad8e2614858f4313949ae9b05c9c5f31de343a54864b9e20806f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307358225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831eb2376c3c0edb5d404326342b89a3664b47184037c0773bcb86ba19d44b82`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.version=20260823.0.578598
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 24 Aug 2026 18:03:51 GMT
LABEL org.opencontainers.image.created=2026-08-23T00:09:32+00:00
# Mon, 24 Aug 2026 18:03:51 GMT
COPY /rootfs/ / # buildkit
# Mon, 24 Aug 2026 18:03:58 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260823.0.578598' /etc/os-release # buildkit
# Mon, 24 Aug 2026 18:03:58 GMT
ENV LANG=C.UTF-8
# Mon, 24 Aug 2026 18:03:58 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:eec7b623217d1e36ee44e8dde30878a0d7324bdcb172e9fa9f3e605a58c956d3`  
		Last Modified: Mon, 24 Aug 2026 18:04:52 GMT  
		Size: 307.3 MB (307346710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de15d39e90f7cebdd9b24d66ba248bb7d0a1cbe5291fbad559c1fcb7f3f4f238`  
		Last Modified: Mon, 24 Aug 2026 18:04:45 GMT  
		Size: 11.5 KB (11515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:df2dde8c88d977232694f24bcb2792ada3c464cc2d2e70b2302b97889616a0bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14421752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a6103c79a5b96c660bd694427b6bb1ec687d5cd6626d088f39399f5cd2a3df`

```dockerfile
```

-	Layers:
	-	`sha256:602beca5070e9676f7ab4eeb253246b95746cf824999e756b09dd31e112fa5ef`  
		Last Modified: Mon, 24 Aug 2026 18:04:46 GMT  
		Size: 14.4 MB (14410041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1409180960fc77252ee897320833937579c9550d41a01da085cc9bb37f74a64`  
		Last Modified: Mon, 24 Aug 2026 18:04:45 GMT  
		Size: 11.7 KB (11711 bytes)  
		MIME: application/vnd.in-toto+json
