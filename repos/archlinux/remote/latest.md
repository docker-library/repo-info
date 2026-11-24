## `archlinux:latest`

```console
$ docker pull archlinux@sha256:375a401bb3c6376b37f40b6dfa25067db37ec78d0b7af67ae6315f43a0184a9d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:bddb91b7a73f31ed6be307fc8ec75e5dd59ff8ccf6c5a1bbb8205f14702c6b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.5 MB (134455004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac611c6bb2137d875108771a929336cfb66c24323d7131313a734f5feba7e47d`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.version=20261122.0.629543
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.revision=d9f7a01562208910488140c54ffe402c3e7a231e
# Mon, 23 Nov 2026 18:21:48 GMT
LABEL org.opencontainers.image.created=2026-11-22T00:09:11+00:00
# Mon, 23 Nov 2026 18:21:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 18:21:51 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261122.0.629543' /etc/os-release # buildkit
# Mon, 23 Nov 2026 18:21:51 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 18:21:51 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:3a05bbf5bc1be154e0b91d649e7c115c53fc0cd4f733fa398569471b3ffdbd50`  
		Last Modified: Mon, 23 Nov 2026 18:22:15 GMT  
		Size: 134.4 MB (134446289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b31e1de0029782ca04a2508095d5bf1d79fc9edf5176beddf73fd8e95cb2eb7`  
		Last Modified: Mon, 23 Nov 2026 18:22:12 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:95df6da84294dbba68c73cddc7a307afa2df1b6ab926c7a04335d2835279ca12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8252625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9dd3010403fb1c1c22e71bb4378a254e7f14108dfdea9acc9a36e25ec49c36`

```dockerfile
```

-	Layers:
	-	`sha256:25917d61409bfbc163eee6fd6fe0b26c43f50cf4b57b2221a533da26fbd37eda`  
		Last Modified: Mon, 23 Nov 2026 18:22:12 GMT  
		Size: 8.2 MB (8240696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87369c6c095894d57f0c40481ca519539bf74c2c8505dc8bc8d46b1a6c843d92`  
		Last Modified: Mon, 23 Nov 2026 18:22:12 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json
