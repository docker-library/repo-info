## `golang:1-nanoserver-ltsc2022`

```console
$ docker pull golang@sha256:21d0fd7a0045cf27e086403fa84142f740d15c21a8ddc0d00d535531c37ca20c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `golang:1-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull golang@sha256:43036171e39aedb837a8dd4f39e089a1ac59461cff08547a0e19458f74cdef5e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193683278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521479c7e3ecb315fc0e02330ade422be58d3840243125a546bfbac317066f29`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Thu, 13 Aug 2026 20:09:39 GMT
SHELL [cmd /S /C]
# Thu, 13 Aug 2026 20:09:40 GMT
ENV GOPATH=C:\go
# Thu, 13 Aug 2026 20:09:40 GMT
USER ContainerAdministrator
# Thu, 13 Aug 2026 20:09:46 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Thu, 13 Aug 2026 20:09:46 GMT
USER ContainerUser
# Thu, 13 Aug 2026 20:12:51 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 20:14:07 GMT
COPY dir:e906a9e08207a1f5960b2eb0b3aff0388fb557875bfee9cefc5a2286ed38e74a in C:\Program Files\Go 
# Thu, 13 Aug 2026 20:14:09 GMT
RUN go version
# Thu, 13 Aug 2026 20:14:10 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc284f9a67fc718de14ace1f763e6e990c5a78c969c476de818e7639b3e306e5`  
		Last Modified: Thu, 13 Aug 2026 20:12:00 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc61af99b00f1f1c606bd0bfcb7d1238ea1299313ac36c363bd4379357990a3b`  
		Last Modified: Thu, 13 Aug 2026 20:12:00 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fb9ab1a91a700a7e0d11f0fcc323ed71e34da29699dd258b38ee88ef18a07b`  
		Last Modified: Thu, 13 Aug 2026 20:12:00 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba9270d3be25bc0e29686d94681d2decdaac0ea1d9fbd69d5fa5b554a3d4cb`  
		Last Modified: Thu, 13 Aug 2026 20:12:00 GMT  
		Size: 81.0 KB (80991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cb8f305464d72a0c3a3bd3e4453f051febe8a9516a3e57a54783ccda53b8d5`  
		Last Modified: Thu, 13 Aug 2026 20:11:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9688112eb79b25d353eb730b9deeb0e9b92ffe1a14749da81703e57e16346e`  
		Last Modified: Thu, 13 Aug 2026 20:14:16 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56b5095f6033eeb2c4123b5011812c0c902345816a3517914687933de4f89b2`  
		Last Modified: Thu, 13 Aug 2026 20:14:26 GMT  
		Size: 69.3 MB (69254332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730c1409ab7a4e97e906d778f02e79db282ca283ed9a0eceae6dcb53e804e8e0`  
		Last Modified: Thu, 13 Aug 2026 20:14:16 GMT  
		Size: 83.4 KB (83428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a053ad5a02c9c57663f5e27e284eba1b08c0423384188f76c2f1c247411ca9b`  
		Last Modified: Thu, 13 Aug 2026 20:14:16 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
