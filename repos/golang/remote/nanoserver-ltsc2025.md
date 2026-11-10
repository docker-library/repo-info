## `golang:nanoserver-ltsc2025`

```console
$ docker pull golang@sha256:98261c3399ae8f4fa87f034a95fdf3ebb8379d650ca02c9dd12f3f5a508affcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `golang:nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull golang@sha256:9ecc2487bc35466422f14ef33f5b1b98365035885aedb04ceb1a67724ba70d53
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273294643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de486598fdc25459ce2aad2127b3a34d69d9b94c7e1b3e7a1a68433b5058f89`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 10 Nov 2026 18:49:42 GMT
SHELL [cmd /S /C]
# Tue, 10 Nov 2026 18:49:42 GMT
ENV GOPATH=C:\go
# Tue, 10 Nov 2026 18:49:43 GMT
USER ContainerAdministrator
# Tue, 10 Nov 2026 18:49:58 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Tue, 10 Nov 2026 18:49:58 GMT
USER ContainerUser
# Tue, 10 Nov 2026 18:49:59 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:53:15 GMT
COPY dir:046e3a79934e4329b17e94daaaac02d4c5849fafce4bfbeac0b852c0ecfdd6c0 in C:\Program Files\Go 
# Tue, 10 Nov 2026 18:53:19 GMT
RUN go version
# Tue, 10 Nov 2026 18:53:20 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268bf4f0ee104de2193fb4a7eb71569497fa642b275353a3f9113eb51bc610bb`  
		Last Modified: Tue, 10 Nov 2026 18:53:26 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d1236dac63ff302af496cc471460f80bf006b0b368b8b12746cca70cf286cf`  
		Last Modified: Tue, 10 Nov 2026 18:53:26 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36705312fd4bc6aa0d2854748184ecb02c746aa5292f935c2becfd5853b2f083`  
		Last Modified: Tue, 10 Nov 2026 18:53:26 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2515006d5d5a21e2d1caac0f7ab99b6efe6561bee8e496c9149ba3e9b205a16d`  
		Last Modified: Tue, 10 Nov 2026 18:53:26 GMT  
		Size: 70.2 KB (70175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea738fef847ce1c4e228f371c0608b6c24e38f929a61d97f16e80fd2c60ed28`  
		Last Modified: Tue, 10 Nov 2026 18:53:24 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c32897961d7991d75909fa358dff1815aaf6bb8f30d761d8685b80d220ef4f`  
		Last Modified: Tue, 10 Nov 2026 18:53:24 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fb1b947253ff72f48c867b9354235febb227fb090b7756e843c68da848902b`  
		Last Modified: Tue, 10 Nov 2026 18:53:36 GMT  
		Size: 73.2 MB (73183549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90623d5b279452a11c2c56d427db294d597e016010b643a57b270aebf31bd90`  
		Last Modified: Tue, 10 Nov 2026 18:53:24 GMT  
		Size: 75.4 KB (75398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d93baadf04d9907441c9201f096c6ccb686bd7c1fd06d43de40af9c2152c81`  
		Last Modified: Tue, 10 Nov 2026 18:53:24 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
