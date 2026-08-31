## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:84cd9ef000b3cff245ec028e87965b84724f4bf1cc63fc2741ba927b88515ed6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:694da1fce635e3a14d90751941b08f02c500e8724682f7a00768e7152251ec34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307375855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f3b580f2356f3a680c56316f8faa1b5a6ba01dec7b6be4c785d05c2a6c66bc`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.version=20260830.0.582275
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 31 Aug 2026 19:09:14 GMT
LABEL org.opencontainers.image.created=2026-08-30T00:09:25+00:00
# Mon, 31 Aug 2026 19:09:14 GMT
COPY /rootfs/ / # buildkit
# Mon, 31 Aug 2026 19:09:21 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260830.0.582275' /etc/os-release # buildkit
# Mon, 31 Aug 2026 19:09:21 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:09:21 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:d358d950d96e62d5058be1567322817d756f256215f6e2e562c68e874054285a`  
		Last Modified: Mon, 31 Aug 2026 19:10:14 GMT  
		Size: 307.4 MB (307364355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7302c1a4e9763f8cb406472bb224f20d01914798f1ecbbfb3d5617662ccbbc4b`  
		Last Modified: Mon, 31 Aug 2026 19:10:07 GMT  
		Size: 11.5 KB (11500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:7604f16f15e81e9689d091b61c772bfa8cd04e393cb770da96b50b6b8be10614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14421753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396431c1a6042f64e6594a97fe0840fcfa3bf226fdc689739f9f9b2a41c94ac9`

```dockerfile
```

-	Layers:
	-	`sha256:29424ee4397cce6b52acaf2dadd1811c1ca89fa3ed2c35b969c071c218c9c389`  
		Last Modified: Mon, 31 Aug 2026 19:10:07 GMT  
		Size: 14.4 MB (14410041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82c6f699e1a507323918acb189b99331b04a948facc72005a0579ff6cd0ac730`  
		Last Modified: Mon, 31 Aug 2026 19:10:07 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
