## `eclipse-temurin:25-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:5ac293d219c549ecb72c59e4e58cd15689157ba05b78e0e40ebabdf0f974688e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:25-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:20e82892a94effa9054200321cbb1ba2566dc55fecb13208d41a3df0fd977216
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259170023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b1f6c4810e6213ca1af417170602f39a1c642a90be8ec4e30b2becaf591a335`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:42:53 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:44:56 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Mon, 16 Nov 2026 20:44:56 GMT
ENV JAVA_HOME=C:\openjdk-25
# Mon, 16 Nov 2026 20:44:57 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:44:58 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:44:59 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:45:12 GMT
COPY dir:15a6112ae90293e4cdecb6b550af3ac2909637d63cef8f8a0f8f1e8fcf140aa2 in C:\openjdk-25 
# Mon, 16 Nov 2026 20:45:15 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ed4f799365a90927cc7f1122dbb44e2f5c8081d7721fc4d5f742c652a032a4`  
		Last Modified: Mon, 16 Nov 2026 20:43:27 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c744fe695d8ecff3b0ed4ba68fdf13034fff005c7a8950ee84a5cfefee3e8a2c`  
		Last Modified: Mon, 16 Nov 2026 20:45:21 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0c9de009c6d10d360a4aaa20ca4a2eedfc6c44507366af90742d5745d22307`  
		Last Modified: Mon, 16 Nov 2026 20:45:20 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796fdcfc93bc4958ca1026e2fdd9e1cc80f0a1f77b2d60ad78c84855041cb1f4`  
		Last Modified: Mon, 16 Nov 2026 20:45:19 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd877ea91b3a05f153408cc6daf530fbeb2c9c8641b93779ab32bc5a6b6aaf6`  
		Last Modified: Mon, 16 Nov 2026 20:45:19 GMT  
		Size: 72.1 KB (72128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4d4029387550fb1c4547f7c2fbc1fcc6c7858fefc8ade9dd50f738efb53098`  
		Last Modified: Mon, 16 Nov 2026 20:45:19 GMT  
		Size: 1.1 KB (1052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440feaf4412c86408ebb8428269fde058282014ecdc03017cc7af3e9cf744284`  
		Last Modified: Mon, 16 Nov 2026 20:45:26 GMT  
		Size: 58.7 MB (58738464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39d1df412342eddd22b8ab8fb2bb4c3794a109da797cbd58ee61733ead6696d`  
		Last Modified: Mon, 16 Nov 2026 20:45:19 GMT  
		Size: 114.4 KB (114356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
