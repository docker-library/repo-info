<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20260726.0.562117`](#archlinuxbase-202607260562117)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20260726.0.562117`](#archlinuxbase-devel-202607260562117)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20260726.0.562117`](#archlinuxmultilib-devel-202607260562117)

## `archlinux:base`

```console
$ docker pull archlinux@sha256:3406a568f45d68f0bef35dc80b3eacec8bda59b0292b2e50d5932ba1667f20cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:5c0a4c06b4aca92db11a9db181461d9e412fbee3aa3561d318aec2df2f318769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132975536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3086cb6060df5a4afe8cdcf30a808d08c894553f188139945de3e301b3dc83d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.version=20260726.0.562117
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.created=2026-07-26T00:10:38+00:00
# Mon, 27 Jul 2026 21:34:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:34:47 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260726.0.562117' /etc/os-release # buildkit
# Mon, 27 Jul 2026 21:34:47 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:34:47 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:b29eedb0cba68b40ef1c21ad33ace0b0b65e43c800ce9ae3fb885ed388c8ff1f`  
		Last Modified: Mon, 27 Jul 2026 21:35:13 GMT  
		Size: 133.0 MB (132966872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c8b8c2b0d09dc3a8ac0a624ff34d637e7d300e2aa444e5daf77dea4d38cdd4`  
		Last Modified: Mon, 27 Jul 2026 21:35:08 GMT  
		Size: 8.7 KB (8664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:73f99c92b1aca1f9ca723d92350c083349b05842ce521881fdf6a0b425274bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8219023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1635bf85e4f9c5d9d34d90fc8243f469edf77bfba433fa12d9f2eead910bf4c8`

```dockerfile
```

-	Layers:
	-	`sha256:c1ebce31751684188ea74243235f85ac239e6d041499717c97b2bf7325849e37`  
		Last Modified: Mon, 27 Jul 2026 21:35:09 GMT  
		Size: 8.2 MB (8207094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67740618568134c2d45ccaa04fee8259a19eb0ac21ee0cda1b9a9f154a25e3bf`  
		Last Modified: Mon, 27 Jul 2026 21:35:08 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-20260726.0.562117`

```console
$ docker pull archlinux@sha256:3406a568f45d68f0bef35dc80b3eacec8bda59b0292b2e50d5932ba1667f20cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20260726.0.562117` - linux; amd64

```console
$ docker pull archlinux@sha256:5c0a4c06b4aca92db11a9db181461d9e412fbee3aa3561d318aec2df2f318769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132975536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3086cb6060df5a4afe8cdcf30a808d08c894553f188139945de3e301b3dc83d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.version=20260726.0.562117
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.created=2026-07-26T00:10:38+00:00
# Mon, 27 Jul 2026 21:34:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:34:47 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260726.0.562117' /etc/os-release # buildkit
# Mon, 27 Jul 2026 21:34:47 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:34:47 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:b29eedb0cba68b40ef1c21ad33ace0b0b65e43c800ce9ae3fb885ed388c8ff1f`  
		Last Modified: Mon, 27 Jul 2026 21:35:13 GMT  
		Size: 133.0 MB (132966872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c8b8c2b0d09dc3a8ac0a624ff34d637e7d300e2aa444e5daf77dea4d38cdd4`  
		Last Modified: Mon, 27 Jul 2026 21:35:08 GMT  
		Size: 8.7 KB (8664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-20260726.0.562117` - unknown; unknown

```console
$ docker pull archlinux@sha256:73f99c92b1aca1f9ca723d92350c083349b05842ce521881fdf6a0b425274bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8219023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1635bf85e4f9c5d9d34d90fc8243f469edf77bfba433fa12d9f2eead910bf4c8`

```dockerfile
```

-	Layers:
	-	`sha256:c1ebce31751684188ea74243235f85ac239e6d041499717c97b2bf7325849e37`  
		Last Modified: Mon, 27 Jul 2026 21:35:09 GMT  
		Size: 8.2 MB (8207094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67740618568134c2d45ccaa04fee8259a19eb0ac21ee0cda1b9a9f154a25e3bf`  
		Last Modified: Mon, 27 Jul 2026 21:35:08 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:40d14ac9db5af04f695eacd82a53181ad685fecc2534a66e05a51182a077cbd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:33c534be6c990710a878b37192904dd448e162ade06a201d95a80b42be2110c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.5 MB (306454859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ceadeffd5a5b9508906195382aa89cb405320b1d512ab0b66aaa4982596f71e`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.version=20260726.0.562117
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.created=2026-07-26T00:10:38+00:00
# Mon, 27 Jul 2026 21:35:28 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:35:35 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260726.0.562117' /etc/os-release # buildkit
# Mon, 27 Jul 2026 21:35:35 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:35 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:ac8b6906a4347a5a513bf8a48010a308a4ab6ab0045bd5261e72eebf8b0e737e`  
		Last Modified: Mon, 27 Jul 2026 21:36:33 GMT  
		Size: 306.4 MB (306443409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389c9822a4ec291eefb12d336bbf011148afe2722dc3bd9c75ac687ae174575a`  
		Last Modified: Mon, 27 Jul 2026 21:36:25 GMT  
		Size: 11.4 KB (11450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:25efe4c0a930d39cc7bc6406dee96f8dfa1281d011523879793005fb66ee6225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14420395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea472a6ffc832576559fba04ef8aa9ed76d8e877414e5b1b93786819d1a67870`

```dockerfile
```

-	Layers:
	-	`sha256:e14fb5d5527c2edffd7942e7ce647e9d3ff6bdc87dd3c52b5f22479222dbd817`  
		Last Modified: Mon, 27 Jul 2026 21:36:26 GMT  
		Size: 14.4 MB (14408684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:533e1b4fe58ebf26e9efa53035cb27aa0e9e8dda4651d6a579cbe49469333d08`  
		Last Modified: Mon, 27 Jul 2026 21:36:25 GMT  
		Size: 11.7 KB (11711 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:base-devel-20260726.0.562117`

```console
$ docker pull archlinux@sha256:40d14ac9db5af04f695eacd82a53181ad685fecc2534a66e05a51182a077cbd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260726.0.562117` - linux; amd64

```console
$ docker pull archlinux@sha256:33c534be6c990710a878b37192904dd448e162ade06a201d95a80b42be2110c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.5 MB (306454859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ceadeffd5a5b9508906195382aa89cb405320b1d512ab0b66aaa4982596f71e`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.version=20260726.0.562117
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 27 Jul 2026 21:35:28 GMT
LABEL org.opencontainers.image.created=2026-07-26T00:10:38+00:00
# Mon, 27 Jul 2026 21:35:28 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:35:35 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260726.0.562117' /etc/os-release # buildkit
# Mon, 27 Jul 2026 21:35:35 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:35 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:ac8b6906a4347a5a513bf8a48010a308a4ab6ab0045bd5261e72eebf8b0e737e`  
		Last Modified: Mon, 27 Jul 2026 21:36:33 GMT  
		Size: 306.4 MB (306443409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389c9822a4ec291eefb12d336bbf011148afe2722dc3bd9c75ac687ae174575a`  
		Last Modified: Mon, 27 Jul 2026 21:36:25 GMT  
		Size: 11.4 KB (11450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260726.0.562117` - unknown; unknown

```console
$ docker pull archlinux@sha256:25efe4c0a930d39cc7bc6406dee96f8dfa1281d011523879793005fb66ee6225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14420395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea472a6ffc832576559fba04ef8aa9ed76d8e877414e5b1b93786819d1a67870`

```dockerfile
```

-	Layers:
	-	`sha256:e14fb5d5527c2edffd7942e7ce647e9d3ff6bdc87dd3c52b5f22479222dbd817`  
		Last Modified: Mon, 27 Jul 2026 21:36:26 GMT  
		Size: 14.4 MB (14408684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:533e1b4fe58ebf26e9efa53035cb27aa0e9e8dda4651d6a579cbe49469333d08`  
		Last Modified: Mon, 27 Jul 2026 21:36:25 GMT  
		Size: 11.7 KB (11711 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:3406a568f45d68f0bef35dc80b3eacec8bda59b0292b2e50d5932ba1667f20cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:5c0a4c06b4aca92db11a9db181461d9e412fbee3aa3561d318aec2df2f318769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132975536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3086cb6060df5a4afe8cdcf30a808d08c894553f188139945de3e301b3dc83d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.version=20260726.0.562117
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 27 Jul 2026 21:34:44 GMT
LABEL org.opencontainers.image.created=2026-07-26T00:10:38+00:00
# Mon, 27 Jul 2026 21:34:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:34:47 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260726.0.562117' /etc/os-release # buildkit
# Mon, 27 Jul 2026 21:34:47 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:34:47 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:b29eedb0cba68b40ef1c21ad33ace0b0b65e43c800ce9ae3fb885ed388c8ff1f`  
		Last Modified: Mon, 27 Jul 2026 21:35:13 GMT  
		Size: 133.0 MB (132966872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c8b8c2b0d09dc3a8ac0a624ff34d637e7d300e2aa444e5daf77dea4d38cdd4`  
		Last Modified: Mon, 27 Jul 2026 21:35:08 GMT  
		Size: 8.7 KB (8664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:73f99c92b1aca1f9ca723d92350c083349b05842ce521881fdf6a0b425274bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8219023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1635bf85e4f9c5d9d34d90fc8243f469edf77bfba433fa12d9f2eead910bf4c8`

```dockerfile
```

-	Layers:
	-	`sha256:c1ebce31751684188ea74243235f85ac239e6d041499717c97b2bf7325849e37`  
		Last Modified: Mon, 27 Jul 2026 21:35:09 GMT  
		Size: 8.2 MB (8207094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67740618568134c2d45ccaa04fee8259a19eb0ac21ee0cda1b9a9f154a25e3bf`  
		Last Modified: Mon, 27 Jul 2026 21:35:08 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:5548375d430c550b1ef3c1adca1b776a8df94c0102a4f7a604777499bd974e5f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:f6c9e19c74d3a78a9d79098fc5bb78a90f298385d8b4832bf89fc9b3759a45cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.8 MB (328821276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db4df2c2ebd0654fba3b8581747dd39d23bbc946d1a407af0326375abc83311`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.version=20260726.0.562117
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.created=2026-07-26T00:10:38+00:00
# Mon, 27 Jul 2026 21:35:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:35:55 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260726.0.562117' /etc/os-release # buildkit
# Mon, 27 Jul 2026 21:35:55 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:55 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:fdc5a3aeb9299ce8c1195c7851854f726fecd1d0cff35dab3723b1e9879f0432`  
		Last Modified: Mon, 27 Jul 2026 21:36:57 GMT  
		Size: 328.8 MB (328808672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc43be40cab8a1dd0ef61bbe5e0cec4924014fd31cfb447afcb4cd21aba8706`  
		Last Modified: Mon, 27 Jul 2026 21:36:50 GMT  
		Size: 12.6 KB (12604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:6e498d9e87b8b7c2ea0048f05e417c2060756cdeb4ed1cd129f7dc59c8615376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14689914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538dfbe38e1b77162e56ca932de7b52116d5dca0dc76701b5caa1032a0796eac`

```dockerfile
```

-	Layers:
	-	`sha256:d7e519280dd2a0401194953ab317ec800bf4b8bf86910bf8aca052c5a04e6654`  
		Last Modified: Mon, 27 Jul 2026 21:36:51 GMT  
		Size: 14.7 MB (14678146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6abe1217785ae7a5b506f20be15811c2574baa70d97f720517473c390e0e754d`  
		Last Modified: Mon, 27 Jul 2026 21:36:50 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20260726.0.562117`

```console
$ docker pull archlinux@sha256:5548375d430c550b1ef3c1adca1b776a8df94c0102a4f7a604777499bd974e5f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260726.0.562117` - linux; amd64

```console
$ docker pull archlinux@sha256:f6c9e19c74d3a78a9d79098fc5bb78a90f298385d8b4832bf89fc9b3759a45cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.8 MB (328821276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db4df2c2ebd0654fba3b8581747dd39d23bbc946d1a407af0326375abc83311`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.version=20260726.0.562117
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 27 Jul 2026 21:35:47 GMT
LABEL org.opencontainers.image.created=2026-07-26T00:10:38+00:00
# Mon, 27 Jul 2026 21:35:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:35:55 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260726.0.562117' /etc/os-release # buildkit
# Mon, 27 Jul 2026 21:35:55 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:55 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:fdc5a3aeb9299ce8c1195c7851854f726fecd1d0cff35dab3723b1e9879f0432`  
		Last Modified: Mon, 27 Jul 2026 21:36:57 GMT  
		Size: 328.8 MB (328808672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc43be40cab8a1dd0ef61bbe5e0cec4924014fd31cfb447afcb4cd21aba8706`  
		Last Modified: Mon, 27 Jul 2026 21:36:50 GMT  
		Size: 12.6 KB (12604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260726.0.562117` - unknown; unknown

```console
$ docker pull archlinux@sha256:6e498d9e87b8b7c2ea0048f05e417c2060756cdeb4ed1cd129f7dc59c8615376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14689914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538dfbe38e1b77162e56ca932de7b52116d5dca0dc76701b5caa1032a0796eac`

```dockerfile
```

-	Layers:
	-	`sha256:d7e519280dd2a0401194953ab317ec800bf4b8bf86910bf8aca052c5a04e6654`  
		Last Modified: Mon, 27 Jul 2026 21:36:51 GMT  
		Size: 14.7 MB (14678146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6abe1217785ae7a5b506f20be15811c2574baa70d97f720517473c390e0e754d`  
		Last Modified: Mon, 27 Jul 2026 21:36:50 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
