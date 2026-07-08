## `golang:1-nanoserver-ltsc2022`

```console
$ docker pull golang@sha256:44df6bd5c03d5d25410722d631e552c68e6ee3ee8b7d3e619d648e625109b4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5256; amd64

### `golang:1-nanoserver-ltsc2022` - windows version 10.0.20348.5256; amd64

```console
$ docker pull golang@sha256:c02ef356c584a4a2e38eab83db82b4bded994a02b178bb4e3e05ce9166a96765
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193392742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b635f122178d511376516f6a2ccbd331e8ba8f623bce2477efad99e2cd39b83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 07 Jun 2026 06:26:15 GMT
RUN Apply image 10.0.20348.5256
# Tue, 07 Jul 2026 23:17:16 GMT
SHELL [cmd /S /C]
# Tue, 07 Jul 2026 23:17:18 GMT
ENV GOPATH=C:\go
# Tue, 07 Jul 2026 23:17:18 GMT
USER ContainerAdministrator
# Tue, 07 Jul 2026 23:17:32 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Tue, 07 Jul 2026 23:17:32 GMT
USER ContainerUser
# Tue, 07 Jul 2026 23:17:33 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 23:19:36 GMT
COPY dir:06c6c601a7d74d009c8428c3fe8a3ad16d52c40758b67d935d7ec0353d91cca8 in C:\Program Files\Go 
# Tue, 07 Jul 2026 23:19:40 GMT
RUN go version
# Tue, 07 Jul 2026 23:19:41 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:8fc8662767a8f63038f8f45ce82f52438fd89b4444ed43648c9e6a7f06330686`  
		Last Modified: Tue, 09 Jun 2026 17:48:06 GMT  
		Size: 124.0 MB (123997505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07baee5459a6cfad63ae06a5aa48abf4a9cc8a21545c9e981bd5953b6c514ad7`  
		Last Modified: Tue, 07 Jul 2026 23:19:47 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8630bad5a8d3f9fb3b6d23e62230eb0b64509e5861f23752a2d570df817e19aa`  
		Last Modified: Tue, 07 Jul 2026 23:19:47 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3b99c76ec4892ba4bd7e477110dd25cff91e2b2d3b330c15982578cba97718`  
		Last Modified: Tue, 07 Jul 2026 23:19:47 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0657bb6fe67aa4b50eb685d5bace434f5c4fd5c99c419760b1792b5d8ff139`  
		Last Modified: Tue, 07 Jul 2026 23:19:47 GMT  
		Size: 71.1 KB (71090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1654fbc5807dc4b7fd1a1db813837937dc2f23505844270e134b0c327904f19`  
		Last Modified: Tue, 07 Jul 2026 23:19:45 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5950ca40ded25962d22fa3aeb66517de4e619d78e7bd295a0822442859c66e59`  
		Last Modified: Tue, 07 Jul 2026 23:19:45 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bf7d09c695574232acb6ffa95a9c1bb267f73243cd3047bf2bfd250f82ba3d`  
		Last Modified: Tue, 07 Jul 2026 23:19:56 GMT  
		Size: 69.2 MB (69241854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ae70b8f7121e668d4a5eac19a7f767e8962ad3c25ba42af43d636df96288ef`  
		Last Modified: Tue, 07 Jul 2026 23:19:45 GMT  
		Size: 75.7 KB (75714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f856b1e6d62ff4d12f807371781b249aae5b0281dc2a873d3abbe40ce74f81`  
		Last Modified: Tue, 07 Jul 2026 23:19:45 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
