<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20260913.0.592969`](#archlinuxbase-202609130592969)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20260913.0.592969`](#archlinuxbase-devel-202609130592969)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20260913.0.592969`](#archlinuxmultilib-devel-202609130592969)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:204e91950fd364961088a01773eee9012243b7e965fed42b1d82d12416190782
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:421f8732de4338c86c204a2af2d62d650f46e3a667744ab8dc5e88853481a4aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133533671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b50c3d168020f4524beddc8d20c1cb0ff7409bf55bd986e6f81aefcfc90760d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Mon, 14 Sep 2026 19:04:27 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 19:04:29 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Mon, 14 Sep 2026 19:04:29 GMT
ENV LANG=C.UTF-8
# Mon, 14 Sep 2026 19:04:29 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:9b7a6195b886333e81c4b606533b61677f5799f0cf4b140c5a43e172ede2fad6`  
		Last Modified: Mon, 14 Sep 2026 19:04:57 GMT  
		Size: 133.5 MB (133524961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fb7ddc97dd288005e912426841b13fbbef272f5ba468fa7e10a321c1caabf`  
		Last Modified: Mon, 14 Sep 2026 19:04:54 GMT  
		Size: 8.7 KB (8710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:8619838b8f707a41f54cf086b06cb201a0ac75aa3c27b634ddab10da315c9347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8221881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d10a0bf4353d28fbe83f8bc31e9c15c575cbf0b700a1dcdde138894185a0009`

```dockerfile
```

-	Layers:
	-	`sha256:e077b39e3d2988d267ac91d658a36f016d9c38cbf962ce4b4115496f9ebc5557`  
		Last Modified: Mon, 14 Sep 2026 19:04:54 GMT  
		Size: 8.2 MB (8209952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e151a1b05cbea9c73cec8b55349eaed6509ddf7e8300a2d80a9773dc8454b854`  
		Last Modified: Mon, 14 Sep 2026 19:04:54 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20260913.0.592969`

```console
$ docker pull archlinux@sha256:204e91950fd364961088a01773eee9012243b7e965fed42b1d82d12416190782
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20260913.0.592969` - linux; amd64

```console
$ docker pull archlinux@sha256:421f8732de4338c86c204a2af2d62d650f46e3a667744ab8dc5e88853481a4aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133533671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b50c3d168020f4524beddc8d20c1cb0ff7409bf55bd986e6f81aefcfc90760d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Mon, 14 Sep 2026 19:04:27 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 19:04:29 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Mon, 14 Sep 2026 19:04:29 GMT
ENV LANG=C.UTF-8
# Mon, 14 Sep 2026 19:04:29 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:9b7a6195b886333e81c4b606533b61677f5799f0cf4b140c5a43e172ede2fad6`  
		Last Modified: Mon, 14 Sep 2026 19:04:57 GMT  
		Size: 133.5 MB (133524961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fb7ddc97dd288005e912426841b13fbbef272f5ba468fa7e10a321c1caabf`  
		Last Modified: Mon, 14 Sep 2026 19:04:54 GMT  
		Size: 8.7 KB (8710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20260913.0.592969` - unknown; unknown

```console
$ docker pull archlinux@sha256:8619838b8f707a41f54cf086b06cb201a0ac75aa3c27b634ddab10da315c9347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8221881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d10a0bf4353d28fbe83f8bc31e9c15c575cbf0b700a1dcdde138894185a0009`

```dockerfile
```

-	Layers:
	-	`sha256:e077b39e3d2988d267ac91d658a36f016d9c38cbf962ce4b4115496f9ebc5557`  
		Last Modified: Mon, 14 Sep 2026 19:04:54 GMT  
		Size: 8.2 MB (8209952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e151a1b05cbea9c73cec8b55349eaed6509ddf7e8300a2d80a9773dc8454b854`  
		Last Modified: Mon, 14 Sep 2026 19:04:54 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

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

## `archlinux:base-devel-20260913.0.592969`

```console
$ docker pull archlinux@sha256:70d777aaeb45befc04150df137c4d7c1b5042be442b4c904c38c6f6880bb7844
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260913.0.592969` - linux; amd64

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

### `archlinux:base-devel-20260913.0.592969` - unknown; unknown

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

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:204e91950fd364961088a01773eee9012243b7e965fed42b1d82d12416190782
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:421f8732de4338c86c204a2af2d62d650f46e3a667744ab8dc5e88853481a4aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133533671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b50c3d168020f4524beddc8d20c1cb0ff7409bf55bd986e6f81aefcfc90760d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 14 Sep 2026 19:04:27 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Mon, 14 Sep 2026 19:04:27 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 19:04:29 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Mon, 14 Sep 2026 19:04:29 GMT
ENV LANG=C.UTF-8
# Mon, 14 Sep 2026 19:04:29 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:9b7a6195b886333e81c4b606533b61677f5799f0cf4b140c5a43e172ede2fad6`  
		Last Modified: Mon, 14 Sep 2026 19:04:57 GMT  
		Size: 133.5 MB (133524961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fb7ddc97dd288005e912426841b13fbbef272f5ba468fa7e10a321c1caabf`  
		Last Modified: Mon, 14 Sep 2026 19:04:54 GMT  
		Size: 8.7 KB (8710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:8619838b8f707a41f54cf086b06cb201a0ac75aa3c27b634ddab10da315c9347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8221881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d10a0bf4353d28fbe83f8bc31e9c15c575cbf0b700a1dcdde138894185a0009`

```dockerfile
```

-	Layers:
	-	`sha256:e077b39e3d2988d267ac91d658a36f016d9c38cbf962ce4b4115496f9ebc5557`  
		Last Modified: Mon, 14 Sep 2026 19:04:54 GMT  
		Size: 8.2 MB (8209952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e151a1b05cbea9c73cec8b55349eaed6509ddf7e8300a2d80a9773dc8454b854`  
		Last Modified: Mon, 14 Sep 2026 19:04:54 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:8b56ef450d658dd2c46672270ffe79ed683b3e42be78878235174b16f8d261ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:26b0dbe4d9133578c798d2b9b23d3327116968e2dab40907c6b033bfed3a06be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.1 MB (330127030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4faaf9e446bdc034b72a43248d5c0deaf83339dfd7e788b4676c16ebf0abac2d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Mon, 14 Sep 2026 19:06:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 19:06:14 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Mon, 14 Sep 2026 19:06:14 GMT
ENV LANG=C.UTF-8
# Mon, 14 Sep 2026 19:06:14 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:c406e7b80187800ed1d9f4bb7cdb82046233689c65342d511fedb424d32bfdd4`  
		Last Modified: Mon, 14 Sep 2026 19:07:11 GMT  
		Size: 330.1 MB (330114301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57eef1ba4608eb184be88108521c5cde7329353155edd7c911be28e6276fcda9`  
		Last Modified: Mon, 14 Sep 2026 19:07:04 GMT  
		Size: 12.7 KB (12729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:3869818d515e15109714696e428956ad5fddbe4634cf8b45550906f14ace9b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14701805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3602268e0f7354310e9176421d29dc37c90b26e456f5bd4776f2bfc6d697ec4`

```dockerfile
```

-	Layers:
	-	`sha256:b8a7eec92c474a09fd56815a178d66506e537e7f92bba9c7d9bc3bfbb1512757`  
		Last Modified: Mon, 14 Sep 2026 19:07:05 GMT  
		Size: 14.7 MB (14690038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:448a1fddabe22da188b121c873e8a3744256e63ec07584d27e2fa20c82283e02`  
		Last Modified: Mon, 14 Sep 2026 19:07:04 GMT  
		Size: 11.8 KB (11767 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20260913.0.592969`

```console
$ docker pull archlinux@sha256:8b56ef450d658dd2c46672270ffe79ed683b3e42be78878235174b16f8d261ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260913.0.592969` - linux; amd64

```console
$ docker pull archlinux@sha256:26b0dbe4d9133578c798d2b9b23d3327116968e2dab40907c6b033bfed3a06be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.1 MB (330127030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4faaf9e446bdc034b72a43248d5c0deaf83339dfd7e788b4676c16ebf0abac2d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.version=20260913.0.592969
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 14 Sep 2026 19:06:06 GMT
LABEL org.opencontainers.image.created=2026-09-13T00:09:16+00:00
# Mon, 14 Sep 2026 19:06:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 19:06:14 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260913.0.592969' /etc/os-release # buildkit
# Mon, 14 Sep 2026 19:06:14 GMT
ENV LANG=C.UTF-8
# Mon, 14 Sep 2026 19:06:14 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:c406e7b80187800ed1d9f4bb7cdb82046233689c65342d511fedb424d32bfdd4`  
		Last Modified: Mon, 14 Sep 2026 19:07:11 GMT  
		Size: 330.1 MB (330114301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57eef1ba4608eb184be88108521c5cde7329353155edd7c911be28e6276fcda9`  
		Last Modified: Mon, 14 Sep 2026 19:07:04 GMT  
		Size: 12.7 KB (12729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260913.0.592969` - unknown; unknown

```console
$ docker pull archlinux@sha256:3869818d515e15109714696e428956ad5fddbe4634cf8b45550906f14ace9b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14701805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3602268e0f7354310e9176421d29dc37c90b26e456f5bd4776f2bfc6d697ec4`

```dockerfile
```

-	Layers:
	-	`sha256:b8a7eec92c474a09fd56815a178d66506e537e7f92bba9c7d9bc3bfbb1512757`  
		Last Modified: Mon, 14 Sep 2026 19:07:05 GMT  
		Size: 14.7 MB (14690038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:448a1fddabe22da188b121c873e8a3744256e63ec07584d27e2fa20c82283e02`  
		Last Modified: Mon, 14 Sep 2026 19:07:04 GMT  
		Size: 11.8 KB (11767 bytes)  
		MIME: application/vnd.in-toto+json
