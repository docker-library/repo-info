## `archlinux:base-devel-20260802.0.566770`

```console
$ docker pull archlinux@sha256:c1829f370be8434135f43fb3acaef1256780804ac3b2d2eec90dfb1232e1ffdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260802.0.566770` - linux; amd64

```console
$ docker pull archlinux@sha256:fae033b815a16f930325c2697e620362be4d2e5d739a301b10ad1fc9c8643a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306781143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22433964ab61fe476301c405cba6ff79d2f0c6d6b4662d60f688d72b4b4564cd`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.version=20260802.0.566770
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 03 Aug 2026 17:47:59 GMT
LABEL org.opencontainers.image.created=2026-08-02T00:10:23+00:00
# Mon, 03 Aug 2026 17:47:59 GMT
COPY /rootfs/ / # buildkit
# Mon, 03 Aug 2026 17:48:06 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260802.0.566770' /etc/os-release # buildkit
# Mon, 03 Aug 2026 17:48:06 GMT
ENV LANG=C.UTF-8
# Mon, 03 Aug 2026 17:48:06 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:17d65cad339120c06d8f02f706502b31d9fc1f2dc7809cb9e83de0d0aa00a027`  
		Last Modified: Mon, 03 Aug 2026 17:48:58 GMT  
		Size: 306.8 MB (306769697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7318fdabbbe3d781b76bcd6649f28d051d1354a99032e1d800888b817fbacbb1`  
		Last Modified: Mon, 03 Aug 2026 17:48:52 GMT  
		Size: 11.4 KB (11446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260802.0.566770` - unknown; unknown

```console
$ docker pull archlinux@sha256:69d1e96fb0bc9be8d29df354d570eb47113e1939ce051fcf8f3b1de6ed1e1cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14411006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d1caf1045b97ce3d5716a358f7759de7d18035b489fa0161e6b4f0d0f7e566`

```dockerfile
```

-	Layers:
	-	`sha256:593bd2d6426d7b2002290728ad3f758991efca2d01edd7551b90eef8da3985b0`  
		Last Modified: Mon, 03 Aug 2026 17:48:53 GMT  
		Size: 14.4 MB (14399294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df41c5efd2776f27f14649ad2466be8e4ff1c58ff121385acd5ea735c4d51917`  
		Last Modified: Mon, 03 Aug 2026 17:48:52 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
