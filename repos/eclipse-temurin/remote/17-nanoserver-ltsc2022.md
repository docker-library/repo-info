## `eclipse-temurin:17-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:e5c149bb5ecc22945d84db7e497408984762a65bff1b6345a28f025464e1839e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:17-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

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
