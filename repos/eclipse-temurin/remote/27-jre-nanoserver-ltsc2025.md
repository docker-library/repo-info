## `eclipse-temurin:27-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:08ed9313f5c070367f9cd61a3642275956a62781c6284e8aa55586728d0d521b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:27-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:3328fc1b8660c36d949cb06587b97652c02b28035f43ebbd40d3d66d4565f53e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259747200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ceca0f580f76cacd5d9b483d9d5989ede3d895b7480af39755efd6558ec924d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:45:52 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:47:42 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 11 Nov 2026 22:47:42 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 11 Nov 2026 22:47:43 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:47:45 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:47:45 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:48:02 GMT
COPY dir:1d0776a6b2568151a4602a459dbb61f4638ffe7f56044e9eca31eeb2125da56f in C:\openjdk-27 
# Wed, 11 Nov 2026 22:48:05 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a15bf2f2e4766a96d23b53bbfb3974074b7fae9fcaab2fc124c81d3059ef86`  
		Last Modified: Wed, 11 Nov 2026 22:46:24 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2d548c3ad8eb41bd2c8bb242cdadd6f54e079059141732cadb152c5bc1595`  
		Last Modified: Wed, 11 Nov 2026 22:48:11 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c5c2d76c2e906b5baf62563409331a9c2a6ddbc45c69251ad4332ef7be47d6`  
		Last Modified: Wed, 11 Nov 2026 22:48:11 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb90b9712255a3809cd0d62636afb699ebea4be8b6f4067808759bc1a84208d5`  
		Last Modified: Wed, 11 Nov 2026 22:48:09 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f3916d77c2741ed3f499c4cb981e8cd9343150ada32622869e4a03daf2e534`  
		Last Modified: Wed, 11 Nov 2026 22:48:09 GMT  
		Size: 72.8 KB (72772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c62be638e6a6ca3bcb83ceedfd0b430f3ccb1ca53a93cb4cd0533e0ec51642`  
		Last Modified: Wed, 11 Nov 2026 22:48:09 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd864ee04e48c81eff451fb3f138da88c6d3c3f90b07572138d7c383f22d9103`  
		Last Modified: Wed, 11 Nov 2026 22:48:17 GMT  
		Size: 59.3 MB (59321881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b089ebdb53f760bee79779f04ff43d609c1cecde0a1f4c21e74bf3471dc0134`  
		Last Modified: Wed, 11 Nov 2026 22:48:09 GMT  
		Size: 105.0 KB (105045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
