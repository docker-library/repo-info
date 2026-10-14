## `golang:nanoserver-ltsc2022`

```console
$ docker pull golang@sha256:b8171b236f504e589d7c775eb3194c5f2f427dce9675be0061f44d1cfe0a5c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `golang:nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull golang@sha256:5435a69bee40ef034c3cd2a02815c6aaf9848aa7efc8d2a185d25a98f79c5d2d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.1 MB (199078624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac99e2f813ccb100b38f6df46d963fefea6e13619101bd81d28e6efbf7b34ed`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:21:50 GMT
SHELL [cmd /S /C]
# Wed, 14 Oct 2026 00:21:51 GMT
ENV GOPATH=C:\go
# Wed, 14 Oct 2026 00:21:52 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:21:53 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Wed, 14 Oct 2026 00:21:54 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:21:54 GMT
ENV GOLANG_VERSION=1.27.2
# Wed, 14 Oct 2026 00:22:59 GMT
COPY dir:771b75ec9ae87ed9ca4e37455b101cedb35120030ac8fba2cc7c11f77b616a99 in C:\Program Files\Go 
# Wed, 14 Oct 2026 00:23:02 GMT
RUN go version
# Wed, 14 Oct 2026 00:23:03 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb068223f418816f17445bf7a2170a4e45203725380b2ea5329fee60154113c`  
		Last Modified: Wed, 14 Oct 2026 00:23:09 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b587e206cd0f7932857f86f7ebb71c7e4667e175b7fe54fa5944d17d76493e8`  
		Last Modified: Wed, 14 Oct 2026 00:23:09 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe1e1db2ff355d933dcb8740ac7cc3150e852b31504855b15d5f64333dad836`  
		Last Modified: Wed, 14 Oct 2026 00:23:09 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa585881276971a530d19b64fd087a918acc487ae928cf60c4d88ce02fe4a303`  
		Last Modified: Wed, 14 Oct 2026 00:23:09 GMT  
		Size: 78.7 KB (78726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d640b7b819d8ed0283b819c73d833ea5ce5378a152c51b1da531b9783f953d`  
		Last Modified: Wed, 14 Oct 2026 00:23:07 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b909e9a6f3fe955c30fc8e4b36ddcb657eb28bec53db5628d6bfa19ed0c87e`  
		Last Modified: Wed, 14 Oct 2026 00:23:07 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2054a59c1a4465e678dd71299228a879c42fbe7950d22f38e98c43e42d180a9`  
		Last Modified: Wed, 14 Oct 2026 00:23:17 GMT  
		Size: 73.1 MB (73109354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1acc0580e90e8bc89d74d5187924a533563e348f071e06713527dfceff1bac`  
		Last Modified: Wed, 14 Oct 2026 00:23:07 GMT  
		Size: 88.0 KB (88009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3131b53ebd468d6b0d8380ff517eb9daf592baf0518141162208376ffbc09b`  
		Last Modified: Wed, 14 Oct 2026 00:23:07 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
