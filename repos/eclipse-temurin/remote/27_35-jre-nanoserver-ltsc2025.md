## `eclipse-temurin:27_35-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:4a229bc28b26d1ec11bb9f24d6ddcfb6cb51c8324f3860d60c3977e5d47ad882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:27_35-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:79af54be81a3322d02a1d1ffc6a42278b6737423a6b7092563651d568f63e99a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259434022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53eda8fd86b3905803490aaaebf625673babd89e8053de2b7222b1964a6e2d88`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:39:39 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:41:28 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 27 Oct 2026 18:41:28 GMT
ENV JAVA_HOME=C:\openjdk-27
# Tue, 27 Oct 2026 18:41:29 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:41:30 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:41:31 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:41:37 GMT
COPY dir:e51710ef99181d5e040206544472f4518593d33319e3c793d41826289f55616b in C:\openjdk-27 
# Tue, 27 Oct 2026 18:41:40 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8963d610e63deee725488348e78c02cfdfd2a0112f63f2b509428429733553b9`  
		Last Modified: Tue, 27 Oct 2026 18:40:10 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059ab43e5642bf24a32f2638fa894cb3b4bf23418c2714176bd5ebfb82926e79`  
		Last Modified: Tue, 27 Oct 2026 18:41:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985b5457f265163dbdbd267d23abee96bb3d2debcb566c97aacef4a592ef18d4`  
		Last Modified: Tue, 27 Oct 2026 18:41:46 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f39f442756554ab0d3fd82d43e35a72fc2eda2e296b730c2e2022b95fa8367`  
		Last Modified: Tue, 27 Oct 2026 18:41:44 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3a327e5dff4f6ddab5ebff9a35b71a994acc13a8224496ac53ec5fdf9e502a`  
		Last Modified: Tue, 27 Oct 2026 18:41:44 GMT  
		Size: 72.5 KB (72465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0dc9d2cf6b65660115dc798fc66cccadbec2feef65b5997b3633034071b4a`  
		Last Modified: Tue, 27 Oct 2026 18:41:44 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2aa30d851ce3bf23fa0d869d511aece77f0cf0b4d5da394631096eb75c57f01`  
		Last Modified: Tue, 27 Oct 2026 18:41:51 GMT  
		Size: 59.3 MB (59311437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70d65795de8716aaafa2fc44ed8f216e1ddaf8f7ee49749166d1183d64886b8`  
		Last Modified: Tue, 27 Oct 2026 18:41:44 GMT  
		Size: 85.8 KB (85819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
