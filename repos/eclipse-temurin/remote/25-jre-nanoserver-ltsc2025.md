## `eclipse-temurin:25-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:1c3f471809e6af80f61139f01cad20ec1a62111560ef3d44607251035620fbe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:25-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:58c66c2a0b2a67dba5e98dd939140225e6b10e9ec894364562a04b0da7608609
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258779172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7330aa3b14627bd48cbd41767807a48105145caf2e97c1966db061886f84ea5d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:40:57 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:40:57 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 27 Oct 2026 18:40:58 GMT
ENV JAVA_HOME=C:\openjdk-25
# Tue, 27 Oct 2026 18:40:58 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:41:00 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:41:01 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:41:09 GMT
COPY dir:e6fb6e72dfa50a86a9603b5161e44fc0821c11b0c9bbfbf0f54596221e079f55 in C:\openjdk-25 
# Tue, 27 Oct 2026 18:41:13 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79aab455b542f662fc0a01a9185da4777ebb1576a0187dea48d048615d6dc626`  
		Last Modified: Tue, 27 Oct 2026 18:41:18 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54a0f969f2406d96401fefddc89b32340124694eabf2e7879d8b64e84213cf8`  
		Last Modified: Tue, 27 Oct 2026 18:41:18 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e176d4989ab0f42120892e94c77c2399663c9a64d22440c2e6be25fbfeb1c984`  
		Last Modified: Tue, 27 Oct 2026 18:41:18 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e16ce6292d1e1371cd9da9fc20a9c52d0b8af1330e6a90a148794178639231`  
		Last Modified: Tue, 27 Oct 2026 18:41:17 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e632f4c5a0c0f78a3815481c281756255b67ea261b09490ef39290fd66e3accc`  
		Last Modified: Tue, 27 Oct 2026 18:41:17 GMT  
		Size: 71.9 KB (71883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f56759f6763298f21a570bbb2eb2dfaa1cfefdb9f5bf15bc3308426cec73c90`  
		Last Modified: Tue, 27 Oct 2026 18:41:17 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd34b2bc23cb486b5dadf496adde8f9f1967fb7ae413e3b7a3af414f8d8b9f`  
		Last Modified: Tue, 27 Oct 2026 18:41:24 GMT  
		Size: 58.6 MB (58630078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6344254467c679f488def07b527e5d28b2f7ac3574ba9352efbbb2643c9d603`  
		Last Modified: Tue, 27 Oct 2026 18:41:17 GMT  
		Size: 112.9 KB (112899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
