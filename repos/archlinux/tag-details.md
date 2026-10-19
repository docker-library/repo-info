<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20261018.0.612668`](#archlinuxbase-202610180612668)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20261018.0.612668`](#archlinuxbase-devel-202610180612668)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20261018.0.612668`](#archlinuxmultilib-devel-202610180612668)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:e43f1fd80e073992c5f173efbbbf65144170bf60aeb7369940087d63eacea8f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:5b0bb8064e4fcb1b2092fdee45e959c3c2d18dc7fb986a046aaddaae4d731993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134183302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805b6d85cbdba8fcf496417eb232dc2b8decf59537e468c99f27edec748eb8ad`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Mon, 19 Oct 2026 17:53:54 GMT
COPY /rootfs/ / # buildkit
# Mon, 19 Oct 2026 17:53:56 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Mon, 19 Oct 2026 17:53:56 GMT
ENV LANG=C.UTF-8
# Mon, 19 Oct 2026 17:53:56 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:7450fb54bb4fadc27bfa0277ecfbf489a6457ee6c2ae59d4300bde68610b6f48`  
		Last Modified: Mon, 19 Oct 2026 17:54:24 GMT  
		Size: 134.2 MB (134174595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c7c6c5e741df9b1f653c976a01966fc327fd61abe3733157d1a9051c2f10bc`  
		Last Modified: Mon, 19 Oct 2026 17:54:21 GMT  
		Size: 8.7 KB (8707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:29c758cb4edafff90e9f1ad9db87427c4886c221945e0c62e818828540189711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858932c087984e76a38cc8ab6583ad65dc5b527b46ef6029a0754dad72337b7`

```dockerfile
```

-	Layers:
	-	`sha256:24739cd84728798bbdb5e529f2474255f31ac2c360e6f3360f5319efbf6241f7`  
		Last Modified: Mon, 19 Oct 2026 17:54:21 GMT  
		Size: 8.2 MB (8242435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:098399d434562083960a4da24c49a9906972b11728221f952667237a7716fe4d`  
		Last Modified: Mon, 19 Oct 2026 17:54:21 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20261018.0.612668`

```console
$ docker pull archlinux@sha256:e43f1fd80e073992c5f173efbbbf65144170bf60aeb7369940087d63eacea8f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20261018.0.612668` - linux; amd64

```console
$ docker pull archlinux@sha256:5b0bb8064e4fcb1b2092fdee45e959c3c2d18dc7fb986a046aaddaae4d731993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134183302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805b6d85cbdba8fcf496417eb232dc2b8decf59537e468c99f27edec748eb8ad`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Mon, 19 Oct 2026 17:53:54 GMT
COPY /rootfs/ / # buildkit
# Mon, 19 Oct 2026 17:53:56 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Mon, 19 Oct 2026 17:53:56 GMT
ENV LANG=C.UTF-8
# Mon, 19 Oct 2026 17:53:56 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:7450fb54bb4fadc27bfa0277ecfbf489a6457ee6c2ae59d4300bde68610b6f48`  
		Last Modified: Mon, 19 Oct 2026 17:54:24 GMT  
		Size: 134.2 MB (134174595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c7c6c5e741df9b1f653c976a01966fc327fd61abe3733157d1a9051c2f10bc`  
		Last Modified: Mon, 19 Oct 2026 17:54:21 GMT  
		Size: 8.7 KB (8707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20261018.0.612668` - unknown; unknown

```console
$ docker pull archlinux@sha256:29c758cb4edafff90e9f1ad9db87427c4886c221945e0c62e818828540189711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858932c087984e76a38cc8ab6583ad65dc5b527b46ef6029a0754dad72337b7`

```dockerfile
```

-	Layers:
	-	`sha256:24739cd84728798bbdb5e529f2474255f31ac2c360e6f3360f5319efbf6241f7`  
		Last Modified: Mon, 19 Oct 2026 17:54:21 GMT  
		Size: 8.2 MB (8242435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:098399d434562083960a4da24c49a9906972b11728221f952667237a7716fe4d`  
		Last Modified: Mon, 19 Oct 2026 17:54:21 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:0ccc8b2e55c0c26a6e501e892cc6b1cdea7cfdf77e432941320148b4dabd2bff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:a25b54cf4b9c0de8752f5417c81810fb41bbfa5cdd6a504a9b6816a3b86b1e59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.6 MB (308569896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15677cce4ed04e1659d878a0901dec9c5b9ca1ac460b1e04ec4548199885007`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Mon, 19 Oct 2026 17:55:08 GMT
COPY /rootfs/ / # buildkit
# Mon, 19 Oct 2026 17:55:15 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Mon, 19 Oct 2026 17:55:15 GMT
ENV LANG=C.UTF-8
# Mon, 19 Oct 2026 17:55:15 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:2fa36ba04d1ebe963bd56848143685147186905057ce6874df2d1680bbf80247`  
		Last Modified: Mon, 19 Oct 2026 17:56:10 GMT  
		Size: 308.6 MB (308558390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c3b1218c0a269f8740fb1796876711b239b61b153308cfcd33ec574ada2af63`  
		Last Modified: Mon, 19 Oct 2026 17:56:02 GMT  
		Size: 11.5 KB (11506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:ceac4e0176099235d4186f341fc444ddb67ba4f0ab9407b17acd434dca7c23a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14463776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd4f2c707a6e736d0a211a39222d05c4bd12971e08a14cea7b085f03abd3e370`

```dockerfile
```

-	Layers:
	-	`sha256:f3a0b1634a69c338044c19b16ccdca8e469d9e31e664c43b57249dc817deb013`  
		Last Modified: Mon, 19 Oct 2026 17:56:03 GMT  
		Size: 14.5 MB (14452064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b30111e4789d5023fbe0c52515e44ecfa75eb381e501ad0f74520ed5fe2753a`  
		Last Modified: Mon, 19 Oct 2026 17:56:02 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20261018.0.612668`

```console
$ docker pull archlinux@sha256:0ccc8b2e55c0c26a6e501e892cc6b1cdea7cfdf77e432941320148b4dabd2bff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20261018.0.612668` - linux; amd64

```console
$ docker pull archlinux@sha256:a25b54cf4b9c0de8752f5417c81810fb41bbfa5cdd6a504a9b6816a3b86b1e59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.6 MB (308569896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15677cce4ed04e1659d878a0901dec9c5b9ca1ac460b1e04ec4548199885007`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Mon, 19 Oct 2026 17:55:08 GMT
COPY /rootfs/ / # buildkit
# Mon, 19 Oct 2026 17:55:15 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Mon, 19 Oct 2026 17:55:15 GMT
ENV LANG=C.UTF-8
# Mon, 19 Oct 2026 17:55:15 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:2fa36ba04d1ebe963bd56848143685147186905057ce6874df2d1680bbf80247`  
		Last Modified: Mon, 19 Oct 2026 17:56:10 GMT  
		Size: 308.6 MB (308558390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c3b1218c0a269f8740fb1796876711b239b61b153308cfcd33ec574ada2af63`  
		Last Modified: Mon, 19 Oct 2026 17:56:02 GMT  
		Size: 11.5 KB (11506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20261018.0.612668` - unknown; unknown

```console
$ docker pull archlinux@sha256:ceac4e0176099235d4186f341fc444ddb67ba4f0ab9407b17acd434dca7c23a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14463776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd4f2c707a6e736d0a211a39222d05c4bd12971e08a14cea7b085f03abd3e370`

```dockerfile
```

-	Layers:
	-	`sha256:f3a0b1634a69c338044c19b16ccdca8e469d9e31e664c43b57249dc817deb013`  
		Last Modified: Mon, 19 Oct 2026 17:56:03 GMT  
		Size: 14.5 MB (14452064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b30111e4789d5023fbe0c52515e44ecfa75eb381e501ad0f74520ed5fe2753a`  
		Last Modified: Mon, 19 Oct 2026 17:56:02 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:e43f1fd80e073992c5f173efbbbf65144170bf60aeb7369940087d63eacea8f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:5b0bb8064e4fcb1b2092fdee45e959c3c2d18dc7fb986a046aaddaae4d731993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134183302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805b6d85cbdba8fcf496417eb232dc2b8decf59537e468c99f27edec748eb8ad`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 19 Oct 2026 17:53:54 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Mon, 19 Oct 2026 17:53:54 GMT
COPY /rootfs/ / # buildkit
# Mon, 19 Oct 2026 17:53:56 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Mon, 19 Oct 2026 17:53:56 GMT
ENV LANG=C.UTF-8
# Mon, 19 Oct 2026 17:53:56 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:7450fb54bb4fadc27bfa0277ecfbf489a6457ee6c2ae59d4300bde68610b6f48`  
		Last Modified: Mon, 19 Oct 2026 17:54:24 GMT  
		Size: 134.2 MB (134174595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c7c6c5e741df9b1f653c976a01966fc327fd61abe3733157d1a9051c2f10bc`  
		Last Modified: Mon, 19 Oct 2026 17:54:21 GMT  
		Size: 8.7 KB (8707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:29c758cb4edafff90e9f1ad9db87427c4886c221945e0c62e818828540189711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8254364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858932c087984e76a38cc8ab6583ad65dc5b527b46ef6029a0754dad72337b7`

```dockerfile
```

-	Layers:
	-	`sha256:24739cd84728798bbdb5e529f2474255f31ac2c360e6f3360f5319efbf6241f7`  
		Last Modified: Mon, 19 Oct 2026 17:54:21 GMT  
		Size: 8.2 MB (8242435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:098399d434562083960a4da24c49a9906972b11728221f952667237a7716fe4d`  
		Last Modified: Mon, 19 Oct 2026 17:54:21 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

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

## `archlinux:multilib-devel-20261018.0.612668`

```console
$ docker pull archlinux@sha256:34b823cbb22bedbe2f9d16e5b0c1c02a1c927ccab98b69a82aa49313b8f7d2d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20261018.0.612668` - linux; amd64

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

### `archlinux:multilib-devel-20261018.0.612668` - unknown; unknown

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
