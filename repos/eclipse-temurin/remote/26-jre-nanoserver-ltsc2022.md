## `eclipse-temurin:26-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:afd763830dcafa837e5f41a21ff1565bc082f15dba9d95cad24a9e182a5d034d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:26-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:14c0101a6c0cdd71ce02149d343568ef5aa5062e4b13d1222c36abef23f5c89a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186230781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f08d9b7f611fdee6d98085ea8645427ddababaaf62fcc9e9985894137ffd4f23`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:19:20 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:20:20 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 14 Oct 2026 00:20:20 GMT
ENV JAVA_HOME=C:\openjdk-26
# Wed, 14 Oct 2026 00:20:21 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:20:23 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:20:23 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:20:38 GMT
COPY dir:4fa11c2d1d3954c333627983ea16adf3126c426e2101995a1de119866b2233a8 in C:\openjdk-26 
# Wed, 14 Oct 2026 00:20:43 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492d011d39c3f8870675121404da30e1c686947fec06ae84ac86852e80e81d6`  
		Last Modified: Wed, 14 Oct 2026 00:19:52 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a09281f6ab2c246867467655af29134b6aa7a8e05da1ce84029d12dd5181a33`  
		Last Modified: Wed, 14 Oct 2026 00:20:49 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9206e774fa4d29b59322aeb7a5c604cb40d0c51df6bd14f1fda08d4d332487`  
		Last Modified: Wed, 14 Oct 2026 00:20:49 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a352b3195763aabdf3a757b7c325070e942121f49da589929ce19d24066da9`  
		Last Modified: Wed, 14 Oct 2026 00:20:47 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9faf3c5c554a27e0ec849578e42b324118909662d659e485153e5a4c42141f58`  
		Last Modified: Wed, 14 Oct 2026 00:20:47 GMT  
		Size: 77.7 KB (77703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e79f335f74242bd91bd644bd26ac242cc983bf23fd081186e9b56847247d0c4`  
		Last Modified: Wed, 14 Oct 2026 00:20:47 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a6b26cd6d822fc19c45af2bd6233d36b0529dca6919db027c5929c75eb2173`  
		Last Modified: Wed, 14 Oct 2026 00:20:54 GMT  
		Size: 60.2 MB (60244582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea9ea00dadb078ab69f4054abf835350e7cf3e4b333aa9dc99f131609ce4156`  
		Last Modified: Wed, 14 Oct 2026 00:20:47 GMT  
		Size: 107.2 KB (107199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
