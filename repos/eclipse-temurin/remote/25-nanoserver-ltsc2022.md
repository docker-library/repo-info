## `eclipse-temurin:25-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:88508e6cc18650c41c13123486aea73b651533d7d3e1d1167d8e85b71ae23fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:25-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

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
