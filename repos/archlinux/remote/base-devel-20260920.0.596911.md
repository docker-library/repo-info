## `archlinux:base-devel-20260920.0.596911`

```console
$ docker pull archlinux@sha256:8745817f349ed24373341ddb92776209eeec3f0364ea48f7f645ac5800d30a50
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel-20260920.0.596911` - linux; amd64

```console
$ docker pull archlinux@sha256:8185e444e45ba166146b244b41f1cba2d7d91f3eddce533a839cc9591e0fa785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307692031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed18d5c7b242c675807f875e43eabf11bdf87f9eebd875fce9e9b1d1bf7297f`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 21 Sep 2026 18:02:45 GMT
LABEL org.opencontainers.image.title=Arch Linux base-devel Image
# Mon, 21 Sep 2026 18:02:45 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 21 Sep 2026 18:02:45 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 21 Sep 2026 18:02:45 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 21 Sep 2026 18:02:45 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 21 Sep 2026 18:02:45 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 21 Sep 2026 18:02:45 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 21 Sep 2026 18:02:45 GMT
LABEL org.opencontainers.image.version=20260920.0.596911
# Mon, 21 Sep 2026 18:02:45 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 21 Sep 2026 18:02:45 GMT
LABEL org.opencontainers.image.created=2026-09-20T00:09:21+00:00
# Mon, 21 Sep 2026 18:02:45 GMT
COPY /rootfs/ / # buildkit
# Mon, 21 Sep 2026 18:02:52 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260920.0.596911' /etc/os-release # buildkit
# Mon, 21 Sep 2026 18:02:52 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 18:02:52 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:e870e79dc6939bea6237713dae15c980aac65bd793f3aa837562583f76a1b2ff`  
		Last Modified: Mon, 21 Sep 2026 18:03:45 GMT  
		Size: 307.7 MB (307680523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d434326277b486b6e7ec2641f4284b7dd2bc5bda56f21dd1458073733b0b42c`  
		Last Modified: Mon, 21 Sep 2026 18:03:39 GMT  
		Size: 11.5 KB (11508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:base-devel-20260920.0.596911` - unknown; unknown

```console
$ docker pull archlinux@sha256:1cc1d5e0e7b2948b0afe705d00d493ebaea94155ff9d9f37cc8c5f706f0a7eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14430672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b727c822fb9d70b150ddfbbb2d21b72c7ec02c15cdc2c1e7596b117e5dcf48e8`

```dockerfile
```

-	Layers:
	-	`sha256:1ec2c2b1f575e18bdd02bef46c165924841002ffd0d8197e489f413588f822b6`  
		Last Modified: Mon, 21 Sep 2026 18:03:39 GMT  
		Size: 14.4 MB (14418960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53cfb8387d8b4a93ec1a957ea4b18c801ae3271162147a0ce7ffaed33e3bd629`  
		Last Modified: Mon, 21 Sep 2026 18:03:39 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json
