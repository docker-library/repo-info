## `eclipse-temurin:8-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:d434389b5a6d9b4af3e3c1e4e18666c1289511a33d71e9ff32e4b41b1b35e0d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:8-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:01f755477f9822f9e059b8e7c29a5579b1986e8c250c8c5a33f4068a037ffa92
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166084121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dabbcf72a59d06fe020fe032b628feb03e782487aadc85d1aa190185f69bab89`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:33:48 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:33:48 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 27 Oct 2026 18:33:49 GMT
ENV JAVA_HOME=C:\openjdk-8
# Tue, 27 Oct 2026 18:33:49 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:33:53 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:33:54 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:33:56 GMT
COPY dir:4c224d29a15b9aa56e23d2c02151956e155dad58f1ab34146433be40e9a5d364 in C:\openjdk-8 
# Tue, 27 Oct 2026 18:33:59 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb37bd91727a9a2ea13e79ebf86b464297e4edfb0c8e4fb3a09fe9ab893db69`  
		Last Modified: Tue, 27 Oct 2026 18:34:04 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2811484135f767555b7612b641ba70df26f46ec6f0672287039d88a700ae628`  
		Last Modified: Tue, 27 Oct 2026 18:34:04 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:290e8f7ec8af4b5842abaf7106bca1c3b8eca851df93bc79755538f3a20cdb32`  
		Last Modified: Tue, 27 Oct 2026 18:34:04 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16f9f1b203dcb00aa6372aec273b74124d09fefc58d36c24710f4ca54ba664c`  
		Last Modified: Tue, 27 Oct 2026 18:34:03 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50998d1eeab38fc99debbdb04bdf534d1cb9bd4a3038ea048494c62f7c9013e`  
		Last Modified: Tue, 27 Oct 2026 18:34:03 GMT  
		Size: 85.0 KB (84955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be90e8740ab0b337fbb622274c4a5e54a47661b23f1df5798972f5c8e67318ef`  
		Last Modified: Tue, 27 Oct 2026 18:34:03 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b66e944c41cf727121c94b6bc920c37dac314bd024c0b4c9c5aee45e118205`  
		Last Modified: Tue, 27 Oct 2026 18:34:06 GMT  
		Size: 40.0 MB (39979678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40a3a1c52fa8c81ad12383f31d6913f990ddf67b40641abd03675e004e9bde2`  
		Last Modified: Tue, 27 Oct 2026 18:34:03 GMT  
		Size: 87.5 KB (87511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
