## `golang:1-nanoserver-ltsc2025`

```console
$ docker pull golang@sha256:a7ba355dee379b5d67cffae6236edc2a027f4c8b604fe60b1c8462a85563da22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `golang:1-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull golang@sha256:0c42af0418fe418b582af7f9c87f5467c0e40046e031447e9ebb17cb50991450
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270641092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb98cac74df732429b8cc5f655895cf8e5f10f629e3265bba36a0e10a44e059`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 19 Aug 2026 20:10:08 GMT
SHELL [cmd /S /C]
# Wed, 19 Aug 2026 20:10:10 GMT
ENV GOPATH=C:\go
# Wed, 19 Aug 2026 20:10:10 GMT
USER ContainerAdministrator
# Wed, 19 Aug 2026 20:10:27 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Wed, 19 Aug 2026 20:10:28 GMT
USER ContainerUser
# Wed, 19 Aug 2026 20:10:28 GMT
ENV GOLANG_VERSION=1.27.0
# Wed, 19 Aug 2026 20:12:35 GMT
COPY dir:e5de8031b31c91c53f31dd654ee259f7012d2bdece85ca6acdf52bb9569779b3 in C:\Program Files\Go 
# Wed, 19 Aug 2026 20:12:39 GMT
RUN go version
# Wed, 19 Aug 2026 20:12:40 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ee1dea55db42cb4b59e1b3133a331d485921ca0896d72a214349e6a70d9c6e`  
		Last Modified: Wed, 19 Aug 2026 20:12:56 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebb39a8da2e241eff6b4b8f9c7ab4966e1f182bd0319230fa4982d5ac77c412`  
		Last Modified: Wed, 19 Aug 2026 20:12:56 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bc7a9c3c716299b82652a38375d4237a0f8e91e0845601576e1470d3ce6bf7`  
		Last Modified: Wed, 19 Aug 2026 20:12:56 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd8f2c79aba6dd94fd058e17028fbb6b8147e50739981697ce1a65a7456b006`  
		Last Modified: Wed, 19 Aug 2026 20:12:56 GMT  
		Size: 70.8 KB (70802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ba6f9ab75e6ff91e219c2ff6773be73d2cb55c901f55d71dc1a77708911415`  
		Last Modified: Wed, 19 Aug 2026 20:12:55 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c796fd5b78f9ff7c9492a904d4b01fe26ce0587fecd86f43fc58e4efb2f34e3`  
		Last Modified: Wed, 19 Aug 2026 20:12:54 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7dfb93c6aabdd1617490f1ecdc04b761b500c9f968b2c16f3c35593df8feedd`  
		Last Modified: Wed, 19 Aug 2026 20:13:06 GMT  
		Size: 73.0 MB (73004990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ae9a7c1a6f9c6da1d3ab03b1a1fff6ce572f39cf0f9b8b11c900f41cbd7edc`  
		Last Modified: Wed, 19 Aug 2026 20:12:55 GMT  
		Size: 76.7 KB (76724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40a21fe8b670f0b8afdea72f28e828aa3b2fdb238cdc3c878908e1452f24136`  
		Last Modified: Wed, 19 Aug 2026 20:12:55 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
