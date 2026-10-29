## `eclipse-temurin:25-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:36c08a92bd9fbdf8b723b87164c0a728ce0400bc71e5b1551ca6f62d1871715c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:25-jdk-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:222a3d733c27fe9d9c6de4d004d5266900b2d9c066ddf54302cbaa259dc0377f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.3 MB (338285533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a17dd38144d1225a502fe80267b335c46aa5ffd9ff195abd33e152954aac0a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Thu, 29 Oct 2026 19:48:00 GMT
SHELL [cmd /s /c]
# Thu, 29 Oct 2026 19:49:12 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:49:13 GMT
ENV JAVA_HOME=C:\openjdk-25
# Thu, 29 Oct 2026 19:49:13 GMT
USER ContainerAdministrator
# Thu, 29 Oct 2026 19:49:15 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Thu, 29 Oct 2026 19:49:15 GMT
USER ContainerUser
# Thu, 29 Oct 2026 19:49:39 GMT
COPY dir:9c7b029cf2183851d3f474a2d1015eb9053ddae126bc2cf1988c88dca705e51e in C:\openjdk-25 
# Thu, 29 Oct 2026 19:49:43 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Thu, 29 Oct 2026 19:49:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f55cbde8526e68b072d7bf9a00b2dd32080c9a003d62b86321b38588661b2d`  
		Last Modified: Thu, 29 Oct 2026 19:48:39 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79115258110ad0f6add41f7b18c2cb4fd6c00729831a0f0f91103900e0126368`  
		Last Modified: Thu, 29 Oct 2026 19:49:50 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f6bf8ea3c711caff8608050ddfbd12134b5bb93da91ca385108a3c9257eae`  
		Last Modified: Thu, 29 Oct 2026 19:49:50 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6a1873a31ece2fe900ce5a6ff324a623417fbd90635442e4890670153ca293`  
		Last Modified: Thu, 29 Oct 2026 19:49:50 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ea0692f651b0ce89773835fe3b9a4137c9fe4b0e20d4800d34dff2eb6953cd`  
		Last Modified: Thu, 29 Oct 2026 19:49:48 GMT  
		Size: 71.8 KB (71796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22b4305bc7b37e203605c6858ff5853571e154f29de6affe85d17d47aef7129`  
		Last Modified: Thu, 29 Oct 2026 19:49:48 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56aadc4e588b6ca9ac6ed1849c9f28ec3c2cd838ba807b0c1bf6e49cefede03a`  
		Last Modified: Thu, 29 Oct 2026 19:49:59 GMT  
		Size: 138.2 MB (138155052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078025be1d484de57436360385a72c9823a2cf332f638d76d5aa026ba9b6ffbb`  
		Last Modified: Thu, 29 Oct 2026 19:49:48 GMT  
		Size: 93.3 KB (93281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a019a0d8c07540e794a7f063e8a3dcb112b87795524deccc9a2e76d09cb22305`  
		Last Modified: Thu, 29 Oct 2026 19:49:48 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:25-jdk-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:de0e8be4ab71756a602d7d9cd4f8b09c7b0a1335e6c715f27892f398e7210be0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.3 MB (264304903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:867b045106f5674a7543edb2a6791108f5c0e54d2b499d965c95f6ad509c96cc`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Thu, 29 Oct 2026 19:48:08 GMT
SHELL [cmd /s /c]
# Thu, 29 Oct 2026 19:48:08 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:48:09 GMT
ENV JAVA_HOME=C:\openjdk-25
# Thu, 29 Oct 2026 19:48:10 GMT
USER ContainerAdministrator
# Thu, 29 Oct 2026 19:48:24 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Thu, 29 Oct 2026 19:48:24 GMT
USER ContainerUser
# Thu, 29 Oct 2026 19:49:39 GMT
COPY dir:9c7b029cf2183851d3f474a2d1015eb9053ddae126bc2cf1988c88dca705e51e in C:\openjdk-25 
# Thu, 29 Oct 2026 19:49:45 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Thu, 29 Oct 2026 19:49:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded7c1ca70af0cc90c6f1ba33e3485d3a48fdcb8365d5c8c1b3ee818950ce4b1`  
		Last Modified: Thu, 29 Oct 2026 19:49:53 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069de233a233baab2d1deeb628e828945daa062a9d105d7ec8b3d34b0f731a9f`  
		Last Modified: Thu, 29 Oct 2026 19:49:53 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b97dd6b6c94d5d40fdb869bb33f2dd40a94573058f044922db673789d4e4b1e`  
		Last Modified: Thu, 29 Oct 2026 19:49:53 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66704c6861feb4f62cbbd450924fbfcb5a2e742701cf288f5f4ac8a8ed8f4770`  
		Last Modified: Thu, 29 Oct 2026 19:49:52 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a98be8bbfc372773ea59086b9174a7d2098b92d5a93186527d60eee3794f486`  
		Last Modified: Thu, 29 Oct 2026 19:49:51 GMT  
		Size: 88.0 KB (88016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e09bded020470493a99d07c4691edf350d97cb182943b6ae2d2c294738a096f`  
		Last Modified: Thu, 29 Oct 2026 19:49:51 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210c32437990c7de898f6d81f26538a73eb0ac896621d279068dfbab3641e311`  
		Last Modified: Thu, 29 Oct 2026 19:50:02 GMT  
		Size: 138.2 MB (138155103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a15fae0fb1df7058c8be0da864388fb7a883e28285bf63ec6dcea3f5a0ae3ee`  
		Last Modified: Thu, 29 Oct 2026 19:49:51 GMT  
		Size: 128.7 KB (128708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc5f25fb88b4e1108bd8c007bdbde8ae846d2e5b6697a3322dbb8c3ff5cf50d`  
		Last Modified: Thu, 29 Oct 2026 19:49:51 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
