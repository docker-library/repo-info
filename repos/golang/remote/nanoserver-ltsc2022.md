## `golang:nanoserver-ltsc2022`

```console
$ docker pull golang@sha256:f20db764ca09da7482ad3ccf37eb33fa0e441a11dec1d6589f742c94ac35370d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `golang:nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull golang@sha256:0d3124c3b1036b3c4f3ca5f2264ed8295231779944b9ed2fe0ed057d3501938f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197431505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31bb9338203b058ff17039ba5ff0b984195b272e3789c9ffcef2d64a8db8a01`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 19 Aug 2026 20:08:58 GMT
SHELL [cmd /S /C]
# Wed, 19 Aug 2026 20:08:59 GMT
ENV GOPATH=C:\go
# Wed, 19 Aug 2026 20:08:59 GMT
USER ContainerAdministrator
# Wed, 19 Aug 2026 20:09:06 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Wed, 19 Aug 2026 20:09:06 GMT
USER ContainerUser
# Wed, 19 Aug 2026 20:09:07 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 20:11:29 GMT
COPY dir:e5de8031b31c91c53f31dd654ee259f7012d2bdece85ca6acdf52bb9569779b3 in C:\Program Files\Go 
# Wed, 19 Aug 2026 20:11:31 GMT
RUN go version
# Wed, 19 Aug 2026 20:11:32 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c667a7b8e81a6a255a46e92dab94f2678157dcaa1e368aa6b6381ff2b6b169`  
		Last Modified: Wed, 19 Aug 2026 20:11:49 GMT  
		Size: 1.1 KB (1095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f0187883bad5da1b86168e140b1809af70dbf356ad349aacf2f598d2d88fb9`  
		Last Modified: Wed, 19 Aug 2026 20:11:49 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b6c343cb41c096f602c1bcf80f1fb7b0ff5550893829147addacfcb86cb5a6`  
		Last Modified: Wed, 19 Aug 2026 20:11:49 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfdac1419bcf6e2d3d886d6c69a00b01bef006b6bcac7198e35b576901527f3`  
		Last Modified: Wed, 19 Aug 2026 20:11:49 GMT  
		Size: 80.4 KB (80366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a4318cd5e0745a0a5fad08120263fb8a17e18766a176582a10421d2e2fa7da`  
		Last Modified: Wed, 19 Aug 2026 20:11:47 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca0b4845418beda76dc0ed1386bfba4fbcc834a27de1f1ae358088a56a85181`  
		Last Modified: Wed, 19 Aug 2026 20:11:47 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45a55caf906137f6b703104256851ceed7d87e5953d88ec3edabc3cc0649a7a`  
		Last Modified: Wed, 19 Aug 2026 20:11:58 GMT  
		Size: 73.0 MB (73004460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d26a75948ca62d7038d95ef588dbae36bb6c48f7ffde91e2dcfd35e913bf84`  
		Last Modified: Wed, 19 Aug 2026 20:11:47 GMT  
		Size: 82.2 KB (82196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaba52c81603cb9adf5273e842864b7ae21c90270db41cba20182b8b268d5ca`  
		Last Modified: Wed, 19 Aug 2026 20:11:47 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
