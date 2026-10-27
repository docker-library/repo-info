## `golang:nanoserver-ltsc2022`

```console
$ docker pull golang@sha256:50585b1a0a9067e9fc24350cfbb90858315694ab4fcac1fd1e9e47de7934a4f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `golang:nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

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
