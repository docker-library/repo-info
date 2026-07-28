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
