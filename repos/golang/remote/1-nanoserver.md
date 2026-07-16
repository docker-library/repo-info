## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:6cbc9c9d5c433a2010b7b5fc1f0cd6f022455337c4cd1540c5726ad2144749aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `golang:1-nanoserver` - windows version 10.0.26100.33158; amd64

```console
$ docker pull golang@sha256:f26bdf0bd62c8be7fcaca054bb9e267bd19c97d13d2cd36097c708da62eb7418
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266625042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751a171ae838f3ce3d37f9e6ac21f764de0fc0d4d9385c1f1cd60c39311f85a3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Thu, 16 Jul 2026 00:19:00 GMT
SHELL [cmd /S /C]
# Thu, 16 Jul 2026 00:19:00 GMT
ENV GOPATH=C:\go
# Thu, 16 Jul 2026 00:19:01 GMT
USER ContainerAdministrator
# Thu, 16 Jul 2026 00:19:04 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Thu, 16 Jul 2026 00:19:04 GMT
USER ContainerUser
# Thu, 16 Jul 2026 00:19:05 GMT
ENV GOLANG_VERSION=1.26.5
# Thu, 16 Jul 2026 00:20:17 GMT
COPY dir:06c6c601a7d74d009c8428c3fe8a3ad16d52c40758b67d935d7ec0353d91cca8 in C:\Program Files\Go 
# Thu, 16 Jul 2026 00:20:20 GMT
RUN go version
# Thu, 16 Jul 2026 00:20:20 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0f762fbdb9162dc2d8734da1003d6fa10c10c20a663b02d4c1f95eeb2e2729`  
		Last Modified: Thu, 16 Jul 2026 00:20:32 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e66188928935081ed33b05e8947631d95167974c88497ce23dbee469c17df4`  
		Last Modified: Thu, 16 Jul 2026 00:20:32 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc543d3adfa5b56e3a6163f2c3b1945523ccba82da95acd404549285b5206928`  
		Last Modified: Thu, 16 Jul 2026 00:20:32 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828a1e04607430d175dd989f2360172a342f843863dc67686b931d7adc77b5c8`  
		Last Modified: Thu, 16 Jul 2026 00:20:32 GMT  
		Size: 72.5 KB (72457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7caa71a85e02e1a0a2918d74a170eba5863a34716433490f389d62c4c36535`  
		Last Modified: Thu, 16 Jul 2026 00:20:30 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc5effa1e78fe435a5e7f0bd8180a3e0b375ab9cce653eae4bb6baeebcfbf9c`  
		Last Modified: Thu, 16 Jul 2026 00:20:30 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb10f488883df3839ff1559d4261acfb1464495c0d3ae158f370e3ad83b8524e`  
		Last Modified: Thu, 16 Jul 2026 00:20:41 GMT  
		Size: 69.2 MB (69243802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f0b62588d43f40d4899a5a57d37e1fbdd5b5ce3058d546ce6fd2420621053a`  
		Last Modified: Thu, 16 Jul 2026 00:20:30 GMT  
		Size: 83.0 KB (82952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befa31c647d8583d9dfc51fb42ae0489b27638d064deab32338c13a6f7ebbac6`  
		Last Modified: Thu, 16 Jul 2026 00:20:30 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-nanoserver` - windows version 10.0.20348.5386; amd64

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
