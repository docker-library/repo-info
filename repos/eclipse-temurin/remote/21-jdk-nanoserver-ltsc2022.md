## `eclipse-temurin:21-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:20a8736e0d39a0894fb22ca1b8c12185e6d96804bec927e423b1b511f7709448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:21-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:52e2aac51d3a6559287d097fc6f98842e3860bcdf883e7f542353dea5352a68c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328711875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0030a9f2e562a8e502df3471734aff2cce101c210e79cc7852ddcc7ea05e0ec7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Fri, 20 Nov 2026 18:10:23 GMT
SHELL [cmd /s /c]
# Fri, 20 Nov 2026 18:23:58 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 18:23:59 GMT
ENV JAVA_HOME=C:\openjdk-21
# Fri, 20 Nov 2026 18:23:59 GMT
USER ContainerAdministrator
# Fri, 20 Nov 2026 18:24:02 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 20 Nov 2026 18:24:03 GMT
USER ContainerUser
# Fri, 20 Nov 2026 18:24:50 GMT
COPY dir:8d8c3d3e7104bf534f1d71b0f54aee8421122fdb6bdcc0228e5c60177d5ab117 in C:\openjdk-21 
# Fri, 20 Nov 2026 18:24:54 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 20 Nov 2026 18:24:54 GMT
CMD ["jshell"]
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
	-	`sha256:d1679262a33407ecad9c34a29372c509ec0017691b7251a9b8546acd7f11c6b8`  
		Last Modified: Fri, 20 Nov 2026 18:25:05 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120608405ad0e00ad41f7f2eca504d2323eb4c3b918440aef21608eea1595584`  
		Last Modified: Fri, 20 Nov 2026 18:25:05 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738c5ec4a093542548299a38ffff7d7312d288e77a8be9c120ba0f0d8625de73`  
		Last Modified: Fri, 20 Nov 2026 18:25:05 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960ed40547e449a36eebdae1cfd01d6c3725c0fd60062b7c44f53b6fa8f1c8c8`  
		Last Modified: Fri, 20 Nov 2026 18:25:03 GMT  
		Size: 82.5 KB (82493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15227d28875ff7d4d7f4f2358446564b8e9c3d21ea0b05e7d05017dc3b281db7`  
		Last Modified: Fri, 20 Nov 2026 18:25:03 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753a2171646f8fa08c0308b76736ebf95d1054d5219a21e52d229cb5702d7f04`  
		Last Modified: Fri, 20 Nov 2026 18:25:15 GMT  
		Size: 202.2 MB (202249212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da60215a2b99513c8d5d9c946b3d0a6b8df27276859ba3e6c6453e88fd1cc543`  
		Last Modified: Fri, 20 Nov 2026 18:25:03 GMT  
		Size: 99.9 KB (99863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab3dfc9b2785103a33ee0ff12f0181f9918116bb4e2eb086861f97bff87a0f6`  
		Last Modified: Fri, 20 Nov 2026 18:25:03 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
