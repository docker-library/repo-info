## `eclipse-temurin:11-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:2c975f5d00c2661e75881a51b4db5ea9d43e617d5301eab0eaa348729c0ed6c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:11-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:fa32978c972b27ddf46ab04d34e5f45c6d07a66d89b924b9ec9508aa1e35c936
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.2 MB (170198773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0e3833417a1b2c2ec17d860ef799af780ceeca282156bfea1d8b064389e85b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 20:35:10 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:35:10 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 16 Nov 2026 20:35:10 GMT
ENV JAVA_HOME=C:\openjdk-11
# Mon, 16 Nov 2026 20:35:11 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:35:13 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:35:13 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:35:16 GMT
COPY dir:93737fc4001a1f9c02514d128bafe582bbc15be9632d55eacb345ae32db307ef in C:\openjdk-11 
# Mon, 16 Nov 2026 20:35:19 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88a8c91ebb97e636c84dcd5850343f896bc9efd93257bf0d12dceefe1c8c1ec`  
		Last Modified: Mon, 16 Nov 2026 20:35:25 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f54b8b6d701bd94fd150eeb6f73c30a099ad404db65f275a744457448ae148e`  
		Last Modified: Mon, 16 Nov 2026 20:35:25 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d62018a76a44748d15b952bbd6afadaadcd88002005ebb40780fc7bff8d30b`  
		Last Modified: Mon, 16 Nov 2026 20:35:25 GMT  
		Size: 1.0 KB (1027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a81d86233571df08a2d12e42b56b24cc9fd73ec5ce6faecb3f94bd1c00dfb0`  
		Last Modified: Mon, 16 Nov 2026 20:35:23 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c745dee0195d526bb2cd2fd67d44587e0e2d23da631f5b18c571536c19d64b1c`  
		Last Modified: Mon, 16 Nov 2026 20:35:23 GMT  
		Size: 88.3 KB (88292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03aecf97ffd0993899924588d4c45eccf132ce99892a437e0ec7bfa2f88fc352`  
		Last Modified: Mon, 16 Nov 2026 20:35:23 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d44fe071d35288d72617a2af5e044ab52a7bd239ace3cffb0065cd07f0fe03`  
		Last Modified: Mon, 16 Nov 2026 20:35:28 GMT  
		Size: 43.7 MB (43743291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344d7528a89496473a10707bc18c0660c4df0677a69debd8d63728551d424074`  
		Last Modified: Mon, 16 Nov 2026 20:35:23 GMT  
		Size: 88.0 KB (87977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
