<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20260823.0.578598`](#archlinuxbase-202608230578598)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20260823.0.578598`](#archlinuxbase-devel-202608230578598)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20260823.0.578598`](#archlinuxmultilib-devel-202608230578598)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:4bf33b21a715aac0b48ce6e9eaed4782a898eae96f88f5da3635572129c2584a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:bf88f8143c3ef21b14d0ebb8140099f0bf75ecfc3699f357ff92317a73f5aba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133236303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7c82b77aad2e5264d61c674987a7b6d163542dfb2545558b5ead3da04ef5b3`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.version=20260816.0.574111
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.created=2026-08-16T00:10:28+00:00
# Mon, 17 Aug 2026 17:20:30 GMT
COPY /rootfs/ / # buildkit
# Mon, 17 Aug 2026 17:20:33 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260816.0.574111' /etc/os-release # buildkit
# Mon, 17 Aug 2026 17:20:33 GMT
ENV LANG=C.UTF-8
# Mon, 17 Aug 2026 17:20:33 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:cbcbefb74cb161c4e1cbd2e4dbecf0b4bfae0df7e2fab5c5eac95e95237714f8`  
		Last Modified: Mon, 17 Aug 2026 17:20:59 GMT  
		Size: 133.2 MB (133227572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ae0275f44e2064346a1b346344e35bbbea833300d04238d44d3ee3226183f4`  
		Last Modified: Mon, 17 Aug 2026 17:20:56 GMT  
		Size: 8.7 KB (8731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:206a61320bd009f94dd55fe921b5962b91848e8a4c27b61454b3f3a27915f55e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8219709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9746a2e3839170595b559c652394e9bb69b45610778a774686de849515d3e2e`

```dockerfile
```

-	Layers:
	-	`sha256:fbf52debecb6b6eb6c520bcb53cc5985c04810ee99667881f42f6b41b9e9d61d`  
		Last Modified: Mon, 17 Aug 2026 17:20:56 GMT  
		Size: 8.2 MB (8207780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eef86947c227ceb19943dcb8a1abb649419be05382be6cc21696d99ffa703317`  
		Last Modified: Mon, 17 Aug 2026 17:20:56 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20260823.0.578598`

**does not exist** (yet?)

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:714acd1eef9ae997d95691b1c5220ada0076185b77857c1813f02de0fa83cf7b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:aecf5b39bd3139a951090dfb3d940f9317e4c5fca038c65fb49ac03910f7133e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.1 MB (307132560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502916001acf4fba3a7f8cf60111de0cb575a140cab3b6746eb67b7ad0ea0a73`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.version=20260816.0.574111
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 17 Aug 2026 17:21:01 GMT
LABEL org.opencontainers.image.created=2026-08-16T00:10:28+00:00
# Mon, 17 Aug 2026 17:21:01 GMT
COPY /rootfs/ / # buildkit
# Mon, 17 Aug 2026 17:21:08 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260816.0.574111' /etc/os-release # buildkit
# Mon, 17 Aug 2026 17:21:08 GMT
ENV LANG=C.UTF-8
# Mon, 17 Aug 2026 17:21:08 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:ad458849f865f96e29049ec253d427cc57c2397288b4a5df2a54a705b075d135`  
		Last Modified: Mon, 17 Aug 2026 17:22:06 GMT  
		Size: 307.1 MB (307121104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e629da57546eea6468f4cd62d9d9e75f8570807dc0da336ffe71021daedc1ad`  
		Last Modified: Mon, 17 Aug 2026 17:21:59 GMT  
		Size: 11.5 KB (11456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:5f4b9d6dac74a3f7adfd00e4b7245cfc2de3cc8f8a551479a3f8c90905687038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14426300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f165d9cb80bcaaf98f3b402e0a00d023ed673b909b58f4be4f6dda3b99e2081`

```dockerfile
```

-	Layers:
	-	`sha256:be7e9fcb0c165334d577c2924c17a6587f2670314857a892c7cf7245720d9685`  
		Last Modified: Mon, 17 Aug 2026 17:22:00 GMT  
		Size: 14.4 MB (14414588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2560b303288d277a1b4da76765fb356a8c9924f13fb361d7c3675c7384669b47`  
		Last Modified: Mon, 17 Aug 2026 17:22:00 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20260823.0.578598`

**does not exist** (yet?)

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:4bf33b21a715aac0b48ce6e9eaed4782a898eae96f88f5da3635572129c2584a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:bf88f8143c3ef21b14d0ebb8140099f0bf75ecfc3699f357ff92317a73f5aba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133236303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7c82b77aad2e5264d61c674987a7b6d163542dfb2545558b5ead3da04ef5b3`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.version=20260816.0.574111
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 17 Aug 2026 17:20:30 GMT
LABEL org.opencontainers.image.created=2026-08-16T00:10:28+00:00
# Mon, 17 Aug 2026 17:20:30 GMT
COPY /rootfs/ / # buildkit
# Mon, 17 Aug 2026 17:20:33 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260816.0.574111' /etc/os-release # buildkit
# Mon, 17 Aug 2026 17:20:33 GMT
ENV LANG=C.UTF-8
# Mon, 17 Aug 2026 17:20:33 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:cbcbefb74cb161c4e1cbd2e4dbecf0b4bfae0df7e2fab5c5eac95e95237714f8`  
		Last Modified: Mon, 17 Aug 2026 17:20:59 GMT  
		Size: 133.2 MB (133227572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ae0275f44e2064346a1b346344e35bbbea833300d04238d44d3ee3226183f4`  
		Last Modified: Mon, 17 Aug 2026 17:20:56 GMT  
		Size: 8.7 KB (8731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:206a61320bd009f94dd55fe921b5962b91848e8a4c27b61454b3f3a27915f55e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8219709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9746a2e3839170595b559c652394e9bb69b45610778a774686de849515d3e2e`

```dockerfile
```

-	Layers:
	-	`sha256:fbf52debecb6b6eb6c520bcb53cc5985c04810ee99667881f42f6b41b9e9d61d`  
		Last Modified: Mon, 17 Aug 2026 17:20:56 GMT  
		Size: 8.2 MB (8207780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eef86947c227ceb19943dcb8a1abb649419be05382be6cc21696d99ffa703317`  
		Last Modified: Mon, 17 Aug 2026 17:20:56 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:58bce6f113dec4c642172a8ce7239f29da461bcf3c91228498c6131dd64553e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:001dd393fb22c06e5c2b5314ee11ff854dc9850d77b290ed329ef7fb97b49669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.6 MB (329605399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54b36277a423bd75f5af8e26889e16f7483d18839360f35137278bb4c9d40183`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.version=20260816.0.574111
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 17 Aug 2026 17:21:22 GMT
LABEL org.opencontainers.image.created=2026-08-16T00:10:28+00:00
# Mon, 17 Aug 2026 17:21:22 GMT
COPY /rootfs/ / # buildkit
# Mon, 17 Aug 2026 17:21:30 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260816.0.574111' /etc/os-release # buildkit
# Mon, 17 Aug 2026 17:21:30 GMT
ENV LANG=C.UTF-8
# Mon, 17 Aug 2026 17:21:30 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:dc8515cf51ae9b459ae3704b660adb9ac4e6ad15b5100c1e0aa89ee2bc3bb8c7`  
		Last Modified: Mon, 17 Aug 2026 17:22:31 GMT  
		Size: 329.6 MB (329592724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e242c629e0def490319feca556c9e691bcb8c3a60590f8ccc0a86bbbcb74d3`  
		Last Modified: Mon, 17 Aug 2026 17:22:25 GMT  
		Size: 12.7 KB (12675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:f649b425d0e8fcf4bbca719018abfbd6f671671ef7236f724d4ab411d9afa540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14697443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:addb608280415e8dc27b4eef0c08f26cf1d442831160e4d93423a70056ecce1e`

```dockerfile
```

-	Layers:
	-	`sha256:a2b52d36911e6cffb172562a4a1da81c43dc64cacfa0a9df3f80439b930f9017`  
		Last Modified: Mon, 17 Aug 2026 17:22:26 GMT  
		Size: 14.7 MB (14685676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86ed0cd305ba950c210f66ceb25991fba962072013a4e073526895f4d85ea802`  
		Last Modified: Mon, 17 Aug 2026 17:22:25 GMT  
		Size: 11.8 KB (11767 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20260823.0.578598`

**does not exist** (yet?)
