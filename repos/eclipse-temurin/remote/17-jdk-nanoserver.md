## `eclipse-temurin:17-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:e4fef84c7ef3889b06f5f2061e99806c4f82fd489bd69fe197388070e0b07812
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:17-jdk-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:914a895c5b70e279823d6a18fd87d1bd973853a8747c1987a1270b978de89d81
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.1 MB (388092697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844f293bbc1425d351e26f58ccd20a8e9f74f49dc0a96e386782bc1e46ef499f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 03 Nov 2026 22:59:07 GMT
SHELL [cmd /s /c]
# Tue, 03 Nov 2026 22:59:08 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 22:59:10 GMT
ENV JAVA_HOME=C:\openjdk-17
# Tue, 03 Nov 2026 22:59:11 GMT
USER ContainerAdministrator
# Tue, 03 Nov 2026 22:59:26 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 03 Nov 2026 22:59:26 GMT
USER ContainerUser
# Tue, 03 Nov 2026 23:00:02 GMT
COPY dir:454c873c2ac823e809bb5e99689aa939a6d2ee1dafcb2242a1f75509c5b7fe77 in C:\openjdk-17 
# Tue, 03 Nov 2026 23:00:12 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 03 Nov 2026 23:00:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b70be79ed8d300229f0603c25bac12e955e43a0ea4f0a5ceb2033e2fc19a0b`  
		Last Modified: Tue, 03 Nov 2026 23:00:19 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ec2f2b4df9c68cab41d3935ed58cbe158089d653aaa3f36cbdd19cd72db042`  
		Last Modified: Tue, 03 Nov 2026 23:00:19 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15995ed5a0c41ef245a5f1735ed2c53d458be0e6df2861d2dc0438cf57cb2b97`  
		Last Modified: Tue, 03 Nov 2026 23:00:18 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b541e7222e606e94abb09919375591f015d3821c7031059729e28d58dd83b`  
		Last Modified: Tue, 03 Nov 2026 23:00:18 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30e2003dcaedc3886405a929a5332cd1398cc2c2f9a8693147caef68ebbec5c`  
		Last Modified: Tue, 03 Nov 2026 23:00:17 GMT  
		Size: 74.1 KB (74082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edae18224df18c2b6228b77ffdc354c673f25d1f302e4fc50b76d762fc1e01a`  
		Last Modified: Tue, 03 Nov 2026 23:00:16 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26768744a6d203228f8304c449fc4135c353b1def40f980951cdc7335e26c7ba`  
		Last Modified: Tue, 03 Nov 2026 23:00:27 GMT  
		Size: 188.0 MB (187950788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f832348c11a8830e6aaa3f3ac77b03cd1ef303b48a5dfb0e89d1768233ec883d`  
		Last Modified: Tue, 03 Nov 2026 23:00:16 GMT  
		Size: 102.5 KB (102481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab87576661b1f8022214d966545e7f12638bd754ba52db5c6a4a81d2f2f9465`  
		Last Modified: Tue, 03 Nov 2026 23:00:17 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:17-jdk-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:1cbdada69f3e51954757f9ccd6a3caa02a306884a3bc5b4d5bbc909e7607356d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.1 MB (314094685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def04b2850edf6d9d36c6a48664339db673e6d122ed38f32696752ab721995ca`
-	Default Command: `["jshell"]`
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
# Tue, 03 Nov 2026 23:10:20 GMT
COPY dir:454c873c2ac823e809bb5e99689aa939a6d2ee1dafcb2242a1f75509c5b7fe77 in C:\openjdk-17 
# Tue, 03 Nov 2026 23:10:31 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 03 Nov 2026 23:10:32 GMT
CMD ["jshell"]
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
	-	`sha256:25254fbb210017cf9f506ccd63a579eab34d43bd00aeaae747d39e6b63559c3a`  
		Last Modified: Tue, 03 Nov 2026 23:10:47 GMT  
		Size: 188.0 MB (187950896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a813c1201daef4e894b7a8c4b694f1677ca9f00cda370a71bc53140209375976`  
		Last Modified: Tue, 03 Nov 2026 23:10:37 GMT  
		Size: 123.9 KB (123941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5d99e7cf93639806eb99c8524c479002998589d8f72e56fa8ebdecff9273a0`  
		Last Modified: Tue, 03 Nov 2026 23:10:36 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
