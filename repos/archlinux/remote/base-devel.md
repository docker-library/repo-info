## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:996c3a1d6b0d87b01242f6fcd8cfa3ad3eece1a67ab5c8f108e20af1d7b97bdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:99e98cdd1c714023ca481b4959c9214415323129530bfc101da2ff50dd9a6106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.3 MB (308253012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f477b4c3b130405b0f9fd36ceaff1c250b84edde9fc68b88c5865b0d276a8de`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.version=20261004.0.606936
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 05 Oct 2026 18:59:41 GMT
LABEL org.opencontainers.image.created=2026-10-04T00:09:23+00:00
# Mon, 05 Oct 2026 18:59:41 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:59:49 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20261004.0.606936' /etc/os-release # buildkit
# Mon, 05 Oct 2026 18:59:49 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:59:49 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:888484b0b597e25a0bb2cdc6b392c91607e63ed5d73975ad4116e73b5f0f1f35`  
		Last Modified: Mon, 05 Oct 2026 19:00:47 GMT  
		Size: 308.2 MB (308241519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a93b1ce547ce065ba5304ef7ef4cd754dfdb094037cc6717eef10357d3fa4f3e`  
		Last Modified: Mon, 05 Oct 2026 19:00:39 GMT  
		Size: 11.5 KB (11493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:9ccd38d81ae45fdee18948986f1474cc83648b9f2a6bb270a5be1120313e0f37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14464495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05c048207699d753a03bc4eb548b099b70a291a6c98fc5e36142527c750a936`

```dockerfile
```

-	Layers:
	-	`sha256:3cb3f38c1bc4246bd4370bd6f1766e73f7e8f2ba99cbd14040b77b838cc43098`  
		Last Modified: Mon, 05 Oct 2026 19:00:40 GMT  
		Size: 14.5 MB (14452783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c5d5358f0d12534f459d54667fd0f2afe2ad1b4ae3d21bd2f2dabf4add900e3`  
		Last Modified: Mon, 05 Oct 2026 19:00:39 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
