## `archlinux:base`

```console
$ docker pull archlinux@sha256:f3691b4dde62ba4c4b6f0ae2c1fbf28e8c0c8c4b9a35c7e06dc1f70e21aa29f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base` - linux; amd64

```console
$ docker pull archlinux@sha256:917e543c9d0f1f495d70907bdf05bf53607e791b351e1b01ccd3aec2442303ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133546742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ccad9ea8dd6f226a1863e95648a165d97576425d2b9c7ee5f21f32b0d84b51`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 21 Sep 2026 18:01:44 GMT
LABEL org.opencontainers.image.title=Arch Linux base Image
# Mon, 21 Sep 2026 18:01:44 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 21 Sep 2026 18:01:44 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 21 Sep 2026 18:01:44 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 21 Sep 2026 18:01:44 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 21 Sep 2026 18:01:44 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 21 Sep 2026 18:01:44 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 21 Sep 2026 18:01:44 GMT
LABEL org.opencontainers.image.version=20260920.0.596911
# Mon, 21 Sep 2026 18:01:44 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 21 Sep 2026 18:01:44 GMT
LABEL org.opencontainers.image.created=2026-09-20T00:09:21+00:00
# Mon, 21 Sep 2026 18:01:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 21 Sep 2026 18:01:46 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260920.0.596911' /etc/os-release # buildkit
# Mon, 21 Sep 2026 18:01:46 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 18:01:46 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:a3f972443da482af3e5b9d4238231540eaaace893d6565a0faba9948d583b709`  
		Last Modified: Mon, 21 Sep 2026 18:02:11 GMT  
		Size: 133.5 MB (133538009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc80f5687b93587bccca7fa3a384e062cf71d9ca6a4eeb9d260845b5e857aa5d`  
		Last Modified: Mon, 21 Sep 2026 18:02:08 GMT  
		Size: 8.7 KB (8733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base` - unknown; unknown

```console
$ docker pull archlinux@sha256:d6153799688512bd3235c314509b44b0a7ca43d14d66223e83913aba407dbcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8221891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02af3c0e2527b3913c82aa847ef37b27be93c14d796e128a2e22821420b7140`

```dockerfile
```

-	Layers:
	-	`sha256:2192f672d965f91c9418a9280f71edd4e805815480a238239acfdbb106568b1f`  
		Last Modified: Mon, 21 Sep 2026 18:02:08 GMT  
		Size: 8.2 MB (8209962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f8dbbdb7648bbf600c21cbf372beb220a7b9b02c8aff417617cf75030a8b64f`  
		Last Modified: Mon, 21 Sep 2026 18:02:08 GMT  
		Size: 11.9 KB (11929 bytes)  
		MIME: application/vnd.in-toto+json
