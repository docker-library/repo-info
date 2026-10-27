## `golang:nanoserver`

```console
$ docker pull golang@sha256:2daf3964f4c886d8aa00c5784cfc0bcb72d6715e0ccd99603505712660e77f5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `golang:nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull golang@sha256:f18d2dd105072510f3561645921d906fd31b8e8b267dc59eb1c2f8fc77283e7e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273233114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cedabbfd6e0386c68efd07aa80f63dbaa9d7e933415cec0ce7f700e84dadee4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:42:03 GMT
SHELL [cmd /S /C]
# Tue, 27 Oct 2026 18:42:03 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 18:42:04 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:42:05 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Tue, 27 Oct 2026 18:42:06 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:42:06 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 18:43:26 GMT
COPY dir:d72405f8d4561a4e063b37128c6006d69b2ba5d7370a849f5d2ebba30f54149d in C:\Program Files\Go 
# Tue, 27 Oct 2026 18:43:28 GMT
RUN go version
# Tue, 27 Oct 2026 18:43:29 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3dab3ac245668f97e769104e3092dfe7e9b905f98aa89a772ce352131d7bf88`  
		Last Modified: Tue, 27 Oct 2026 18:43:34 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa064b5ccb54a0952b23ef6eb3238f820f9c697943d2d39010bd4bd1b68327`  
		Last Modified: Tue, 27 Oct 2026 18:43:34 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fced41a648d528439f4d8f0acc5ecaf067d3864f26ae39904eba30dd4957c51b`  
		Last Modified: Tue, 27 Oct 2026 18:43:34 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ec8b5003217401add6518e38d16e15f95a42a1d3ddb0802a2cd18086b894bb`  
		Last Modified: Tue, 27 Oct 2026 18:43:34 GMT  
		Size: 72.5 KB (72465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21aeca651417910ab7577d37da2f1f58f585cb2011996a1aaa868a0f3e04ae9c`  
		Last Modified: Tue, 27 Oct 2026 18:43:33 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b811b8049b0b02703df38a8fb6a8eedad4d34202a0f0be1a553432791c41d2ec`  
		Last Modified: Tue, 27 Oct 2026 18:43:33 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2435af86ce2d2e03eca8f80cf3d3eb5e3a676aa05f7c324e102fb62f38a72af7`  
		Last Modified: Tue, 27 Oct 2026 18:43:43 GMT  
		Size: 73.1 MB (73118367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f301fad5a62f88f7e871c293b0d4d18b98e29ca49ba5cfcd1a39727b07436a`  
		Last Modified: Tue, 27 Oct 2026 18:43:33 GMT  
		Size: 76.8 KB (76798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2165d34b286df45066c79ee5a7c8b37875b9beadc9bf5c754c3c491baf28eff4`  
		Last Modified: Tue, 27 Oct 2026 18:43:33 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull golang@sha256:28e0d992d1df25b0fbc63571e09930d3f4c4e88395f1ad2357e6336eec808b31
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199213246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55584044aa1658368bf6307f78df5a38181d385435887c562884d041e0bf9a26`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:36:20 GMT
SHELL [cmd /S /C]
# Tue, 27 Oct 2026 18:36:21 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 18:36:21 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:36:23 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Tue, 27 Oct 2026 18:36:23 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:36:24 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 18:37:25 GMT
COPY dir:d72405f8d4561a4e063b37128c6006d69b2ba5d7370a849f5d2ebba30f54149d in C:\Program Files\Go 
# Tue, 27 Oct 2026 18:37:28 GMT
RUN go version
# Tue, 27 Oct 2026 18:37:28 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b3267af8533a1caa488d0e5108be0378f01515d0c9bb5b008dab3a85fe86e9`  
		Last Modified: Tue, 27 Oct 2026 18:37:37 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b869a3e8e608ee4a7f0a6787fd5edc85ea3c374191746d177dac8b27a13cf74`  
		Last Modified: Tue, 27 Oct 2026 18:37:37 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adb7559a66c18358ed95aed0113aee9a79e41019899532acbaf0baf6965eccd`  
		Last Modified: Tue, 27 Oct 2026 18:37:37 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fda9961b0630150620c857e60d4e512264df3c881b1fefa2eec63de143cbfc7`  
		Last Modified: Tue, 27 Oct 2026 18:37:37 GMT  
		Size: 77.4 KB (77387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db89b1a78533c0f4552c83315c62c4d472ca9d4af84f0b7094549f211863713`  
		Last Modified: Tue, 27 Oct 2026 18:37:35 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d626f01f40f34d48d7d75bd74bf144b5c6ee9226f65e0e8a6971134eed57aed5`  
		Last Modified: Tue, 27 Oct 2026 18:37:35 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0397a93a86775e9b7c085047e26a779ba64c3232bb7dfba38656cd7886a08f`  
		Last Modified: Tue, 27 Oct 2026 18:37:46 GMT  
		Size: 73.1 MB (73115850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9054586d4d71ce27199b4241af2db131d8c0726379383dd8d7f1458c87f29af4`  
		Last Modified: Tue, 27 Oct 2026 18:37:35 GMT  
		Size: 86.8 KB (86787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b24176bd9315ff7510ef5f18bff9b360820314f3ed811b17ec69549deabe736`  
		Last Modified: Tue, 27 Oct 2026 18:37:35 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
