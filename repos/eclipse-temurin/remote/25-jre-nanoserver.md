## `eclipse-temurin:25-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:4733139288d2f192b53f5768e58a1bb594ce2f01cd117bd998104d49010dcaa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:25-jre-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:58c66c2a0b2a67dba5e98dd939140225e6b10e9ec894364562a04b0da7608609
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258779172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7330aa3b14627bd48cbd41767807a48105145caf2e97c1966db061886f84ea5d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:40:57 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:40:57 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 27 Oct 2026 18:40:58 GMT
ENV JAVA_HOME=C:\openjdk-25
# Tue, 27 Oct 2026 18:40:58 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:41:00 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:41:01 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:41:09 GMT
COPY dir:e6fb6e72dfa50a86a9603b5161e44fc0821c11b0c9bbfbf0f54596221e079f55 in C:\openjdk-25 
# Tue, 27 Oct 2026 18:41:13 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79aab455b542f662fc0a01a9185da4777ebb1576a0187dea48d048615d6dc626`  
		Last Modified: Tue, 27 Oct 2026 18:41:18 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54a0f969f2406d96401fefddc89b32340124694eabf2e7879d8b64e84213cf8`  
		Last Modified: Tue, 27 Oct 2026 18:41:18 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e176d4989ab0f42120892e94c77c2399663c9a64d22440c2e6be25fbfeb1c984`  
		Last Modified: Tue, 27 Oct 2026 18:41:18 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e16ce6292d1e1371cd9da9fc20a9c52d0b8af1330e6a90a148794178639231`  
		Last Modified: Tue, 27 Oct 2026 18:41:17 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e632f4c5a0c0f78a3815481c281756255b67ea261b09490ef39290fd66e3accc`  
		Last Modified: Tue, 27 Oct 2026 18:41:17 GMT  
		Size: 71.9 KB (71883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f56759f6763298f21a570bbb2eb2dfaa1cfefdb9f5bf15bc3308426cec73c90`  
		Last Modified: Tue, 27 Oct 2026 18:41:17 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd34b2bc23cb486b5dadf496adde8f9f1967fb7ae413e3b7a3af414f8d8b9f`  
		Last Modified: Tue, 27 Oct 2026 18:41:24 GMT  
		Size: 58.6 MB (58630078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6344254467c679f488def07b527e5d28b2f7ac3574ba9352efbbb2643c9d603`  
		Last Modified: Tue, 27 Oct 2026 18:41:17 GMT  
		Size: 112.9 KB (112899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:25-jre-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:479b9e01b0c496ac83c583edd7ca97a8209370417b523015812fb817e7237e7c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184729906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e411ba9cad78aaa88d4de2f94683ea24b3afc32f164581937d39ca8468188a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:34:08 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:35:09 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 27 Oct 2026 18:35:10 GMT
ENV JAVA_HOME=C:\openjdk-25
# Tue, 27 Oct 2026 18:35:10 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:35:12 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:35:12 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:35:16 GMT
COPY dir:e6fb6e72dfa50a86a9603b5161e44fc0821c11b0c9bbfbf0f54596221e079f55 in C:\openjdk-25 
# Tue, 27 Oct 2026 18:35:19 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bae645cc459facfc87580d9dfbfa68d8a08754feee6b5f557b9cc88338f847`  
		Last Modified: Tue, 27 Oct 2026 18:34:30 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50aaf6270917b1e1760504f85ced9a665c592eb92a9d90d23e65f4d60d010fa`  
		Last Modified: Tue, 27 Oct 2026 18:35:25 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ac4702499eeb54846cfc9834b0ca5d3952c7c3b7e9e205c326765d195e55e7`  
		Last Modified: Tue, 27 Oct 2026 18:35:24 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66ada04c1a8f7d57448e4ec285da439d888936e01374ce6cc4cb2c74c2b6d8b`  
		Last Modified: Tue, 27 Oct 2026 18:35:23 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9231aa110f3c772c0a9c37320853d59637924d71d2727acbbd18849e6b2b16`  
		Last Modified: Tue, 27 Oct 2026 18:35:23 GMT  
		Size: 77.4 KB (77439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f607b4e96c8ba471a3a4fbec0b2bd9b9ba2708dd4751bb879908bbbb31ceab`  
		Last Modified: Tue, 27 Oct 2026 18:35:23 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1564911b3bdb7781449175ea22886798f78047038449569fb6621b2e8276cf9f`  
		Last Modified: Tue, 27 Oct 2026 18:35:30 GMT  
		Size: 58.6 MB (58629582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc67331a74447de755d055b83b8c69019351b966b0781f5eee3fdb8acc8f2fd7`  
		Last Modified: Tue, 27 Oct 2026 18:35:23 GMT  
		Size: 90.9 KB (90886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
