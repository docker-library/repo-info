## `eclipse-temurin:11-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:7bb77cc8bcc40dfad46314f20a28965322ae2d885b1a1dfb220767b7e5046c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:11-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:38b5cc250021845b489b09ad156be9e0396cee6c95790c51e418f12e54586c49
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.8 MB (320755122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e65c33b58947222cf34492da901bafdc3abd3485911b8d1059d1785e9ea3ef`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Tue, 13 Oct 2026 23:37:21 GMT
SHELL [cmd /s /c]
# Tue, 13 Oct 2026 23:37:22 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 13 Oct 2026 23:37:22 GMT
ENV JAVA_HOME=C:\openjdk-11
# Tue, 13 Oct 2026 23:37:23 GMT
USER ContainerAdministrator
# Tue, 13 Oct 2026 23:37:25 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 13 Oct 2026 23:37:25 GMT
USER ContainerUser
# Tue, 13 Oct 2026 23:37:32 GMT
COPY dir:abb22bd7f66d415f872b9b6353d786e1d425603507d47df4b9ec16e5af73f3ec in C:\openjdk-11 
# Tue, 13 Oct 2026 23:37:36 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 13 Oct 2026 23:37:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b4eac869fdf8cc9d5be9babd67d051478ca6b9341ee41d0e6d16439f6d98aa`  
		Last Modified: Tue, 13 Oct 2026 23:37:42 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cdba827579e3bc95d58e7db9f6319446aa7014cb319bd233c57c29c92777b0f`  
		Last Modified: Tue, 13 Oct 2026 23:37:42 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37456e0b814ead1ec438a743b629fe08387277646d8644e0e1fa96565cc9d7f3`  
		Last Modified: Tue, 13 Oct 2026 23:37:42 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea7ebf37d4a860fb7e39f9a0a72c2929bd4fc88ed3d04fe77aa9f759504ff87`  
		Last Modified: Tue, 13 Oct 2026 23:37:41 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78e0d8fc0741093e42e8279b9df30e9e16cdaaec381c2a88e5b606834430ff9`  
		Last Modified: Tue, 13 Oct 2026 23:37:40 GMT  
		Size: 78.3 KB (78281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11303cb4ceb8bed66396b9b41c709c36a0cd756712138a5252f02263fce97bb8`  
		Last Modified: Tue, 13 Oct 2026 23:37:40 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498fdf7fe924876912202c6dabb0ddd075bf9077ea08452788974fd4b28151ce`  
		Last Modified: Tue, 13 Oct 2026 23:37:50 GMT  
		Size: 194.8 MB (194766249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1181bbd1bb181c5c55821874f792faffb9da39c0ce03f8ab46d1088a036081cb`  
		Last Modified: Tue, 13 Oct 2026 23:37:40 GMT  
		Size: 108.2 KB (108216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859ed23cb73c6cb4716e6c9ac922d5703fcfc7f0e8ba2cf6ff40c64a09f4dbe2`  
		Last Modified: Tue, 13 Oct 2026 23:37:40 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
