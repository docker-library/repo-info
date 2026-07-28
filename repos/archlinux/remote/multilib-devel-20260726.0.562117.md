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
