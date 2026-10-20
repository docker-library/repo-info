## `golang:nanoserver-ltsc2025`

```console
$ docker pull golang@sha256:4b130e4fd105a0927bd14830103eda4112457e568bf222f0925161ba088b46cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `golang:nanoserver-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull golang@sha256:f134b9b36fa4e5561e07ad48973638714bd1c81a7bf20385b7c88a9c4126fdd9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273134693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72808f9dad2c328e7c8618b731b8900beea1fb52d09d705a025d6399edb03a94`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Tue, 20 Oct 2026 03:08:34 GMT
SHELL [cmd /S /C]
# Tue, 20 Oct 2026 03:08:35 GMT
ENV GOPATH=C:\go
# Tue, 20 Oct 2026 03:08:36 GMT
USER ContainerAdministrator
# Tue, 20 Oct 2026 03:08:50 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Tue, 20 Oct 2026 03:08:51 GMT
USER ContainerUser
# Tue, 20 Oct 2026 03:08:51 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 03:12:32 GMT
COPY dir:d72405f8d4561a4e063b37128c6006d69b2ba5d7370a849f5d2ebba30f54149d in C:\Program Files\Go 
# Tue, 20 Oct 2026 03:12:35 GMT
RUN go version
# Tue, 20 Oct 2026 03:12:36 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724bbe1bf6b4e9661a3435837ac313829f29c54e254a21f83496e6f8cb07ff99`  
		Last Modified: Tue, 20 Oct 2026 03:12:48 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a20d37fdb8608a949a497b5f331de5dd268a2fff0b1fc4eccff78d409f4327d`  
		Last Modified: Tue, 20 Oct 2026 03:12:48 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce3131e93c09ba2490c36dfa3049362f423f1944064d673e4bd303f15ad99cb`  
		Last Modified: Tue, 20 Oct 2026 03:12:48 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab901ce239eabbbeff58c23afd7b0c464787a0a3fa0ec2b235563c01e9ad783`  
		Last Modified: Tue, 20 Oct 2026 03:12:48 GMT  
		Size: 69.9 KB (69944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27efebbd0efb07f7a76f2b38527c2bad3be243e250cba3e1b606eeeffbc5ae15`  
		Last Modified: Tue, 20 Oct 2026 03:12:47 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ae9228c2f5ccc7449179856ef2a8582f2f6250dd958c94a5d0826ef7c6ba13`  
		Last Modified: Tue, 20 Oct 2026 03:12:47 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a29ac2ec17dd7ae7b1d284de62fd74b7fc6e2c6d883b0418ec3b562207c870`  
		Last Modified: Tue, 20 Oct 2026 03:12:57 GMT  
		Size: 73.1 MB (73112005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db82903848ad0cdef5a0d4364b32712fe77b9956aaf8a6eacc59bed33bdf641e`  
		Last Modified: Tue, 20 Oct 2026 03:12:47 GMT  
		Size: 75.2 KB (75176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c14e2a7366d6f14774741d93f976c0ecbb5a4f2652d9d882c1f3ae3519cdb1`  
		Last Modified: Tue, 20 Oct 2026 03:12:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
