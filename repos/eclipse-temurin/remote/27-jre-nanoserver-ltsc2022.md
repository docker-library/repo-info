## `eclipse-temurin:27-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:5105f861fa1235282f396bcee2d342bccadfdb09a3e53df4ee4a90394304dc11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:27-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:ebfcac0a67b5ab18d24e07137c733cb980dec4e687b2cf0162371d2f032badef
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185770992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51512b1b10f7fcbf585b3e0b2b650069483be00b1a6b70f392652a81ac72c596`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 20:35:26 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:36:23 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 16 Nov 2026 20:36:23 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 16 Nov 2026 20:36:24 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:36:25 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:36:26 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:36:30 GMT
COPY dir:1d0776a6b2568151a4602a459dbb61f4638ffe7f56044e9eca31eeb2125da56f in C:\openjdk-27 
# Mon, 16 Nov 2026 20:36:32 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d164ab750f19897000bf4189cf342a4830b9f0b486d29d7bb17a1a42d4a8bfc`  
		Last Modified: Mon, 16 Nov 2026 20:35:49 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f213ad92cc68b85432c124277456c6c3a55d3ee5843a8d868ef71c4d02f566`  
		Last Modified: Mon, 16 Nov 2026 20:36:38 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356d8634b87ee15b726e4f2c690678af2a7f6995162f932e4508406bc079a689`  
		Last Modified: Mon, 16 Nov 2026 20:36:38 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47cb09fbc3ff4ba4f0a40be3a48e5c886654d703ba9ee798522b67349e8c0e9`  
		Last Modified: Mon, 16 Nov 2026 20:36:36 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a213eb4fd96a1105b619518209abb23c36eda54f8bf31189d119374bb3097a`  
		Last Modified: Mon, 16 Nov 2026 20:36:37 GMT  
		Size: 78.9 KB (78931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8e336e2e7776739d26bb7e472e15b2cd9ada14150156e595c7a23f2f992316`  
		Last Modified: Mon, 16 Nov 2026 20:36:36 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00e4bee9e43dea8637fc85abf57df9f2491411e7b8d74fb8210209b60e32b88`  
		Last Modified: Mon, 16 Nov 2026 20:36:44 GMT  
		Size: 59.3 MB (59321895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93606e115b37baa22c32942f2d4149c77a51aee09d5744c1337f4542efac010e`  
		Last Modified: Mon, 16 Nov 2026 20:36:37 GMT  
		Size: 90.9 KB (90923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
