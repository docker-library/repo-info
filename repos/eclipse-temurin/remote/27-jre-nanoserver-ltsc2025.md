## `eclipse-temurin:27-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:4c5dfd9d46e4f7a290b636671285020a593999a754d312e72cc058aaab0d4217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:27-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:1dd28de0f772a4935850eecac3683c4f4cbe958ffcc49db507d2da1d1675fbba
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259462760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e47b1d4dc28139a50b56c9eb87940aec8342e2f42cab51fb61022fb00df9d68`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Mon, 09 Nov 2026 23:48:48 GMT
SHELL [cmd /s /c]
# Mon, 09 Nov 2026 23:55:50 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:55:50 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 09 Nov 2026 23:55:51 GMT
USER ContainerAdministrator
# Mon, 09 Nov 2026 23:55:52 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 09 Nov 2026 23:55:52 GMT
USER ContainerUser
# Mon, 09 Nov 2026 23:56:05 GMT
COPY dir:1d0776a6b2568151a4602a459dbb61f4638ffe7f56044e9eca31eeb2125da56f in C:\openjdk-27 
# Mon, 09 Nov 2026 23:56:07 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d907715dd9aa034d99f7982c280b1ad8eb432f572db73aeed605d64af47528db`  
		Last Modified: Mon, 09 Nov 2026 23:49:45 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043aa812a79184ed8666ac971cf09f032a2846338f498c42b7078f7b2c8adc9f`  
		Last Modified: Mon, 09 Nov 2026 23:56:13 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e98147f438d484725d1e90171b65bed95e88e15ee6332b1a1c02693c22c7a5`  
		Last Modified: Mon, 09 Nov 2026 23:56:13 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495569d89330659b5b45f466c8be9225e8245f37c9e6194607ee0a0b10bc646`  
		Last Modified: Mon, 09 Nov 2026 23:56:11 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98ab60e27f736290fe784e1c0794c3efdcf3423b35a4db6e59a9735e5812ecf`  
		Last Modified: Mon, 09 Nov 2026 23:56:11 GMT  
		Size: 72.2 KB (72190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b904e1d0fbcbea82fad8de3cc36d5ac07427c5978335f08d5995c4812cda2e`  
		Last Modified: Mon, 09 Nov 2026 23:56:11 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ead627a78c7f6d495408a5f419aefd1461a512abe3e363d292a3643140c4d4c`  
		Last Modified: Mon, 09 Nov 2026 23:56:18 GMT  
		Size: 59.3 MB (59321832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cb90261b7e921db06c27c7434c7c142e8b18d771e7aee1ea7dbe93e74192ca`  
		Last Modified: Mon, 09 Nov 2026 23:56:11 GMT  
		Size: 104.3 KB (104339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
