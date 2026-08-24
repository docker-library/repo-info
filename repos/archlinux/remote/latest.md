## `archlinux:latest`

```console
$ docker pull archlinux@sha256:b860afd5823683f7ea389ba5f00d812f4fe55f6f286dea329d2abeefa535e309
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

```console
$ docker pull archlinux@sha256:c9dc8b5d1b06d8d50ace6d42b2c93fbb1e34c9e1332d1a2102936e497d3187ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133235985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5450f1f6c02a03b7675390a41f7b082f6f24c8737f1c583d0d23c49c0f791efe`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.version=20260823.0.578598
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 24 Aug 2026 18:03:15 GMT
LABEL org.opencontainers.image.created=2026-08-23T00:09:32+00:00
# Mon, 24 Aug 2026 18:03:15 GMT
COPY /rootfs/ / # buildkit
# Mon, 24 Aug 2026 18:03:17 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260823.0.578598' /etc/os-release # buildkit
# Mon, 24 Aug 2026 18:03:17 GMT
ENV LANG=C.UTF-8
# Mon, 24 Aug 2026 18:03:17 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:05e591f6b3b52daf1c0e620de8d54f3a20d677c697201db1b63ea0fb2f6e987a`  
		Last Modified: Mon, 24 Aug 2026 18:03:45 GMT  
		Size: 133.2 MB (133227249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada71fd3f8d2dfdf01cf370dcc2620b38f19d166715947f813303998950424d8`  
		Last Modified: Mon, 24 Aug 2026 18:03:41 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:latest` - unknown; unknown

```console
$ docker pull archlinux@sha256:d046aabf21e606d245118c3a193002e21f60bd202c63e00a0900e3b68bbfd8f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8212972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6e5b84a9384184dfc4756ed82d097623e8dbfbe6031bfcfdfbf55c38b559616`

```dockerfile
```

-	Layers:
	-	`sha256:a93bf1f023c0171f6e47ede56c076cdd13271f8ea25edc136914f0a1904864cb`  
		Last Modified: Mon, 24 Aug 2026 18:03:41 GMT  
		Size: 8.2 MB (8201043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9462b8ae9ca306b41bd73d623efcd7ffef02312f1a0d964a2fd3a09daff0c37b`  
		Last Modified: Mon, 24 Aug 2026 18:03:41 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json
