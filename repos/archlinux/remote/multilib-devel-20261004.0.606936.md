## `archlinux:multilib-devel-20261004.0.606936`

```console
$ docker pull archlinux@sha256:082944f9c556a61b1f9d45e8b38f06fbbf1572e582a3dd87a3f541fdc66c87e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20261004.0.606936` - linux; amd64

```console
$ docker pull archlinux@sha256:d7ca4c67169c56703f0f7a740aa2d2040ff5007ca901d13b9f6186a49321d0cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.7 MB (330731991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee886e5db6935ef4bcd20d8b45194fd78bd104ff7203a4928a6c04a7063785d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.version=20261004.0.606936
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 05 Oct 2026 19:01:26 GMT
LABEL org.opencontainers.image.created=2026-10-04T00:09:23+00:00
# Mon, 05 Oct 2026 19:01:26 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 19:01:33 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261004.0.606936' /etc/os-release # buildkit
# Mon, 05 Oct 2026 19:01:33 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 19:01:33 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:5ca61c9878fa42d0f8bac39a79b4af74914ac07d561238f9615deb2d9eccf1dc`  
		Last Modified: Mon, 05 Oct 2026 19:02:33 GMT  
		Size: 330.7 MB (330719274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1690580bc944c6b0dfe97b3fe9adb40845340db2556a7e3a6a9ae05b08d22174`  
		Last Modified: Mon, 05 Oct 2026 19:02:27 GMT  
		Size: 12.7 KB (12717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20261004.0.606936` - unknown; unknown

```console
$ docker pull archlinux@sha256:e10f65ff707bb7042bdc1ad68acc8bba074d890eaa2b0249983c9b49e99d1147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14735639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a628e3359fddb920e81db9214497eb1bbec4c4c3dbf76cc062da06dbe1c347`

```dockerfile
```

-	Layers:
	-	`sha256:a0081edd17d5fff27e38ae16d3c81660e8a110a776ab58b29dde51c9943a38bd`  
		Last Modified: Mon, 05 Oct 2026 19:02:27 GMT  
		Size: 14.7 MB (14723871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b967d4ab27c736bdde04a7aab8a099ef9a9c37a2d961f8146e868e64379b9c6e`  
		Last Modified: Mon, 05 Oct 2026 19:02:27 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
