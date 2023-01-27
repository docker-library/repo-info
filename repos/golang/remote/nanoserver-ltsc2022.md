## `golang:nanoserver-ltsc2022`

```console
$ docker pull golang@sha256:c49055babd79cf6724afa19084087c6fffe59445ccbd67a1c1f3b4aed983571f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.1487; amd64

### `golang:nanoserver-ltsc2022` - windows version 10.0.20348.1487; amd64

```console
$ docker pull golang@sha256:10fa7c0338e6df848990fa0746d77e07e2f4089fd15019c3d3d63d01a07f76ab
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279568785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d1a450e01d1ed7c92ff6e383594cfee8c12df1f2e12ec99bf49751d4ea85eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Fri, 06 Jan 2023 23:36:49 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 03:07:34 GMT
SHELL [cmd /S /C]
# Thu, 12 Jan 2023 03:07:34 GMT
ENV GOPATH=C:\go
# Thu, 12 Jan 2023 03:07:36 GMT
USER ContainerAdministrator
# Thu, 12 Jan 2023 03:08:26 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Thu, 12 Jan 2023 03:08:27 GMT
USER ContainerUser
# Thu, 12 Jan 2023 03:24:14 GMT
ENV GOLANG_VERSION=1.19.5
# Thu, 12 Jan 2023 03:27:03 GMT
COPY dir:10c8e524c1346a2fb1d71240899f8be8a5c84e42a02e32a993c68761bb742a41 in C:\Program Files\Go 
# Thu, 12 Jan 2023 03:27:54 GMT
RUN go version
# Thu, 12 Jan 2023 03:27:55 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:83e9437e818022c1c28f0e07002dd46995c8614e62b9366138fa23b94f43d9ad`  
		Last Modified: Thu, 12 Jan 2023 02:51:06 GMT  
		Size: 122.1 MB (122099566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e0e139d1c09b743fda52fd8a19bdc3c829ac2aed829d2e16beec0fbbd5dd5d`  
		Last Modified: Thu, 12 Jan 2023 03:48:59 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4e8737aebbf1207ce8659de66f3d575194350678800b69a174bc516a329dea`  
		Last Modified: Thu, 12 Jan 2023 03:48:59 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611ab0a2da8d60a13ec497aa6f89b840f936a6c6f7450f0386f808c000f44970`  
		Last Modified: Thu, 12 Jan 2023 03:48:59 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3c63725f8ca8d354e6c46948328eda4a7c428e21bfedbd5005b674e23fbf73`  
		Last Modified: Thu, 12 Jan 2023 03:48:59 GMT  
		Size: 84.0 KB (84048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42b910fe2ecce44f108e85c2c03f9acb106e857aa6b7f2e4622891aa961b4bf`  
		Last Modified: Thu, 12 Jan 2023 03:48:57 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860f6a6e3af5d5c0d15a8ea922ed5a97bece37365a97119826aa53346d77fdfb`  
		Last Modified: Thu, 12 Jan 2023 03:53:27 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633159a2339ac9f56465a205b10c54c180771755f8ee54985e6f9746a64af5e5`  
		Last Modified: Thu, 12 Jan 2023 03:54:26 GMT  
		Size: 157.3 MB (157328841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c6b72b61e34da60befbb519f3ef3bd10c1d1baf4b38dd9e831e7f525414aab`  
		Last Modified: Thu, 12 Jan 2023 03:53:27 GMT  
		Size: 49.3 KB (49265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee9e617fe2c810d653270f26768b8aa352f078bf1aa2b3fb4fa7715a4dbc176`  
		Last Modified: Thu, 12 Jan 2023 03:53:27 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
