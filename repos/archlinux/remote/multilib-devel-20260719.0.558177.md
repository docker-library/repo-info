## `archlinux:multilib-devel-20260719.0.558177`

```console
$ docker pull archlinux@sha256:62e879ed5dc984360ec0c067ccd631a99da7a385b4b46709c3af27d1df919496
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260719.0.558177` - linux; amd64

```console
$ docker pull archlinux@sha256:d032a5254d6e25ff83274f5854fbbc750ac05209547f340762dd1fa8cc25648e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.2 MB (328226858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855bd97ec7e77a3f728926aab791fe726eefd4faf404c81401b1f4688e350013`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.version=20260719.0.558177
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 20 Jul 2026 18:38:48 GMT
LABEL org.opencontainers.image.created=2026-07-19T00:09:41+00:00
# Mon, 20 Jul 2026 18:38:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 20 Jul 2026 18:38:56 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260719.0.558177' /etc/os-release # buildkit
# Mon, 20 Jul 2026 18:38:56 GMT
ENV LANG=C.UTF-8
# Mon, 20 Jul 2026 18:38:56 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:39fb84fc7037abcad6f5574d167f0d0ec08bc11df850ee299c4c18e9fa2a5972`  
		Last Modified: Mon, 20 Jul 2026 18:39:54 GMT  
		Size: 328.2 MB (328214233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f5b73cc1d27de7e47c23e1dfad035ad785289e77ca812a337f3c9e9e759e89`  
		Last Modified: Mon, 20 Jul 2026 18:39:47 GMT  
		Size: 12.6 KB (12625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260719.0.558177` - unknown; unknown

```console
$ docker pull archlinux@sha256:95d9aff467b2d8f078aa84ffe24b435fddcd86682c7a34ce97599a0e817ba398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14689914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138f4e0486585bf7cdef7c14b6f851cf0575c24cb9f11f4ef5e2199d703b6d48`

```dockerfile
```

-	Layers:
	-	`sha256:f49e980c0d9752934be1047b640e7269352368210d3d0c4e007ab379ce941305`  
		Last Modified: Mon, 20 Jul 2026 18:39:48 GMT  
		Size: 14.7 MB (14678146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:361e64c44a3116e94669cd7c639b3d837564eab2b8f5ba359479db47cf03ce51`  
		Last Modified: Mon, 20 Jul 2026 18:39:47 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
