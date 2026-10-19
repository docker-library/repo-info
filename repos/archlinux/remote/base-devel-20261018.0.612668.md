## `archlinux:base-devel-20261018.0.612668`

```console
$ docker pull archlinux@sha256:0ccc8b2e55c0c26a6e501e892cc6b1cdea7cfdf77e432941320148b4dabd2bff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20261018.0.612668` - linux; amd64

```console
$ docker pull archlinux@sha256:a25b54cf4b9c0de8752f5417c81810fb41bbfa5cdd6a504a9b6816a3b86b1e59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.6 MB (308569896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15677cce4ed04e1659d878a0901dec9c5b9ca1ac460b1e04ec4548199885007`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.version=20261018.0.612668
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 19 Oct 2026 17:55:08 GMT
LABEL org.opencontainers.image.created=2026-10-18T00:10:42+00:00
# Mon, 19 Oct 2026 17:55:08 GMT
COPY /rootfs/ / # buildkit
# Mon, 19 Oct 2026 17:55:15 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261018.0.612668' /etc/os-release # buildkit
# Mon, 19 Oct 2026 17:55:15 GMT
ENV LANG=C.UTF-8
# Mon, 19 Oct 2026 17:55:15 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:2fa36ba04d1ebe963bd56848143685147186905057ce6874df2d1680bbf80247`  
		Last Modified: Mon, 19 Oct 2026 17:56:10 GMT  
		Size: 308.6 MB (308558390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c3b1218c0a269f8740fb1796876711b239b61b153308cfcd33ec574ada2af63`  
		Last Modified: Mon, 19 Oct 2026 17:56:02 GMT  
		Size: 11.5 KB (11506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20261018.0.612668` - unknown; unknown

```console
$ docker pull archlinux@sha256:ceac4e0176099235d4186f341fc444ddb67ba4f0ab9407b17acd434dca7c23a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14463776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd4f2c707a6e736d0a211a39222d05c4bd12971e08a14cea7b085f03abd3e370`

```dockerfile
```

-	Layers:
	-	`sha256:f3a0b1634a69c338044c19b16ccdca8e469d9e31e664c43b57249dc817deb013`  
		Last Modified: Mon, 19 Oct 2026 17:56:03 GMT  
		Size: 14.5 MB (14452064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b30111e4789d5023fbe0c52515e44ecfa75eb381e501ad0f74520ed5fe2753a`  
		Last Modified: Mon, 19 Oct 2026 17:56:02 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
