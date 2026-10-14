## `eclipse-temurin:11-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:270957e5cad1b586f91640f331b8e189c396a7383de2a6b205f772b17b2383c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `eclipse-temurin:11-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:48af076aa3e43bd170c9dcf47917cf3a9d4531e964283c1c9e775ed927738707
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243772677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b877e9e59b649537bd4d928ce1cf9a315c4c30c5046d60413924895816dbb0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Wed, 14 Oct 2026 00:18:20 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:18:21 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Wed, 14 Oct 2026 00:18:22 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 14 Oct 2026 00:18:22 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:18:29 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:18:29 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:18:37 GMT
COPY dir:932951a7f9cc979d426261013a8e7d4b19921ca73270e018152705df3374f84b in C:\openjdk-11 
# Wed, 14 Oct 2026 00:18:41 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5857be0163ceb5a0be4c1dca20aa11b9fab8656bd9f07851b90c6fe2105ecff7`  
		Last Modified: Wed, 14 Oct 2026 00:18:47 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78d07921e57d97acf42ff0dc46071ec9e903ac64afbe6744a7eeddee10d35a8`  
		Last Modified: Wed, 14 Oct 2026 00:18:47 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e176180cbdd46aa7e39eeac55faacb22a13c60288cf2e64232a20b60a26af7`  
		Last Modified: Wed, 14 Oct 2026 00:18:47 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d71a76ae1181c5149c4e1c3c8233b297e4a090fd0f280584f44953f8f31229`  
		Last Modified: Wed, 14 Oct 2026 00:18:46 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7680e307f4cb9c5f1388a79e64d83647b84a4659230dd0bb172172f912844fec`  
		Last Modified: Wed, 14 Oct 2026 00:18:46 GMT  
		Size: 71.5 KB (71484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719c00b8f4624ae03536e9f59a8b3ee1c71930d05d3a8e075da139f9144d6b52`  
		Last Modified: Wed, 14 Oct 2026 00:18:46 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde1bf5b203d2f633927faed0781f8da3ddddf807c2ad9a3fafbd76a1aae3491`  
		Last Modified: Wed, 14 Oct 2026 00:18:51 GMT  
		Size: 43.7 MB (43721480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d5c8776730974a10210fe72be2c08ea163f9ce8bf5ead4968f4bb0687f127`  
		Last Modified: Wed, 14 Oct 2026 00:18:46 GMT  
		Size: 103.3 KB (103348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
