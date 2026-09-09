<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20260906.0.587075`](#archlinuxbase-202609060587075)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20260906.0.587075`](#archlinuxbase-devel-202609060587075)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20260906.0.587075`](#archlinuxmultilib-devel-202609060587075)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:b944cc65c5f28665dfd5fdbf5ed2997c88f5bb4a0aefac7ee8a7ef01893e5ed9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:522dd24e4a16f41afe71c7561febe519f7575404c291565e9f0be823d1794ca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133432341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e88cacd0e42ea6f23b45c9760c2942b05421cdd76ef33d3011c284bf29cf23`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.version=20260906.0.587075
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.created=2026-09-06T00:08:57+00:00
# Tue, 08 Sep 2026 19:08:50 GMT
COPY /rootfs/ / # buildkit
# Tue, 08 Sep 2026 19:08:52 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260906.0.587075' /etc/os-release # buildkit
# Tue, 08 Sep 2026 19:08:52 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:08:52 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:41e227706d01174e967aa6415b098211ad07b8105a39060e10c488b1dbf9b91b`  
		Last Modified: Tue, 08 Sep 2026 19:09:17 GMT  
		Size: 133.4 MB (133423600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:195e507860dfca001f27e54610f0c89d45cc7439939f7dd9f63a1a47b330a9c1`  
		Last Modified: Tue, 08 Sep 2026 19:09:13 GMT  
		Size: 8.7 KB (8741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:80d1f83016d3091b1dd39dffd87202ac3a0764f62fca66fa79bd58ca893ca4df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8212976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94bc1e4ef4ee494a080cb8f5bec3e05b4fa73b1c7c820dd728f64bc0011bb65d`

```dockerfile
```

-	Layers:
	-	`sha256:d034678286ad30a6f2da984b03b9faae09ea21571d0feeefdd78a2742e802e1f`  
		Last Modified: Tue, 08 Sep 2026 19:09:14 GMT  
		Size: 8.2 MB (8201048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef0e7ffc7f5ee0aba539633fe2b1f07c8e2bed535701d1fe7ba81539eab7bb82`  
		Last Modified: Tue, 08 Sep 2026 19:09:13 GMT  
		Size: 11.9 KB (11928 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20260906.0.587075`

```console
$ docker pull archlinux@sha256:b944cc65c5f28665dfd5fdbf5ed2997c88f5bb4a0aefac7ee8a7ef01893e5ed9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20260906.0.587075` - linux; amd64

```console
$ docker pull archlinux@sha256:522dd24e4a16f41afe71c7561febe519f7575404c291565e9f0be823d1794ca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133432341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e88cacd0e42ea6f23b45c9760c2942b05421cdd76ef33d3011c284bf29cf23`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.version=20260906.0.587075
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.created=2026-09-06T00:08:57+00:00
# Tue, 08 Sep 2026 19:08:50 GMT
COPY /rootfs/ / # buildkit
# Tue, 08 Sep 2026 19:08:52 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260906.0.587075' /etc/os-release # buildkit
# Tue, 08 Sep 2026 19:08:52 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:08:52 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:41e227706d01174e967aa6415b098211ad07b8105a39060e10c488b1dbf9b91b`  
		Last Modified: Tue, 08 Sep 2026 19:09:17 GMT  
		Size: 133.4 MB (133423600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:195e507860dfca001f27e54610f0c89d45cc7439939f7dd9f63a1a47b330a9c1`  
		Last Modified: Tue, 08 Sep 2026 19:09:13 GMT  
		Size: 8.7 KB (8741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20260906.0.587075` - unknown; unknown

```console
$ docker pull archlinux@sha256:80d1f83016d3091b1dd39dffd87202ac3a0764f62fca66fa79bd58ca893ca4df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8212976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94bc1e4ef4ee494a080cb8f5bec3e05b4fa73b1c7c820dd728f64bc0011bb65d`

```dockerfile
```

-	Layers:
	-	`sha256:d034678286ad30a6f2da984b03b9faae09ea21571d0feeefdd78a2742e802e1f`  
		Last Modified: Tue, 08 Sep 2026 19:09:14 GMT  
		Size: 8.2 MB (8201048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef0e7ffc7f5ee0aba539633fe2b1f07c8e2bed535701d1fe7ba81539eab7bb82`  
		Last Modified: Tue, 08 Sep 2026 19:09:13 GMT  
		Size: 11.9 KB (11928 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:61f7de2dd88cc4ba1fe36c24cfe1a503c3936984492d6405eeab013ce6ac68c5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:5b987b0196907ea97dd10e7b48e7d403c35c0389986da015aa86cf8d0b058084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307533695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d7d4095befb7be2b30678f87d9717b0bacc5b21e0564dac8dbfc521df645aed`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.version=20260906.0.587075
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.created=2026-09-06T00:08:57+00:00
# Tue, 08 Sep 2026 19:09:51 GMT
COPY /rootfs/ / # buildkit
# Tue, 08 Sep 2026 19:09:58 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260906.0.587075' /etc/os-release # buildkit
# Tue, 08 Sep 2026 19:09:58 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:09:58 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:5147011f04b05c1be37986893624d5f95a9587e9d3d281f50b3c3f5e901c8cf5`  
		Last Modified: Tue, 08 Sep 2026 19:10:49 GMT  
		Size: 307.5 MB (307522172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44aaf160d33d7bf0638b1a5535afd039e1fe5f70fbc4f272b6d8304a2fd969db`  
		Last Modified: Tue, 08 Sep 2026 19:10:43 GMT  
		Size: 11.5 KB (11523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:e0099fae0e038d7e96c5d31447379ad552bea4988b6207a79c689f0c5d274492
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14421758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d95ab4dd4b38ae197ee292ae5d96749b9008b38a0245780a94374297380cbf4`

```dockerfile
```

-	Layers:
	-	`sha256:398c599bc68b755ac51d3f7b132071389d065874551b90026d6570f8b537f392`  
		Last Modified: Tue, 08 Sep 2026 19:10:43 GMT  
		Size: 14.4 MB (14410046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce9007629cb4e3b539d6afe40705db165ebc25d64c579add7a96272ba50f3c6c`  
		Last Modified: Tue, 08 Sep 2026 19:10:42 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20260906.0.587075`

```console
$ docker pull archlinux@sha256:61f7de2dd88cc4ba1fe36c24cfe1a503c3936984492d6405eeab013ce6ac68c5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260906.0.587075` - linux; amd64

```console
$ docker pull archlinux@sha256:5b987b0196907ea97dd10e7b48e7d403c35c0389986da015aa86cf8d0b058084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307533695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d7d4095befb7be2b30678f87d9717b0bacc5b21e0564dac8dbfc521df645aed`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.version=20260906.0.587075
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 08 Sep 2026 19:09:51 GMT
LABEL org.opencontainers.image.created=2026-09-06T00:08:57+00:00
# Tue, 08 Sep 2026 19:09:51 GMT
COPY /rootfs/ / # buildkit
# Tue, 08 Sep 2026 19:09:58 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260906.0.587075' /etc/os-release # buildkit
# Tue, 08 Sep 2026 19:09:58 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:09:58 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:5147011f04b05c1be37986893624d5f95a9587e9d3d281f50b3c3f5e901c8cf5`  
		Last Modified: Tue, 08 Sep 2026 19:10:49 GMT  
		Size: 307.5 MB (307522172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44aaf160d33d7bf0638b1a5535afd039e1fe5f70fbc4f272b6d8304a2fd969db`  
		Last Modified: Tue, 08 Sep 2026 19:10:43 GMT  
		Size: 11.5 KB (11523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260906.0.587075` - unknown; unknown

```console
$ docker pull archlinux@sha256:e0099fae0e038d7e96c5d31447379ad552bea4988b6207a79c689f0c5d274492
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14421758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d95ab4dd4b38ae197ee292ae5d96749b9008b38a0245780a94374297380cbf4`

```dockerfile
```

-	Layers:
	-	`sha256:398c599bc68b755ac51d3f7b132071389d065874551b90026d6570f8b537f392`  
		Last Modified: Tue, 08 Sep 2026 19:10:43 GMT  
		Size: 14.4 MB (14410046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce9007629cb4e3b539d6afe40705db165ebc25d64c579add7a96272ba50f3c6c`  
		Last Modified: Tue, 08 Sep 2026 19:10:42 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:b944cc65c5f28665dfd5fdbf5ed2997c88f5bb4a0aefac7ee8a7ef01893e5ed9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:522dd24e4a16f41afe71c7561febe519f7575404c291565e9f0be823d1794ca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133432341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e88cacd0e42ea6f23b45c9760c2942b05421cdd76ef33d3011c284bf29cf23`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.version=20260906.0.587075
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 08 Sep 2026 19:08:50 GMT
LABEL org.opencontainers.image.created=2026-09-06T00:08:57+00:00
# Tue, 08 Sep 2026 19:08:50 GMT
COPY /rootfs/ / # buildkit
# Tue, 08 Sep 2026 19:08:52 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260906.0.587075' /etc/os-release # buildkit
# Tue, 08 Sep 2026 19:08:52 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:08:52 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:41e227706d01174e967aa6415b098211ad07b8105a39060e10c488b1dbf9b91b`  
		Last Modified: Tue, 08 Sep 2026 19:09:17 GMT  
		Size: 133.4 MB (133423600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:195e507860dfca001f27e54610f0c89d45cc7439939f7dd9f63a1a47b330a9c1`  
		Last Modified: Tue, 08 Sep 2026 19:09:13 GMT  
		Size: 8.7 KB (8741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:80d1f83016d3091b1dd39dffd87202ac3a0764f62fca66fa79bd58ca893ca4df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8212976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94bc1e4ef4ee494a080cb8f5bec3e05b4fa73b1c7c820dd728f64bc0011bb65d`

```dockerfile
```

-	Layers:
	-	`sha256:d034678286ad30a6f2da984b03b9faae09ea21571d0feeefdd78a2742e802e1f`  
		Last Modified: Tue, 08 Sep 2026 19:09:14 GMT  
		Size: 8.2 MB (8201048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef0e7ffc7f5ee0aba539633fe2b1f07c8e2bed535701d1fe7ba81539eab7bb82`  
		Last Modified: Tue, 08 Sep 2026 19:09:13 GMT  
		Size: 11.9 KB (11928 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:f0e55fc691faa3aef37d7eb508174794cfb3dc2e9afff49bd354d8755ba78a87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:81413326fa039aff7c91b6455178e37fefd94e4aeba3c38c3ea629e41f507f06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.0 MB (330006281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d48531512c3348dd437fb86488825c294bf08d5d99b560d5e26335451f8a167`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.version=20260906.0.587075
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.created=2026-09-06T00:08:57+00:00
# Tue, 08 Sep 2026 19:11:24 GMT
COPY /rootfs/ / # buildkit
# Tue, 08 Sep 2026 19:11:32 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260906.0.587075' /etc/os-release # buildkit
# Tue, 08 Sep 2026 19:11:32 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:11:32 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:020e6f6470d9d8388fc997fafb9722293611c80ead99ead21ca52b3465a3d309`  
		Last Modified: Tue, 08 Sep 2026 19:12:26 GMT  
		Size: 330.0 MB (329993542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313f4203d10a5c599fbdff53a0f1aead408d85eb70897e43b74c41e957e3f06b`  
		Last Modified: Tue, 08 Sep 2026 19:12:20 GMT  
		Size: 12.7 KB (12739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:f37c41c1e9a450cd7e34c2ac4faad33d7b0fb5208271b17a992dea25a71e3650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14692902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e34ad95e8af0b553a6d0655f3d86b3599c4fcdb3af0bd78ca52b06777cc9326`

```dockerfile
```

-	Layers:
	-	`sha256:bec54e52a1c668a8d0a05cbcc9332bf6b4cc39c6f84faddc30a8a8d583e1aabb`  
		Last Modified: Tue, 08 Sep 2026 19:12:21 GMT  
		Size: 14.7 MB (14681134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4679bcc3880656058dd0a9ea8606d6bb51565f4f024a7b9904685fe4f158878c`  
		Last Modified: Tue, 08 Sep 2026 19:12:20 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20260906.0.587075`

```console
$ docker pull archlinux@sha256:f0e55fc691faa3aef37d7eb508174794cfb3dc2e9afff49bd354d8755ba78a87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260906.0.587075` - linux; amd64

```console
$ docker pull archlinux@sha256:81413326fa039aff7c91b6455178e37fefd94e4aeba3c38c3ea629e41f507f06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.0 MB (330006281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d48531512c3348dd437fb86488825c294bf08d5d99b560d5e26335451f8a167`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.version=20260906.0.587075
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Tue, 08 Sep 2026 19:11:24 GMT
LABEL org.opencontainers.image.created=2026-09-06T00:08:57+00:00
# Tue, 08 Sep 2026 19:11:24 GMT
COPY /rootfs/ / # buildkit
# Tue, 08 Sep 2026 19:11:32 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260906.0.587075' /etc/os-release # buildkit
# Tue, 08 Sep 2026 19:11:32 GMT
ENV LANG=C.UTF-8
# Tue, 08 Sep 2026 19:11:32 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:020e6f6470d9d8388fc997fafb9722293611c80ead99ead21ca52b3465a3d309`  
		Last Modified: Tue, 08 Sep 2026 19:12:26 GMT  
		Size: 330.0 MB (329993542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313f4203d10a5c599fbdff53a0f1aead408d85eb70897e43b74c41e957e3f06b`  
		Last Modified: Tue, 08 Sep 2026 19:12:20 GMT  
		Size: 12.7 KB (12739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260906.0.587075` - unknown; unknown

```console
$ docker pull archlinux@sha256:f37c41c1e9a450cd7e34c2ac4faad33d7b0fb5208271b17a992dea25a71e3650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14692902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e34ad95e8af0b553a6d0655f3d86b3599c4fcdb3af0bd78ca52b06777cc9326`

```dockerfile
```

-	Layers:
	-	`sha256:bec54e52a1c668a8d0a05cbcc9332bf6b4cc39c6f84faddc30a8a8d583e1aabb`  
		Last Modified: Tue, 08 Sep 2026 19:12:21 GMT  
		Size: 14.7 MB (14681134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4679bcc3880656058dd0a9ea8606d6bb51565f4f024a7b9904685fe4f158878c`  
		Last Modified: Tue, 08 Sep 2026 19:12:20 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
