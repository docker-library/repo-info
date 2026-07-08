## `golang:nanoserver`

```console
$ docker pull golang@sha256:c6084c5f40872f93fb0ebb151abb48bd4cb85c7bad0f3986e0015d5eefcabb80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.32995; amd64
	-	windows version 10.0.20348.5256; amd64

### `golang:nanoserver` - windows version 10.0.26100.32995; amd64

```console
$ docker pull golang@sha256:9942458276ca8d6d1928cad234c74cee57968de772e6e4446128d10b3b04d495
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266079009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df6b0502e565373539f35e0d42fd4738ed95a37d9322f1fa63d30501b16b3ec2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 07 Jun 2026 07:06:15 GMT
RUN Apply image 10.0.26100.32995
# Tue, 07 Jul 2026 23:14:25 GMT
SHELL [cmd /S /C]
# Tue, 07 Jul 2026 23:14:26 GMT
ENV GOPATH=C:\go
# Tue, 07 Jul 2026 23:14:27 GMT
USER ContainerAdministrator
# Tue, 07 Jul 2026 23:14:36 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Tue, 07 Jul 2026 23:14:36 GMT
USER ContainerUser
# Tue, 07 Jul 2026 23:14:37 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 23:16:59 GMT
COPY dir:06c6c601a7d74d009c8428c3fe8a3ad16d52c40758b67d935d7ec0353d91cca8 in C:\Program Files\Go 
# Tue, 07 Jul 2026 23:17:02 GMT
RUN go version
# Tue, 07 Jul 2026 23:17:03 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:64f5cd94d3bcd0fae94830b1fad0f8b3dc33677f8d7dc15c5219b56fe2a6584e`  
		Last Modified: Tue, 09 Jun 2026 22:11:30 GMT  
		Size: 196.7 MB (196668131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1233081c91a457903ff26a74ce50c215f762956a9a63d69074f2f0f4b045284`  
		Last Modified: Tue, 07 Jul 2026 23:17:19 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135bac33ad49acb79955c4bfb843eef80bd94e740b40089a26d2aa1d1c2647e3`  
		Last Modified: Tue, 07 Jul 2026 23:17:19 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878a84ab7116d376df146345e154b0850ef9a585ce2d142effe32978d7ecf26a`  
		Last Modified: Tue, 07 Jul 2026 23:17:19 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7959798925017f7af00d2cb01c815e8163e925fce25fa4d6f50c726fabe14ce1`  
		Last Modified: Tue, 07 Jul 2026 23:17:19 GMT  
		Size: 70.0 KB (70048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006182784b11f502dac123b6cfc9e666ae371ff11fb63706b04a40906c6ee426`  
		Last Modified: Tue, 07 Jul 2026 23:17:17 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03a57dc723852450a0ce28f251ed96400ce08d0a2b17d3cca0f8fe1d9a389ab`  
		Last Modified: Tue, 07 Jul 2026 23:17:18 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e88319ea16a841572b45a19db226587de6ae8788a9c63ba3ff2edc426047b5`  
		Last Modified: Tue, 07 Jul 2026 23:17:29 GMT  
		Size: 69.2 MB (69246767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf7342ec3f6c32d5fe917aef71f8821abbb253a9fc5a5beacebf58eb637d0f5`  
		Last Modified: Tue, 07 Jul 2026 23:17:17 GMT  
		Size: 87.6 KB (87646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d402277dc153c12ca3ae0a2df6fab55051e2c6384f6f57087dcf54b560b5a4`  
		Last Modified: Tue, 07 Jul 2026 23:17:17 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:nanoserver` - windows version 10.0.20348.5256; amd64

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
