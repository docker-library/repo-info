## `eclipse-temurin:8-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:33a570f4eba19a9b7fd23f062df632091ef190fa279a6bf784fdaed454129acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:8-nanoserver` - windows version 10.0.26100.33296; amd64

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

### `eclipse-temurin:8-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:71f2a725015793f1b64fb2c94370363801660f542d477869f339cae80a458d14
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226368435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcaf64915397da52605af8c2b1009a534807269854242965b0930b429ef39d5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Fri, 21 Aug 2026 18:35:50 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:35:50 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:35:51 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 21 Aug 2026 18:35:51 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:35:57 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:35:58 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:36:27 GMT
COPY dir:0a490e4334c64d82455cb318fdd0eca19d90157486e844899949930d816ec5a5 in C:\openjdk-8 
# Fri, 21 Aug 2026 18:36:31 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff14bb1824ead7eb8fc6befddf2a2297b1fceefe4dc159243cd2fd538f2e7099`  
		Last Modified: Fri, 21 Aug 2026 18:36:37 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffce3bb5140aa4611d6a66bc7718c0ad2a42fe09e1b2631ce75d376f7ea8c186`  
		Last Modified: Fri, 21 Aug 2026 18:36:37 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda5ad206df374bdeb58ffb15b0aade536adc9d7b6eca83326698fec6968be67`  
		Last Modified: Fri, 21 Aug 2026 18:36:36 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1fc84d6b3d1e6e84c3fa8fcd9b7d21213e607cf883ab1c5c1d4dfe3da23819`  
		Last Modified: Fri, 21 Aug 2026 18:36:35 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372460468cc20ca5737e36d55e5d3ac3f936b2e49de171d89525b6d0ce27f8f8`  
		Last Modified: Fri, 21 Aug 2026 18:36:35 GMT  
		Size: 73.6 KB (73554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16ce6ad18ce094f10d6a2c37c814501b2e32702768cc56d3fcb9427dbb9408d`  
		Last Modified: Fri, 21 Aug 2026 18:36:35 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ddf91631fcf3b9eae6d06f267036500b2ac151fc7cb1969759b1292c7371ec`  
		Last Modified: Fri, 21 Aug 2026 18:36:41 GMT  
		Size: 101.9 MB (101912630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b822103cba6c675001c986b8f8b49f3fcfc4177b7441976aa46b0a6dda3ec1`  
		Last Modified: Fri, 21 Aug 2026 18:36:35 GMT  
		Size: 119.0 KB (118987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
