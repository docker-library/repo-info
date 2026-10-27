## `eclipse-temurin:27-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:7075bc1fa158e4fe47198573622b165b1f4976730f0a9f6fa29607de42021ee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:27-jre-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:79af54be81a3322d02a1d1ffc6a42278b6737423a6b7092563651d568f63e99a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259434022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53eda8fd86b3905803490aaaebf625673babd89e8053de2b7222b1964a6e2d88`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:39:39 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:41:28 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 27 Oct 2026 18:41:28 GMT
ENV JAVA_HOME=C:\openjdk-27
# Tue, 27 Oct 2026 18:41:29 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:41:30 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:41:31 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:41:37 GMT
COPY dir:e51710ef99181d5e040206544472f4518593d33319e3c793d41826289f55616b in C:\openjdk-27 
# Tue, 27 Oct 2026 18:41:40 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8963d610e63deee725488348e78c02cfdfd2a0112f63f2b509428429733553b9`  
		Last Modified: Tue, 27 Oct 2026 18:40:10 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059ab43e5642bf24a32f2638fa894cb3b4bf23418c2714176bd5ebfb82926e79`  
		Last Modified: Tue, 27 Oct 2026 18:41:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985b5457f265163dbdbd267d23abee96bb3d2debcb566c97aacef4a592ef18d4`  
		Last Modified: Tue, 27 Oct 2026 18:41:46 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f39f442756554ab0d3fd82d43e35a72fc2eda2e296b730c2e2022b95fa8367`  
		Last Modified: Tue, 27 Oct 2026 18:41:44 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3a327e5dff4f6ddab5ebff9a35b71a994acc13a8224496ac53ec5fdf9e502a`  
		Last Modified: Tue, 27 Oct 2026 18:41:44 GMT  
		Size: 72.5 KB (72465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0dc9d2cf6b65660115dc798fc66cccadbec2feef65b5997b3633034071b4a`  
		Last Modified: Tue, 27 Oct 2026 18:41:44 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2aa30d851ce3bf23fa0d869d511aece77f0cf0b4d5da394631096eb75c57f01`  
		Last Modified: Tue, 27 Oct 2026 18:41:51 GMT  
		Size: 59.3 MB (59311437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70d65795de8716aaafa2fc44ed8f216e1ddaf8f7ee49749166d1183d64886b8`  
		Last Modified: Tue, 27 Oct 2026 18:41:44 GMT  
		Size: 85.8 KB (85819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:27-jre-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:2e828eef9d96dd775389bd89d2938c99206edc19b497c3f022fb5fc72a7ad4e8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185413031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49b230dbfbc3f5c215072030cbcdeca4a6e2a0466571adbdbea39a757ba2287`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:33:49 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:35:35 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 27 Oct 2026 18:35:35 GMT
ENV JAVA_HOME=C:\openjdk-27
# Tue, 27 Oct 2026 18:35:36 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:35:38 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:35:38 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:35:50 GMT
COPY dir:e51710ef99181d5e040206544472f4518593d33319e3c793d41826289f55616b in C:\openjdk-27 
# Tue, 27 Oct 2026 18:35:52 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3a3e4525716bca2ee833abf7d72b16a801efc516b95c500852a3bfd03c20ff`  
		Last Modified: Tue, 27 Oct 2026 18:34:07 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f2f2149f85597ee0c22a9ab7b8c20bba15288b0bfede64535ee3fc4dd68e58`  
		Last Modified: Tue, 27 Oct 2026 18:35:58 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a08d7dd7435d615853b48459f2acaf93f82dbfd33db0be796fbdbc320ac6407`  
		Last Modified: Tue, 27 Oct 2026 18:35:58 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c80f532c0d60171f5d9f843d158877d72292764cf7e9dd9402e04f1773d281`  
		Last Modified: Tue, 27 Oct 2026 18:35:56 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9357dd2c1ce2917d8c788f7a2bdb14adb2a35d635ef8602b7c2436ff5ca9c25`  
		Last Modified: Tue, 27 Oct 2026 18:35:56 GMT  
		Size: 79.0 KB (79045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24bbca74acb3f58f6dc1a52bb91f8b035c91ff3c620559b2148e49909bab1c5`  
		Last Modified: Tue, 27 Oct 2026 18:35:56 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc38fbfd8a4801ac48385281215ffc5d6e905bb4aab402621b8c5cc39066c21a`  
		Last Modified: Tue, 27 Oct 2026 18:36:04 GMT  
		Size: 59.3 MB (59311680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b47fc679ddc9695cfb411c88fc7a6673e555c3d6c2e4d74a611458e6abdbda4`  
		Last Modified: Tue, 27 Oct 2026 18:35:57 GMT  
		Size: 90.3 KB (90303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
