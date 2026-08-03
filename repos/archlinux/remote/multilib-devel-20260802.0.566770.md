## `archlinux:multilib-devel-20260802.0.566770`

```console
$ docker pull archlinux@sha256:351a6d85eb7259b59aa80967ea99969dc39089fc416ec3547ebbdc4254006417
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260802.0.566770` - linux; amd64

```console
$ docker pull archlinux@sha256:32185ddac3eaa9b966918e47d359a6375d9d3eaf4393bcf5ca522f41954f61ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329239054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de4abad929ec94339cc0cbfe54f39c5291e9321c0c93b0a0197412e95870514`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.version=20260802.0.566770
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 03 Aug 2026 17:48:20 GMT
LABEL org.opencontainers.image.created=2026-08-02T00:10:23+00:00
# Mon, 03 Aug 2026 17:48:20 GMT
COPY /rootfs/ / # buildkit
# Mon, 03 Aug 2026 17:48:28 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260802.0.566770' /etc/os-release # buildkit
# Mon, 03 Aug 2026 17:48:28 GMT
ENV LANG=C.UTF-8
# Mon, 03 Aug 2026 17:48:28 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:062d3beae4253741a43156d093664d97048f45bae4fc6bccd2f5274f282b4f41`  
		Last Modified: Mon, 03 Aug 2026 17:49:29 GMT  
		Size: 329.2 MB (329226449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ef57b44d228887df03caba8a2a7ce29bc51721fbf05f7d5b2522b1be270121`  
		Last Modified: Mon, 03 Aug 2026 17:49:22 GMT  
		Size: 12.6 KB (12605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260802.0.566770` - unknown; unknown

```console
$ docker pull archlinux@sha256:084fd7d33344be80930d9917398123add121fb7d0ef07f17863974f1aed1c577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14682150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6501fd2d53ef4b3786b04ff62bba7c857ff4dd42ed7878b71a66e0719c3525df`

```dockerfile
```

-	Layers:
	-	`sha256:da46b5424d8062831658f4c7f047e3ccfdc454468a55f1cdb20d240017a1b91c`  
		Last Modified: Mon, 03 Aug 2026 17:49:23 GMT  
		Size: 14.7 MB (14670382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a84d5e2ab0e8db7f33005610603812ca3254ed61dac3bf82db0048563da1632`  
		Last Modified: Mon, 03 Aug 2026 17:49:22 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
