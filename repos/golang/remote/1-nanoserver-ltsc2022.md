## `golang:1-nanoserver-ltsc2022`

```console
$ docker pull golang@sha256:413ce065e47b699f9c8d9554a888d50cc5ee84feb4058138b459822daa351adf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `golang:1-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull golang@sha256:60b92563a4eb475c244fb6f63d849af2c15b40ad9b31c09fc79508961f8236d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193505458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d4786acab6544ca6238d31b950013de251f467e15d0faccfbfb402fc65ad42`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:54:25 GMT
SHELL [cmd /S /C]
# Wed, 15 Jul 2026 23:54:25 GMT
ENV GOPATH=C:\go
# Wed, 15 Jul 2026 23:54:26 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:54:28 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Wed, 15 Jul 2026 23:54:28 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:54:29 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 15 Jul 2026 23:55:24 GMT
COPY dir:06c6c601a7d74d009c8428c3fe8a3ad16d52c40758b67d935d7ec0353d91cca8 in C:\Program Files\Go 
# Wed, 15 Jul 2026 23:55:27 GMT
RUN go version
# Wed, 15 Jul 2026 23:55:27 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a22d164806eb486376495b94e17477df0c9507eac926c5d03a0e19bd2f1e0ab`  
		Last Modified: Wed, 15 Jul 2026 23:55:42 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a2e386e503562e996194364f9c844052c47b94934ff016c6b5963c95c4fa22`  
		Last Modified: Wed, 15 Jul 2026 23:55:41 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a1208b572b88967b5182f45584ce8cab32525a13a73f5c975c8d44854a5022`  
		Last Modified: Wed, 15 Jul 2026 23:55:41 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b561a26c300557ed14a310c72338f996fe3d630f957ff8dc4bbafe074bf7f676`  
		Last Modified: Wed, 15 Jul 2026 23:55:41 GMT  
		Size: 76.8 KB (76837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd9f788d263d6147a4c715ef137bf2209aa10ee8379b5be4aa9547001757ac2`  
		Last Modified: Wed, 15 Jul 2026 23:55:40 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daf164154aaa76b21f391b67f5fedcb3b113a7c67f5dc3ec486d32425923794`  
		Last Modified: Wed, 15 Jul 2026 23:55:40 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67ddb0c5247ec0ee0e6a24f4a4917b984919b35f0873b1a5747430d5c7bd406`  
		Last Modified: Wed, 15 Jul 2026 23:55:49 GMT  
		Size: 69.2 MB (69237591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d351d7f7cea787d2455f99db1292b973b1624eda205546d2ef6aabef0453a9fe`  
		Last Modified: Wed, 15 Jul 2026 23:55:40 GMT  
		Size: 81.4 KB (81404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a0d73f98992379f09889e274079e3aa48821b147a727833025c947b062cebd`  
		Last Modified: Wed, 15 Jul 2026 23:55:40 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
