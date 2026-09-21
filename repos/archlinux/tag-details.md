<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `archlinux`

-	[`archlinux:base`](#archlinuxbase)
-	[`archlinux:base-20260920.0.596911`](#archlinuxbase-202609200596911)
-	[`archlinux:base-devel`](#archlinuxbase-devel)
-	[`archlinux:base-devel-20260920.0.596911`](#archlinuxbase-devel-202609200596911)
-	[`archlinux:latest`](#archlinuxlatest)
-	[`archlinux:multilib-devel`](#archlinuxmultilib-devel)
-	[`archlinux:multilib-devel-20260920.0.596911`](#archlinuxmultilib-devel-202609200596911)

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

## `archlinux:base-20260920.0.596911`

```console
$ docker pull archlinux@sha256:f3691b4dde62ba4c4b6f0ae2c1fbf28e8c0c8c4b9a35c7e06dc1f70e21aa29f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-20260920.0.596911` - linux; amd64

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

### `archlinux:base-20260920.0.596911` - unknown; unknown

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

## `archlinux:base-devel`

```console
$ docker pull archlinux@sha256:8745817f349ed24373341ddb92776209eeec3f0364ea48f7f645ac5800d30a50
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:base-devel` - linux; amd64

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

### `archlinux:base-devel` - unknown; unknown

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

## `archlinux:latest`

```console
$ docker pull archlinux@sha256:f3691b4dde62ba4c4b6f0ae2c1fbf28e8c0c8c4b9a35c7e06dc1f70e21aa29f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:latest` - linux; amd64

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

### `archlinux:latest` - unknown; unknown

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

## `archlinux:multilib-devel`

```console
$ docker pull archlinux@sha256:f5c2ae0ba0f0a02a706762ed89f289c4bf1f12bc92c663715361cfbc9b15b893
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel` - linux; amd64

```console
$ docker pull archlinux@sha256:ab0171819dd030fe211a07deab8deb7336579863fc0eac322ea05237a86fe9ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.2 MB (330163410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2333a2cf6b0bf1d1c389ec9d39da8338ee5b6e25a746a6bde49f9c78c0f7b74c`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.version=20260920.0.596911
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.created=2026-09-20T00:09:21+00:00
# Mon, 21 Sep 2026 18:03:55 GMT
COPY /rootfs/ / # buildkit
# Mon, 21 Sep 2026 18:04:04 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260920.0.596911' /etc/os-release # buildkit
# Mon, 21 Sep 2026 18:04:04 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 18:04:04 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:f2d914c5f70a9a66295d6e72abc196dad05f044ee6d0929ce773c8b35bc78271`  
		Last Modified: Mon, 21 Sep 2026 18:05:02 GMT  
		Size: 330.2 MB (330150688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b677ed4de8e574851817e6e74902bcae80e07dda70b5668600f34d80ccef3fc`  
		Last Modified: Mon, 21 Sep 2026 18:04:56 GMT  
		Size: 12.7 KB (12722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel` - unknown; unknown

```console
$ docker pull archlinux@sha256:041f447b708fc53fc85572ba84be86a2efda4a890c4a08ba24bf7eb012c4b2ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14701816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b0fe9d670c82eef29023fc1eab3d9f844313976b77f7b853bf6f4e8c9e3fdd`

```dockerfile
```

-	Layers:
	-	`sha256:a1855eeb417f0b7a4332beaf80116861c101929ffb30f3f515321543ebb5ff94`  
		Last Modified: Mon, 21 Sep 2026 18:04:57 GMT  
		Size: 14.7 MB (14690048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adc950a0ac29659b17bb2d57f8b263650bb2a0395dba95f6d6e76e80b76fee62`  
		Last Modified: Mon, 21 Sep 2026 18:04:56 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json

## `archlinux:multilib-devel-20260920.0.596911`

```console
$ docker pull archlinux@sha256:f5c2ae0ba0f0a02a706762ed89f289c4bf1f12bc92c663715361cfbc9b15b893
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `archlinux:multilib-devel-20260920.0.596911` - linux; amd64

```console
$ docker pull archlinux@sha256:ab0171819dd030fe211a07deab8deb7336579863fc0eac322ea05237a86fe9ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.2 MB (330163410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2333a2cf6b0bf1d1c389ec9d39da8338ee5b6e25a746a6bde49f9c78c0f7b74c`
-	Default Command: `["\/usr\/bin\/bash"]`

```dockerfile
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.title=Arch Linux multilib-devel Image
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.description=Official containerd image of Arch Linux, a simple, lightweight Linux distribution aimed for flexibility.
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.authors=Santiago Torres-Arias <santiago@archlinux.org> (@SantiagoTorres), Christian Rebischke <Chris.Rebischke@archlinux.org> (@shibumi), Justin Kromlinger <hashworks@archlinux.org> (@hashworks)
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.url=https://gitlab.archlinux.org/archlinux/archlinux-docker/-/blob/master/README.md
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.documentation=https://wiki.archlinux.org/title/Docker#Arch_Linux
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.source=https://gitlab.archlinux.org/archlinux/archlinux-docker
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.licenses=GPL-3.0-or-later
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.version=20260920.0.596911
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.revision=34b87485162b028c8d957bdcd2674359d883cd21
# Mon, 21 Sep 2026 18:03:55 GMT
LABEL org.opencontainers.image.created=2026-09-20T00:09:21+00:00
# Mon, 21 Sep 2026 18:03:55 GMT
COPY /rootfs/ / # buildkit
# Mon, 21 Sep 2026 18:04:04 GMT
RUN ldconfig &&     sed -i '/BUILD_ID/a VERSION_ID=20260920.0.596911' /etc/os-release # buildkit
# Mon, 21 Sep 2026 18:04:04 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 18:04:04 GMT
CMD ["/usr/bin/bash"]
```

-	Layers:
	-	`sha256:f2d914c5f70a9a66295d6e72abc196dad05f044ee6d0929ce773c8b35bc78271`  
		Last Modified: Mon, 21 Sep 2026 18:05:02 GMT  
		Size: 330.2 MB (330150688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b677ed4de8e574851817e6e74902bcae80e07dda70b5668600f34d80ccef3fc`  
		Last Modified: Mon, 21 Sep 2026 18:04:56 GMT  
		Size: 12.7 KB (12722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `archlinux:multilib-devel-20260920.0.596911` - unknown; unknown

```console
$ docker pull archlinux@sha256:041f447b708fc53fc85572ba84be86a2efda4a890c4a08ba24bf7eb012c4b2ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14701816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b0fe9d670c82eef29023fc1eab3d9f844313976b77f7b853bf6f4e8c9e3fdd`

```dockerfile
```

-	Layers:
	-	`sha256:a1855eeb417f0b7a4332beaf80116861c101929ffb30f3f515321543ebb5ff94`  
		Last Modified: Mon, 21 Sep 2026 18:04:57 GMT  
		Size: 14.7 MB (14690048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adc950a0ac29659b17bb2d57f8b263650bb2a0395dba95f6d6e76e80b76fee62`  
		Last Modified: Mon, 21 Sep 2026 18:04:56 GMT  
		Size: 11.8 KB (11768 bytes)  
		MIME: application/vnd.in-toto+json
