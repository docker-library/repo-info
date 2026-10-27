## `eclipse-temurin:17-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:c9422e163d1a0cdb0d78f6156f42aee0f2e703de949a27d28f75de01fe646e84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:17-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:1410f871085ef738cb72f35bcd561d1a75400f5b4c5c0bb3b0514058044c9b1a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.8 MB (387782234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6516632ef8ec36997ca085710eb9f49159a10d1f6be4cfde26df0e2a6db0c9e2`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:39:59 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:40:00 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 27 Oct 2026 18:40:00 GMT
ENV JAVA_HOME=C:\openjdk-17
# Tue, 27 Oct 2026 18:40:01 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:40:07 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:40:08 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:40:24 GMT
COPY dir:3a5535544d6fb312c0f44eb2f3dd3631cac8c859fdbee30782f06557677f7659 in C:\openjdk-17 
# Tue, 27 Oct 2026 18:40:31 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 27 Oct 2026 18:40:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7702be13e35b2fc56f452d8d7fae43c0c04d24b928db13d65c4254da177bc580`  
		Last Modified: Tue, 27 Oct 2026 18:40:37 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cc71146ce03e97480208f8434659dac5b6bf6cb4da82a4488c10681c330ec3`  
		Last Modified: Tue, 27 Oct 2026 18:40:37 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60dadf5a7f0ae944d54659c0c95f6e1735cbd59c7dfbcc994e5b51511ffad37f`  
		Last Modified: Tue, 27 Oct 2026 18:40:37 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e434dcb079e7c4e5749fcb3b2b8bfb54fe81cdaae33f898f6ffb7522febab61`  
		Last Modified: Tue, 27 Oct 2026 18:40:37 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c07f9da9690b64360daab5fee87d8f3ae9ec98ceb6ad25d97fda77eb54fe6e9`  
		Last Modified: Tue, 27 Oct 2026 18:40:35 GMT  
		Size: 71.4 KB (71364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f752379627bfdde8538a6daad54fa45f6822e6a1e73f0ebd7d7c475f612f82fe`  
		Last Modified: Tue, 27 Oct 2026 18:40:35 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6ac2d9760313b712a4c0ecc3f74de45a472746503a3fad26707beded6c983c`  
		Last Modified: Tue, 27 Oct 2026 18:40:46 GMT  
		Size: 187.6 MB (187642351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0754f796c452a6a9c71effe05e7ed2aa6d6afaa01d35eda1754ebdacbc28cc5`  
		Last Modified: Tue, 27 Oct 2026 18:40:35 GMT  
		Size: 103.1 KB (103146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ca3409bc88aae686250511b5502d00106d4baf4b9334bf7e0ac01f4ec7d57a`  
		Last Modified: Tue, 27 Oct 2026 18:40:35 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
