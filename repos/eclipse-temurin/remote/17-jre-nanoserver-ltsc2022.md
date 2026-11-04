## `eclipse-temurin:17-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:d6af1614376053cb372e345a313f637df3cd22c40b17293776bd69381c0c0234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:17-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:54684d7632a6c0eb0b2968c16700a70d90ff3819d93502e45cb7f2e57d350d9f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170068358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e506407bca42236583d4ecb34b862c8492be27c31a9155f81dbd24cbe62beb15`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 03 Nov 2026 23:07:48 GMT
SHELL [cmd /s /c]
# Tue, 03 Nov 2026 23:07:51 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 23:07:54 GMT
ENV JAVA_HOME=C:\openjdk-17
# Tue, 03 Nov 2026 23:07:56 GMT
USER ContainerAdministrator
# Tue, 03 Nov 2026 23:08:19 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 03 Nov 2026 23:08:21 GMT
USER ContainerUser
# Tue, 03 Nov 2026 23:12:04 GMT
COPY dir:fe16e239a1cfb8e15b42e2adfbd36810f92b5ff8a1df876112d880bf633c6974 in C:\openjdk-17 
# Tue, 03 Nov 2026 23:12:11 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4094c891f1b9893f35fc86bb9da74abd28537dbdc57f4b5052d015123c65ac`  
		Last Modified: Tue, 03 Nov 2026 23:10:38 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f775dae07d5d4f9bff1d34be1889d28a1aa95777fb5fe0527eb7f91912b1da1`  
		Last Modified: Tue, 03 Nov 2026 23:10:38 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfc45c10800a341b9395fa8426774088b27d361a318ccf7ee1dc4f773e4cf6e`  
		Last Modified: Tue, 03 Nov 2026 23:10:38 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9bd55bc0ef42dc69f0fa24ea6d49c5de7c1f9cb32fb84fc84f5886ba430899`  
		Last Modified: Tue, 03 Nov 2026 23:10:38 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4bed328a19219ada6358d91cb033e12cb033b2a675ec6c269521c777f7e6e5`  
		Last Modified: Tue, 03 Nov 2026 23:10:37 GMT  
		Size: 86.8 KB (86771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022bcd6d8b459327c4058a308418ad422d3f32b74f6177b9db4b205baccd7222`  
		Last Modified: Tue, 03 Nov 2026 23:10:36 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d5c1dd61f4e94e576a2e558e062e2e876f5110a6d1a6d3b16bcc60f0db39c5`  
		Last Modified: Tue, 03 Nov 2026 23:12:20 GMT  
		Size: 43.9 MB (43926084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2399bfec3cb8348a6f58ecbb9c1ab9a5b45c3d0f2327f38d3d3e1121b8e83a`  
		Last Modified: Tue, 03 Nov 2026 23:12:15 GMT  
		Size: 123.5 KB (123510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
