## `golang:nanoserver-ltsc2025`

```console
$ docker pull golang@sha256:d10e37366e4011e21ce858b977ee73503f7dc7bf17525d8b6647f95331719f7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `golang:nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

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
