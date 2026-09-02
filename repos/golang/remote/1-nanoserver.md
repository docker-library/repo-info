## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:c954c5fd61948d640445c94b086b67dea4fa4b8d00de8dde2adcea020cc1e2dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `golang:1-nanoserver` - windows version 10.0.26100.33296; amd64

```console
$ docker pull golang@sha256:1a56cee2dc7ca6271b197ea98f6dbec655c67b3c3fc6b8e160decb251bedd43e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270665352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee05654a6c165422f81fa88a241a58b9a68f5ec1d8d0ed3e2c9b8ddfff7288de`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 02 Sep 2026 02:13:47 GMT
SHELL [cmd /S /C]
# Wed, 02 Sep 2026 02:13:49 GMT
ENV GOPATH=C:\go
# Wed, 02 Sep 2026 02:13:50 GMT
USER ContainerAdministrator
# Wed, 02 Sep 2026 02:14:01 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Wed, 02 Sep 2026 02:14:01 GMT
USER ContainerUser
# Wed, 02 Sep 2026 02:14:02 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 02 Sep 2026 02:16:01 GMT
COPY dir:79b4b1cd5c648eb47ac0ae2a33ee9106253015a6513a3de9cab1144798e7e1e7 in C:\Program Files\Go 
# Wed, 02 Sep 2026 02:16:04 GMT
RUN go version
# Wed, 02 Sep 2026 02:16:05 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8450cb1f5beae5a5c4db9deb512a50bd896620d8f4dc70e4197d7dfeaf8dea`  
		Last Modified: Wed, 02 Sep 2026 02:16:14 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fb52259753cbfecda8db6f04f548568c3ecf37e888795bcccd56b05faa0b58`  
		Last Modified: Wed, 02 Sep 2026 02:16:14 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b39982678ad4f23c9189895aa9ff68f8ce6f6055d4025516633b5f23c0b421`  
		Last Modified: Wed, 02 Sep 2026 02:16:14 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f92866e1c14f34dd73800bf7c374bafe5732ff2da3c817daf1a610ad7da03a`  
		Last Modified: Wed, 02 Sep 2026 02:16:14 GMT  
		Size: 71.2 KB (71170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598ff3e3db37ad669fdd5bef0fca52bbb09318ab7a14c94d6973e867d2d54cfc`  
		Last Modified: Wed, 02 Sep 2026 02:16:12 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bc6f953a3ade6323ee7ee31211d0f31a8154702c9ab03ca964fc7348858d4a`  
		Last Modified: Wed, 02 Sep 2026 02:16:12 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36019a14a99fddff45bb68f4fbaa0bb73c71bbbe80378183612fdbb7e517d7d`  
		Last Modified: Wed, 02 Sep 2026 02:16:23 GMT  
		Size: 73.0 MB (73029151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9b77e8f1c7dfb3e6a7e73cb4dfbe33d002f81730735edc0831bb9bce6d48ec`  
		Last Modified: Wed, 02 Sep 2026 02:16:12 GMT  
		Size: 76.4 KB (76434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f64820f37a676def1cd25503cf42a31bbf43cb421628979a074b920bf9e91f`  
		Last Modified: Wed, 02 Sep 2026 02:16:12 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull golang@sha256:a48bce569200372a3fc647f8f6acaa278304b2185560d5d20484711f6b788d8e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.5 MB (197460202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f12e7c0c767cfe4991f593e19a0760543a67fefc02b7b1f3c32f7e2ccc95aac`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 02 Sep 2026 02:13:45 GMT
SHELL [cmd /S /C]
# Wed, 02 Sep 2026 02:13:47 GMT
ENV GOPATH=C:\go
# Wed, 02 Sep 2026 02:13:48 GMT
USER ContainerAdministrator
# Wed, 02 Sep 2026 02:14:03 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Wed, 02 Sep 2026 02:14:04 GMT
USER ContainerUser
# Wed, 02 Sep 2026 02:14:05 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 02 Sep 2026 02:16:46 GMT
COPY dir:79b4b1cd5c648eb47ac0ae2a33ee9106253015a6513a3de9cab1144798e7e1e7 in C:\Program Files\Go 
# Wed, 02 Sep 2026 02:16:48 GMT
RUN go version
# Wed, 02 Sep 2026 02:16:49 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b94352c48541daae0336a760e5d175c5af90dcb37cd5b2ffce7d297434b692`  
		Last Modified: Wed, 02 Sep 2026 02:17:02 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16107ea595295062a3036d710faba739597a5a8e463db89e700e225f0e5c0681`  
		Last Modified: Wed, 02 Sep 2026 02:17:02 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96937810e65b18757768cea2fda6d9964120abbb9f855cd9697d23e4e075e6f3`  
		Last Modified: Wed, 02 Sep 2026 02:17:02 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18564daf2020999a99cf833d1394d6cd99fe9bbac4d00271cfc7be1570e1b295`  
		Last Modified: Wed, 02 Sep 2026 02:17:02 GMT  
		Size: 83.8 KB (83826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244fcfaa5b4e4b60b4a8bd2f9d140ac89935aee0699621369cc12811a8c2e5ab`  
		Last Modified: Wed, 02 Sep 2026 02:17:01 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9247d6a5365d2b253fe5fdcdb84d87eacd26a4aecd3dd1c680c9682786fc10`  
		Last Modified: Wed, 02 Sep 2026 02:17:01 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043d4eb19d3819a0c72827d16536041f3eed7e06719a7a64148b96a904bb6e98`  
		Last Modified: Wed, 02 Sep 2026 02:17:12 GMT  
		Size: 73.0 MB (73029420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27888e476604522b6555b4b00d2f2e7e50b8cc73492e86c2d545df9ee6a16168`  
		Last Modified: Wed, 02 Sep 2026 02:17:01 GMT  
		Size: 82.5 KB (82460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dcda7f0e9db6f14912ae8afaaa757c527a51811df4a08dd67679ecc3d9406a`  
		Last Modified: Wed, 02 Sep 2026 02:17:01 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
