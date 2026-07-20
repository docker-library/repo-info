## `archlinux:base`

```console
$ docker pull archlinux@sha256:592e11bd99ab579f933a0cb77a8f66e2f3ae57f5eafacf13aea44a6e98ef21ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:5ad8aef51c0535fa9845cce4ae9875624483b868a8aa0fe84b9b1ae3f9dcbb26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132906350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5fa677a6615cfcb63153dd4ccaafc55fdb4c6133a98334a895edc294bc4257`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.version=20260719.0.558177
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 20 Jul 2026 18:37:43 GMT
LABEL org.opencontainers.image.created=2026-07-19T00:09:41+00:00
# Mon, 20 Jul 2026 18:37:43 GMT
COPY /rootfs/ / # buildkit
# Mon, 20 Jul 2026 18:37:45 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260719.0.558177' /etc/os-release # buildkit
# Mon, 20 Jul 2026 18:37:45 GMT
ENV LANG=C.UTF-8
# Mon, 20 Jul 2026 18:37:45 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:ba7c788549e97db7fb7d2a8e946c9396d90d82e9552b21a148b93843c5442f21`  
		Last Modified: Mon, 20 Jul 2026 18:38:12 GMT  
		Size: 132.9 MB (132897674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa584ff2f2f43b0cc25544200b4f67df0664a06e93fc0beaec9c84feed8ca51`  
		Last Modified: Mon, 20 Jul 2026 18:38:08 GMT  
		Size: 8.7 KB (8676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:9d48ba37fab9f5ca36e745f26d81d1b79083c84cbb2f25d1883d28bbd49a872f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8219023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6818dc9f4920d18ae41128af7f01b4411d394483593cf54c937283dc2f444973`

```dockerfile
```

-	Layers:
	-	`sha256:75b8231e2031b11e07701ca323c0c178185ff28caf0bfc01bb5f617255c0dbc3`  
		Last Modified: Mon, 20 Jul 2026 18:38:09 GMT  
		Size: 8.2 MB (8207094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eef90961e9d9b2f8f959b2fd73942638eae6fdf52ea1564384e1c3b8cb9ab4fe`  
		Last Modified: Mon, 20 Jul 2026 18:38:08 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json
