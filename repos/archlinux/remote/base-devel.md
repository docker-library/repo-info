## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:70d777aaeb45befc04150df137c4d7c1b5042be442b4c904c38c6f6880bb7844
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:307b7161a9ad33b180f6a24532c9c05841012d129acc0ceafa8b9c7234b62148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307653993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e44f2d79d5c4bd29862ac065c0acda991e427c4f928d6454c868e185e4ac8b`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 19:05:40 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 14 Sep 2026 19:05:40 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 14 Sep 2026 19:05:40 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 14 Sep 2026 19:05:40 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 14 Sep 2026 19:05:40 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 14 Sep 2026 19:05:40 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 14 Sep 2026 19:05:40 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 14 Sep 2026 19:05:40 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Mon, 14 Sep 2026 19:05:40 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 14 Sep 2026 19:05:40 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Mon, 14 Sep 2026 19:05:40 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 19:05:47 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Mon, 14 Sep 2026 19:05:47 GMT
ENV LANG=C.UTF-8
# Mon, 14 Sep 2026 19:05:47 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:579a0240d65fcab6a1ced830c73a1e910b309d897d1ea8082389dace3d75594d`  
		Last Modified: Mon, 14 Sep 2026 19:06:42 GMT  
		Size: 307.6 MB (307642490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8ecbf87034f3965206a3b9089391b0c95c8ec0d05c9c660514d0282649ee1a7`  
		Last Modified: Mon, 14 Sep 2026 19:06:35 GMT  
		Size: 11.5 KB (11503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:a98c22dd83978f172031ab28486e582268dda2e207cd036246e604d35ee816d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14430661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9422c1efe2d291aafde1bbcdeb1d95133323dd7f73beae709ae0a588b597de32`

```dockerfile
```

-	Layers:
	-	`sha256:edf36c1d96414651b93c0b9de133466bd3c6dde897080f1f1456a7d6641455ad`  
		Last Modified: Mon, 14 Sep 2026 19:06:36 GMT  
		Size: 14.4 MB (14418950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd13e3089f68944dc3117be4257ac05f1bba2fef959924ec81a015e537f736e`  
		Last Modified: Mon, 14 Sep 2026 19:06:35 GMT  
		Size: 11.7 KB (11711 bytes)  
		MIME: application/vnd.in-toto+json
