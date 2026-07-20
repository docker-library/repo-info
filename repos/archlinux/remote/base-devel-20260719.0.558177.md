## `archlinux:base-devel-20260719.0.558177`

```console
$ docker pull archlinux@sha256:412efebb0eeef0ef322ff24ad73f82b1ba2d3b12377db4c5fbe3074c7e7e8678
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260719.0.558177` - linux; amd64

```console
$ docker pull archlinux@sha256:bf0af8920a0e70715207d9c4f463ebac321db72748db2b8a391b639696965d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.9 MB (305853503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d47d5bfe559578f78143624017e155915db3b38553cfb5d04482861fa166ffc`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.version=20260719.0.558177
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 20 Jul 2026 18:39:08 GMT
LABEL org.opencontainers.image.created=2026-07-19T00:09:41+00:00
# Mon, 20 Jul 2026 18:39:08 GMT
COPY /rootfs/ / # buildkit
# Mon, 20 Jul 2026 18:39:15 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260719.0.558177' /etc/os-release # buildkit
# Mon, 20 Jul 2026 18:39:15 GMT
ENV LANG=C.UTF-8
# Mon, 20 Jul 2026 18:39:15 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:214090e279267bc95c6b0262e6e9613abeb2b2234bd42846093fae23b9b0a1c8`  
		Last Modified: Mon, 20 Jul 2026 18:40:07 GMT  
		Size: 305.8 MB (305842026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9baa1c94a47480aeace434a16b3e1f833064163c29ba04174d2e4a73e3cade`  
		Last Modified: Mon, 20 Jul 2026 18:40:01 GMT  
		Size: 11.5 KB (11477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260719.0.558177` - unknown; unknown

```console
$ docker pull archlinux@sha256:b65068766be4b2e55952d02aa05121b4ebc30c8d4ca17592491f99468872ccff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14420396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:567373cba12246e0dc1a2340124ef7a460d65b83e7a9bee03842840caa22bbe8`

```dockerfile
```

-	Layers:
	-	`sha256:2b01731f9b8a9116843dbc5d9ab2732c03a7b6c253744d6560c70dcdf959f544`  
		Last Modified: Mon, 20 Jul 2026 18:40:01 GMT  
		Size: 14.4 MB (14408684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b8c6cc8309e2b49e78c39fb0b69595b1596c7ecdf27dc326a5c4d2b276597bf`  
		Last Modified: Mon, 20 Jul 2026 18:40:01 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
