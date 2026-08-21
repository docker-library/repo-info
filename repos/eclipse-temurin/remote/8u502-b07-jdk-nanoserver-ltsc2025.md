## `eclipse-temurin:8u502-b07-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:168a72c7e0dfa06c8686c0efbe0063592356fb7066892850ab8361e1a25abab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:8u502-b07-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:91d284423dcdc14087147767243aa4388b557e7c04ed986434ee807c671bd448
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 MB (299600031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58069626e87328f8ac6046ef1ef08fb9eecdca29f52361d00772ff04d8df035b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Fri, 21 Aug 2026 18:35:47 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:35:48 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:35:48 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 21 Aug 2026 18:35:49 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:35:54 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:35:55 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:36:15 GMT
COPY dir:0a490e4334c64d82455cb318fdd0eca19d90157486e844899949930d816ec5a5 in C:\openjdk-8 
# Fri, 21 Aug 2026 18:36:21 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efe342689926a72cbad792df8e8a890b8447d145c08c2461f352c722d85281d`  
		Last Modified: Fri, 21 Aug 2026 18:36:27 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a70cfb8b4eb53cb0d1fb75b8f8970156c837cea9850670dfcf7bd60605b183`  
		Last Modified: Fri, 21 Aug 2026 18:36:27 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b6098f83aa9c29b9a7035f50c5b3ad515ff20442b9d887730b6aea9509ddad`  
		Last Modified: Fri, 21 Aug 2026 18:36:27 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09b58a64d324ce5f6c7718ed40a15ced21b3c3e7b614ed8fbbfc6cdbef73895`  
		Last Modified: Fri, 21 Aug 2026 18:36:25 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c9194767f73729e7aa4391c76c0b1aba09a59a94b4e8a0ca8c9535c6e6f279`  
		Last Modified: Fri, 21 Aug 2026 18:36:25 GMT  
		Size: 71.8 KB (71756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e096f2bc63d1c55f7c0e9f11901ea33e161e971649eeddef47d84acd470d8b`  
		Last Modified: Fri, 21 Aug 2026 18:36:25 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdec791f625fb7b89b990b48a0c359bef426b51243d43f28f5a9c6664bd2a1b`  
		Last Modified: Fri, 21 Aug 2026 18:36:32 GMT  
		Size: 101.9 MB (101912806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b854501dbc3fd0a1e3df450c7c048233b14f188afd5411f4ce4c4c04a515bc75`  
		Last Modified: Fri, 21 Aug 2026 18:36:25 GMT  
		Size: 128.2 KB (128157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
