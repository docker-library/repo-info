## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:fa2d4ce3310ddd90a4208e5168be8ad367da5129af1245f38fd2d803bcbe3239
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:97119fd9e21219b02b3c14ba256c9d3c0d031d07fc26c836c41ed793beeb5b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.3 MB (309262694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2743e9ec055adcc0ae9c3a4b055aad2daca4c48aedf3198c8213efe440eda8`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.version=20261108.0.623074
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 09 Nov 2026 22:25:04 GMT
LABEL org.opencontainers.image.created=2026-11-08T00:09:13+00:00
# Mon, 09 Nov 2026 22:25:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 09 Nov 2026 22:25:11 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261108.0.623074' /etc/os-release # buildkit
# Mon, 09 Nov 2026 22:25:11 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 22:25:11 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:ead185a5af53375753e7ea309c44caf5614de508649a2a8451467f8dc8542cf0`  
		Last Modified: Mon, 09 Nov 2026 22:26:02 GMT  
		Size: 309.3 MB (309251209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0acbd8168bdeb2695634353d99aeb832106c8227ba711357399479c8bb2db013`  
		Last Modified: Mon, 09 Nov 2026 22:25:55 GMT  
		Size: 11.5 KB (11485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:535823aa08337acb23d8b01a500c8c83ba28e967176532770abda62974992f07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14476760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2a3ff8011c44d92f80e0dc33a3f3f1fb0c3b3f0956e2b337ea6863174db349`

```dockerfile
```

-	Layers:
	-	`sha256:e33165fedd03da945d01ef742c5c4ec4c5e930aa3bc7a5a0641a4ab3c24e4004`  
		Last Modified: Mon, 09 Nov 2026 22:25:56 GMT  
		Size: 14.5 MB (14465049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8a50385a3886d682e86fcd9ccf22bf4f81fc209b28ea4d04cedbbbbdd8ab50`  
		Last Modified: Mon, 09 Nov 2026 22:25:55 GMT  
		Size: 11.7 KB (11711 bytes)  
		MIME: application/vnd.in-toto+json
