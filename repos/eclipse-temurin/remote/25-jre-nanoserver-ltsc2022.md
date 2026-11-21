## `eclipse-temurin:25-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:9b7d422d99e906e19d09d80119c5afe7aecce8e41ac1bf454a98290af1d906e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:25-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:2903a232ae0e0d6a23fb5b7f38336cff093db0ed5e49969326171d2fe2c9e4ad
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185173740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19cc0d3977a4da9557919a7e941166c4b5799a8359a74b2b79617bc0b43d88c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Fri, 20 Nov 2026 18:10:23 GMT
SHELL [cmd /s /c]
# Fri, 20 Nov 2026 18:10:23 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 18:10:24 GMT
ENV JAVA_HOME=C:\openjdk-25
# Fri, 20 Nov 2026 18:10:25 GMT
USER ContainerAdministrator
# Fri, 20 Nov 2026 18:10:35 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 20 Nov 2026 18:10:35 GMT
USER ContainerUser
# Fri, 20 Nov 2026 18:11:22 GMT
COPY dir:a2dd945b0f9a944170524a68331b1523a88a4eded6b92e0ff90045e775cb8986 in C:\openjdk-25 
# Fri, 20 Nov 2026 18:11:26 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c5431eb06834fc08a77bda95382faed321bd61dd59376d87a14a6b8c9c40ac`  
		Last Modified: Fri, 20 Nov 2026 18:11:37 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cffa6849642df438616aec5f321a63c570e14d26363cb998c63156b3d77bd89`  
		Last Modified: Fri, 20 Nov 2026 18:11:37 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e5bb9c0e0731f95dca459e4b2d7aa256a2c14615275591100457263472a5f2`  
		Last Modified: Fri, 20 Nov 2026 18:11:37 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce75474ddc00e070bb1441784fc5d1b12f8bbabed5d5e4ff99cb556c54574acb`  
		Last Modified: Fri, 20 Nov 2026 18:11:35 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26bef64149b3c04f352dd8a5625609837319fe7884faceb068e835ffaa11cefa`  
		Last Modified: Fri, 20 Nov 2026 18:11:35 GMT  
		Size: 65.7 KB (65655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a437ecb37503bdb2b906ba22cbca200702ad6ab1b088a917d3d4d0bbef3034f`  
		Last Modified: Fri, 20 Nov 2026 18:11:35 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75fdbab611c42dc385127462534df3889b50c69c2fe23dd6a4c0e7a0e96b1ec0`  
		Last Modified: Fri, 20 Nov 2026 18:11:43 GMT  
		Size: 58.8 MB (58758617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a77901d552fbd374a0be098589055f06b30d5fa8cc0638c128180fc951f410a`  
		Last Modified: Fri, 20 Nov 2026 18:11:35 GMT  
		Size: 70.2 KB (70211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
