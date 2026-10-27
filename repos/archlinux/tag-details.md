<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20261025.0.616225`](#archlinuxbase-202610250616225)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20261025.0.616225`](#archlinuxbase-devel-202610250616225)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20261025.0.616225`](#archlinuxmultilib-devel-202610250616225)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:e82623936fa1a69700b48e98b058df6eaab18b737c27473a7234a40fdecb9413
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:dfc5be7be44cf1acf3d9b3b902e3e9c8a29f97ed41e35631823cdc9c97e5d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134226363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2533a05fd2eeef8f3d1f60fe73649d4ee099b1594868af7b588f268763cbb9`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.version=20261025.0.616225
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.created=2026-10-25T00:09:13+00:00
# Tue, 27 Oct 2026 16:31:05 GMT
COPY /rootfs/ / # buildkit
# Tue, 27 Oct 2026 16:31:08 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261025.0.616225' /etc/os-release # buildkit
# Tue, 27 Oct 2026 16:31:08 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:31:08 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:1dfa7afed57d42ac3f3367b3b4bc34cd7615a6f71e3fb82c485df5eb8861dce9`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 134.2 MB (134217647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3cbebbced26e950ae9020b3867106f352a384b33417a401ad041f4790c62f1`  
		Last Modified: Tue, 27 Oct 2026 16:31:29 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:50d56cf2f30064994623d99a71c6687e1c01a8905fc2aac6f051114b302af2ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dc7b16994eeacffcb26cd288ac8069fa5b48aaef5b93b40190bf3f828e2d28`

```dockerfile
```

-	Layers:
	-	`sha256:70611aef9d39895890252403199ba40b85e83016333f523280fd518b53a51ec0`  
		Last Modified: Tue, 27 Oct 2026 16:31:30 GMT  
		Size: 8.2 MB (8242563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72f885365a8d695285da94d0a95cf973f8f274e3dcd4282b139430df3d6746b2`  
		Last Modified: Tue, 27 Oct 2026 16:31:29 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20261025.0.616225`

```console
$ docker pull archlinux@sha256:e82623936fa1a69700b48e98b058df6eaab18b737c27473a7234a40fdecb9413
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20261025.0.616225` - linux; amd64

```console
$ docker pull archlinux@sha256:dfc5be7be44cf1acf3d9b3b902e3e9c8a29f97ed41e35631823cdc9c97e5d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134226363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2533a05fd2eeef8f3d1f60fe73649d4ee099b1594868af7b588f268763cbb9`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.version=20261025.0.616225
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.created=2026-10-25T00:09:13+00:00
# Tue, 27 Oct 2026 16:31:05 GMT
COPY /rootfs/ / # buildkit
# Tue, 27 Oct 2026 16:31:08 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261025.0.616225' /etc/os-release # buildkit
# Tue, 27 Oct 2026 16:31:08 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:31:08 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:1dfa7afed57d42ac3f3367b3b4bc34cd7615a6f71e3fb82c485df5eb8861dce9`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 134.2 MB (134217647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3cbebbced26e950ae9020b3867106f352a384b33417a401ad041f4790c62f1`  
		Last Modified: Tue, 27 Oct 2026 16:31:29 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20261025.0.616225` - unknown; unknown

```console
$ docker pull archlinux@sha256:50d56cf2f30064994623d99a71c6687e1c01a8905fc2aac6f051114b302af2ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dc7b16994eeacffcb26cd288ac8069fa5b48aaef5b93b40190bf3f828e2d28`

```dockerfile
```

-	Layers:
	-	`sha256:70611aef9d39895890252403199ba40b85e83016333f523280fd518b53a51ec0`  
		Last Modified: Tue, 27 Oct 2026 16:31:30 GMT  
		Size: 8.2 MB (8242563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72f885365a8d695285da94d0a95cf973f8f274e3dcd4282b139430df3d6746b2`  
		Last Modified: Tue, 27 Oct 2026 16:31:29 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:624bdc7fc6615155d67bc34cf7146c0c9fd0e3c92943977da63a630e4ca49c30
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:cb06b309ab9424b354a8e1099a934fc48b13e62c3d4453d19d50beaa72c6caee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309171052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:663144237b9d7520631776b4138047ecf7398c2b2ab2514500c0351c6cb431a0`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.version=20261025.0.616225
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.created=2026-10-25T00:09:13+00:00
# Tue, 27 Oct 2026 16:31:57 GMT
COPY /rootfs/ / # buildkit
# Tue, 27 Oct 2026 16:32:04 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261025.0.616225' /etc/os-release # buildkit
# Tue, 27 Oct 2026 16:32:04 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:32:04 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:4667fffe4e95a25657f64902c821d3ead6745a50c75a07e48ed390433b1e7dbe`  
		Last Modified: Tue, 27 Oct 2026 16:33:02 GMT  
		Size: 309.2 MB (309159555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7231ba0c2dcdf4dbd52dee3a905d7d0df0f0ad3cc825644452d40faad779726`  
		Last Modified: Tue, 27 Oct 2026 16:32:56 GMT  
		Size: 11.5 KB (11497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:8dfdc195f48436b5cf4b413bdf3ea56598b741d92757fb0d84398e4d6d3142c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14474711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817a791877c33879098a3e1c519441c12751b07834bb7fc2224469d36859a7b0`

```dockerfile
```

-	Layers:
	-	`sha256:93e0e84d985a496adf90e2cf6bbdcc15155e96cb7245f77c7b5c80e361b1df93`  
		Last Modified: Tue, 27 Oct 2026 16:32:56 GMT  
		Size: 14.5 MB (14462999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d9c5730f794fd8ed1e6457b25933189a633c73b7bdc09f9914d07298ea6734`  
		Last Modified: Tue, 27 Oct 2026 16:32:56 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20261025.0.616225`

```console
$ docker pull archlinux@sha256:624bdc7fc6615155d67bc34cf7146c0c9fd0e3c92943977da63a630e4ca49c30
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20261025.0.616225` - linux; amd64

```console
$ docker pull archlinux@sha256:cb06b309ab9424b354a8e1099a934fc48b13e62c3d4453d19d50beaa72c6caee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309171052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:663144237b9d7520631776b4138047ecf7398c2b2ab2514500c0351c6cb431a0`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.version=20261025.0.616225
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 27 Oct 2026 16:31:57 GMT
LABEL org.opencontainers.image.created=2026-10-25T00:09:13+00:00
# Tue, 27 Oct 2026 16:31:57 GMT
COPY /rootfs/ / # buildkit
# Tue, 27 Oct 2026 16:32:04 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261025.0.616225' /etc/os-release # buildkit
# Tue, 27 Oct 2026 16:32:04 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:32:04 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:4667fffe4e95a25657f64902c821d3ead6745a50c75a07e48ed390433b1e7dbe`  
		Last Modified: Tue, 27 Oct 2026 16:33:02 GMT  
		Size: 309.2 MB (309159555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7231ba0c2dcdf4dbd52dee3a905d7d0df0f0ad3cc825644452d40faad779726`  
		Last Modified: Tue, 27 Oct 2026 16:32:56 GMT  
		Size: 11.5 KB (11497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20261025.0.616225` - unknown; unknown

```console
$ docker pull archlinux@sha256:8dfdc195f48436b5cf4b413bdf3ea56598b741d92757fb0d84398e4d6d3142c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14474711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817a791877c33879098a3e1c519441c12751b07834bb7fc2224469d36859a7b0`

```dockerfile
```

-	Layers:
	-	`sha256:93e0e84d985a496adf90e2cf6bbdcc15155e96cb7245f77c7b5c80e361b1df93`  
		Last Modified: Tue, 27 Oct 2026 16:32:56 GMT  
		Size: 14.5 MB (14462999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d9c5730f794fd8ed1e6457b25933189a633c73b7bdc09f9914d07298ea6734`  
		Last Modified: Tue, 27 Oct 2026 16:32:56 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:e82623936fa1a69700b48e98b058df6eaab18b737c27473a7234a40fdecb9413
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:dfc5be7be44cf1acf3d9b3b902e3e9c8a29f97ed41e35631823cdc9c97e5d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134226363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2533a05fd2eeef8f3d1f60fe73649d4ee099b1594868af7b588f268763cbb9`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.version=20261025.0.616225
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 27 Oct 2026 16:31:05 GMT
LABEL org.opencontainers.image.created=2026-10-25T00:09:13+00:00
# Tue, 27 Oct 2026 16:31:05 GMT
COPY /rootfs/ / # buildkit
# Tue, 27 Oct 2026 16:31:08 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261025.0.616225' /etc/os-release # buildkit
# Tue, 27 Oct 2026 16:31:08 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:31:08 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:1dfa7afed57d42ac3f3367b3b4bc34cd7615a6f71e3fb82c485df5eb8861dce9`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 134.2 MB (134217647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3cbebbced26e950ae9020b3867106f352a384b33417a401ad041f4790c62f1`  
		Last Modified: Tue, 27 Oct 2026 16:31:29 GMT  
		Size: 8.7 KB (8716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:50d56cf2f30064994623d99a71c6687e1c01a8905fc2aac6f051114b302af2ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dc7b16994eeacffcb26cd288ac8069fa5b48aaef5b93b40190bf3f828e2d28`

```dockerfile
```

-	Layers:
	-	`sha256:70611aef9d39895890252403199ba40b85e83016333f523280fd518b53a51ec0`  
		Last Modified: Tue, 27 Oct 2026 16:31:30 GMT  
		Size: 8.2 MB (8242563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72f885365a8d695285da94d0a95cf973f8f274e3dcd4282b139430df3d6746b2`  
		Last Modified: Tue, 27 Oct 2026 16:31:29 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:24f56376d6108709576155647e85f7a33bf45295df282027d3a405b8363a0d87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:46c8cc3a89421b3626b64373ad4bff1ab9123d664ab1fb22694846bddc6d5d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331653806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fce48d49a982bd653e9b64fc735e3ff36ced95434ad80492095ece94a0b42d4`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.version=20261025.0.616225
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.created=2026-10-25T00:09:13+00:00
# Tue, 27 Oct 2026 16:31:24 GMT
COPY /rootfs/ / # buildkit
# Tue, 27 Oct 2026 16:31:32 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261025.0.616225' /etc/os-release # buildkit
# Tue, 27 Oct 2026 16:31:32 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:31:32 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:b50212de4db27791f314606475df1b8d50c3c69ddedda4c4f584c7677d736460`  
		Last Modified: Tue, 27 Oct 2026 16:32:31 GMT  
		Size: 331.6 MB (331641073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448620fc00cf519fe6862b1ce0d3b24839fb979a90438f1ec67bf755799b1a74`  
		Last Modified: Tue, 27 Oct 2026 16:32:25 GMT  
		Size: 12.7 KB (12733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:da5f6974d00d2ed985117654da22277dcb9072914e2c9998c821ee825a094e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14745854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:264d330a7377d5648a1a5f5d4fbbd0fd7766d3729a14288d8af06db4e4efaed4`

```dockerfile
```

-	Layers:
	-	`sha256:8a53e8236c375e647db86a1fee5c14749497a087d23166eb96b46338d9323b52`  
		Last Modified: Tue, 27 Oct 2026 16:32:26 GMT  
		Size: 14.7 MB (14734087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0f390c51b555ed646f815c96b7f67fe26033a75b98bd662ce0380739d952052`  
		Last Modified: Tue, 27 Oct 2026 16:32:25 GMT  
		Size: 11.8 KB (11767 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20261025.0.616225`

```console
$ docker pull archlinux@sha256:24f56376d6108709576155647e85f7a33bf45295df282027d3a405b8363a0d87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20261025.0.616225` - linux; amd64

```console
$ docker pull archlinux@sha256:46c8cc3a89421b3626b64373ad4bff1ab9123d664ab1fb22694846bddc6d5d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331653806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fce48d49a982bd653e9b64fc735e3ff36ced95434ad80492095ece94a0b42d4`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.version=20261025.0.616225
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 27 Oct 2026 16:31:24 GMT
LABEL org.opencontainers.image.created=2026-10-25T00:09:13+00:00
# Tue, 27 Oct 2026 16:31:24 GMT
COPY /rootfs/ / # buildkit
# Tue, 27 Oct 2026 16:31:32 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261025.0.616225' /etc/os-release # buildkit
# Tue, 27 Oct 2026 16:31:32 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:31:32 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:b50212de4db27791f314606475df1b8d50c3c69ddedda4c4f584c7677d736460`  
		Last Modified: Tue, 27 Oct 2026 16:32:31 GMT  
		Size: 331.6 MB (331641073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448620fc00cf519fe6862b1ce0d3b24839fb979a90438f1ec67bf755799b1a74`  
		Last Modified: Tue, 27 Oct 2026 16:32:25 GMT  
		Size: 12.7 KB (12733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20261025.0.616225` - unknown; unknown

```console
$ docker pull archlinux@sha256:da5f6974d00d2ed985117654da22277dcb9072914e2c9998c821ee825a094e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14745854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:264d330a7377d5648a1a5f5d4fbbd0fd7766d3729a14288d8af06db4e4efaed4`

```dockerfile
```

-	Layers:
	-	`sha256:8a53e8236c375e647db86a1fee5c14749497a087d23166eb96b46338d9323b52`  
		Last Modified: Tue, 27 Oct 2026 16:32:26 GMT  
		Size: 14.7 MB (14734087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0f390c51b555ed646f815c96b7f67fe26033a75b98bd662ce0380739d952052`  
		Last Modified: Tue, 27 Oct 2026 16:32:25 GMT  
		Size: 11.8 KB (11767 bytes)  
		MIME: application/vnd.in-toto+json
