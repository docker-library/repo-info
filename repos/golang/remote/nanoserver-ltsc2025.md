## `golang:nanoserver-ltsc2025`

```console
$ docker pull golang@sha256:92e3dc4c456114c3469b8c6db9d7929b78324282709e597002859cb0fd1dfbe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `golang:nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull golang@sha256:5115dfb3b4ca9d1434378b8e01f1ca40b463d2af2818d1dc892fb460a3504674
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270923987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32127503e8d36a493368a11100c1bcb7306b1046b79c671e3e0ee15829083c0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Thu, 08 Oct 2026 18:00:40 GMT
SHELL [cmd /S /C]
# Thu, 08 Oct 2026 18:00:40 GMT
ENV GOPATH=C:\go
# Thu, 08 Oct 2026 18:00:40 GMT
USER ContainerAdministrator
# Thu, 08 Oct 2026 18:00:57 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Thu, 08 Oct 2026 18:00:57 GMT
USER ContainerUser
# Thu, 08 Oct 2026 18:00:57 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 18:04:52 GMT
COPY dir:771b75ec9ae87ed9ca4e37455b101cedb35120030ac8fba2cc7c11f77b616a99 in C:\Program Files\Go 
# Thu, 08 Oct 2026 18:04:54 GMT
RUN go version
# Thu, 08 Oct 2026 18:04:55 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e73dfbf21c8115af1724912573a19ae8ea139570121c2e9c99c69ebf8df1fb`  
		Last Modified: Thu, 08 Oct 2026 18:05:11 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655d2e7c4cd9a83202d44b09ad158fce054e5ca0ddec926c6e6e264acd302e8e`  
		Last Modified: Thu, 08 Oct 2026 18:05:10 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9370677f27cc3651d769adcd5b11a8cd4b4c0533aea819919c41d51ca3a9f95`  
		Last Modified: Thu, 08 Oct 2026 18:05:10 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b6779e9aebcd4fd990b4c0d0a837527e8d3417877ceab6d3872d2eec193003`  
		Last Modified: Thu, 08 Oct 2026 18:05:11 GMT  
		Size: 71.1 KB (71061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb36e12d66ac50aab3a05148cfb88854504a4ac7938ca3f76cb3194d04ebe938`  
		Last Modified: Thu, 08 Oct 2026 18:05:09 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffa4865a64b716c1236b4dca1949e6f48b816a0f307f5595f1c6bffc99534cb`  
		Last Modified: Thu, 08 Oct 2026 18:05:09 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a213f684f3b8c006e9775edfbe089e79e7d4b55bc8af32ae439c3b6754ea10e5`  
		Last Modified: Thu, 08 Oct 2026 18:05:20 GMT  
		Size: 73.1 MB (73117560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a905872e9a42d6c4d08473d09f2e5116a40b148b26a594e3367a2fd68a38b3`  
		Last Modified: Thu, 08 Oct 2026 18:05:09 GMT  
		Size: 78.4 KB (78382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9313124d9dd8d68818ca6bb5b639599ce6da0170b095ce3fa10b6cbb9bbab9`  
		Last Modified: Thu, 08 Oct 2026 18:05:09 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
