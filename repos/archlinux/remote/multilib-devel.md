## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:908268416d7bbd8de0cec8272f98c2b1d50c819436018850a5af0ea223877fee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:9964c4d12f02b59190692572a55a57fd2858aaccc92a50956122be98ba7b78df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.9 MB (327882947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8f5cb0dae3621a345a9ab30f96b3ccdd37238e591baf4191f5321f9b1df981`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.version=20260712.0.555161
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 13 Jul 2026 17:32:44 GMT
LABEL org.opencontainers.image.created=2026-07-12T00:09:32+00:00
# Mon, 13 Jul 2026 17:32:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 13 Jul 2026 17:32:51 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260712.0.555161' /etc/os-release # buildkit
# Mon, 13 Jul 2026 17:32:51 GMT
ENV LANG=C.UTF-8
# Mon, 13 Jul 2026 17:32:51 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:b14e98eecf2ebd9769b1dfb1687b9720b19e0661e57409242279571bb9fcdb2e`  
		Last Modified: Mon, 13 Jul 2026 17:33:48 GMT  
		Size: 327.9 MB (327870356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6c219fea5cea4a98ad5fab2a449d83a32a67cfe5730e9296d7c28bd50f0216`  
		Last Modified: Mon, 13 Jul 2026 17:33:41 GMT  
		Size: 12.6 KB (12591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:64931d1914863a025ec230517af394ce5bbf7f7653c7412de71f768701054723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14689304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149c429ff44d789f05ba09e977efbd7a3d1a062211cc5ebfa042ed6c9b7d3c40`

```dockerfile
```

-	Layers:
	-	`sha256:cd952608373776ae48855a888c5b2c75b79cc22226cdc32da6e7a63307d87213`  
		Last Modified: Mon, 13 Jul 2026 17:33:42 GMT  
		Size: 14.7 MB (14677536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6aad06b170516070a321d243fd5fa6015700fcd18725c5a31873cc906f043aa`  
		Last Modified: Mon, 13 Jul 2026 17:33:41 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
