## `golang:nanoserver`

```console
$ docker pull golang@sha256:e3bb41e79890ebde24f45761065bdd8ce03e3e167d78f11bbac429f23a5910bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `golang:nanoserver` - windows version 10.0.26100.33296; amd64

```console
$ docker pull golang@sha256:1d61ffb9fbc437c1d09a66e65efcb9cb931a9b4c6e0493b42383714a97eab203
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266892358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a00b1efa30eca5ad509f02b70d27a0c3aa4fc24af01d7abbd525f238bd4046d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 19 Aug 2026 18:08:46 GMT
SHELL [cmd /S /C]
# Wed, 19 Aug 2026 18:08:47 GMT
ENV GOPATH=C:\go
# Wed, 19 Aug 2026 18:08:47 GMT
USER ContainerAdministrator
# Wed, 19 Aug 2026 18:08:56 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Wed, 19 Aug 2026 18:08:57 GMT
USER ContainerUser
# Wed, 19 Aug 2026 18:08:57 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 18:11:07 GMT
COPY dir:b6f401a7f114974547bdb6da8e7f3d55e3698c64b0fab84544441ac410dc7fbd in C:\Program Files\Go 
# Wed, 19 Aug 2026 18:11:09 GMT
RUN go version
# Wed, 19 Aug 2026 18:11:10 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa2dc81174d605e2d2e83a76de2d843fe837bdca9e733d77a1a981f415b01ad`  
		Last Modified: Wed, 19 Aug 2026 18:11:24 GMT  
		Size: 1.1 KB (1052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bc54a9abd2509b51568cf7789ed2fd14e67704478f4fb906d701337b989fcf`  
		Last Modified: Wed, 19 Aug 2026 18:11:24 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f70a5c88717f0a85ff03f2fcc1226084bcb02ad6bb52436881467313118a14`  
		Last Modified: Wed, 19 Aug 2026 18:11:24 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9555dd7ff2cc1e25434181b4f5bd53a402f311f16a53d79cf027ab70ebee28`  
		Last Modified: Wed, 19 Aug 2026 18:11:25 GMT  
		Size: 71.9 KB (71870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e38befb3278a7b249de09764dc3f0c616508d8debac08463ace0707c3d2533`  
		Last Modified: Wed, 19 Aug 2026 18:11:23 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92697113a290225b474262af90141bea8f9165ce3370e09063a71e9ae508fb89`  
		Last Modified: Wed, 19 Aug 2026 18:11:23 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b501c9b9e2ef0d4d5ba4dd913c7e6e1060c36adec3b17680a856001959feb5`  
		Last Modified: Wed, 19 Aug 2026 18:11:33 GMT  
		Size: 69.3 MB (69255474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff39533b84d0eb873fb963d020e73d8f9682546b512acec9a7ebfe0ce2093bb`  
		Last Modified: Wed, 19 Aug 2026 18:11:23 GMT  
		Size: 76.4 KB (76380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d20fe99465b83af5d7fd050d30a7aa515637b67bbce0f2574777b5cfb4b39f5`  
		Last Modified: Wed, 19 Aug 2026 18:11:23 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull golang@sha256:bbdeb48d02969db94991c2aa5fd2b53bbb074016edfc338fc3843a260b024575
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193661943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79825f3fa6b1b6f20490a1ab43670894cad5c0987874d6c7c01f40c181ab5f72`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 19 Aug 2026 18:08:49 GMT
SHELL [cmd /S /C]
# Wed, 19 Aug 2026 18:08:50 GMT
ENV GOPATH=C:\go
# Wed, 19 Aug 2026 18:08:50 GMT
USER ContainerAdministrator
# Wed, 19 Aug 2026 18:08:59 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Wed, 19 Aug 2026 18:08:59 GMT
USER ContainerUser
# Wed, 19 Aug 2026 18:09:00 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 18:11:59 GMT
COPY dir:b6f401a7f114974547bdb6da8e7f3d55e3698c64b0fab84544441ac410dc7fbd in C:\Program Files\Go 
# Wed, 19 Aug 2026 18:12:02 GMT
RUN go version
# Wed, 19 Aug 2026 18:12:03 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953cad8e7677f6c7e4281a05cf6b27aafd5578e4b58bf0a2abff1accb976d5d0`  
		Last Modified: Wed, 19 Aug 2026 18:12:12 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e074c181667420cc4cf2d773c3d4605b45fe3168eda512347a07f929d667f86`  
		Last Modified: Wed, 19 Aug 2026 18:12:12 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2af3442c40b1b972c09c746b952ef4175f38bbd44d43fb695a4e45da9350b4`  
		Last Modified: Wed, 19 Aug 2026 18:12:12 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce4a95f43c274e0b6d4b17983b51a6be4ca020f3953a96b3e7e35934fc1b898`  
		Last Modified: Wed, 19 Aug 2026 18:12:12 GMT  
		Size: 70.4 KB (70372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdd18e02b4fe52fcaabf1d9d435d85425d1be780bc281e3044386e99167dde3`  
		Last Modified: Wed, 19 Aug 2026 18:12:10 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e1782c73954d0c653a7d069b13d1cb829da91a3fde2f49876df8c74e4a7242`  
		Last Modified: Wed, 19 Aug 2026 18:12:10 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33ca9af533593e931d5d02a2e46d792cce835e9cc23c90e4888e65926e63a28`  
		Last Modified: Wed, 19 Aug 2026 18:12:21 GMT  
		Size: 69.3 MB (69256121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0984b2369eb1b5a65d47e4255330ce347747b4ce9c47ad8dea59b8fe7b7993`  
		Last Modified: Wed, 19 Aug 2026 18:12:10 GMT  
		Size: 71.0 KB (71019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30724d90a16fc27cbf65338441d3d33f141e17aa5090d8d0e02655105fcfb6d`  
		Last Modified: Wed, 19 Aug 2026 18:12:10 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
