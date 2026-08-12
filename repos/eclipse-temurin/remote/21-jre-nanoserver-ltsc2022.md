## `eclipse-temurin:21-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:99c459fc769e4ccf2e2d4c00731d4a49f6a2d38f201d67e333d085844c8590a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:21-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:6b9da60abbc49c4d95a1091d2e71fe3d727cf4812f409e54183204b4d8964c4a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.5 MB (173524159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eec097a30a6b1db7f34fd8350008dbb289aed2b0c7d453b53463833c4b0bb03`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 19:16:10 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 19:16:11 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 12 Aug 2026 19:16:12 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 12 Aug 2026 19:16:12 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 19:16:20 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 19:16:20 GMT
USER ContainerUser
# Wed, 12 Aug 2026 19:16:38 GMT
COPY dir:4940aac187beb0c950977243d0b1d703fc0231f7cabe77dd307cf1e9c831ffc7 in C:\openjdk-21 
# Wed, 12 Aug 2026 19:16:42 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd17bfa559ea99b7a6a06e63e77ea289c25ac3b7bead6d3782ef56bba393a910`  
		Last Modified: Wed, 12 Aug 2026 19:16:48 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f983cc57e2d3bc3becbd99bdc47a09bf419528a8ac386d924beee27f483d0e15`  
		Last Modified: Wed, 12 Aug 2026 19:16:48 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe28e6f10c7648e5de0be54914b043883f0e660cd3478b17b5fbd0967c0594d3`  
		Last Modified: Wed, 12 Aug 2026 19:16:48 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7624f9daae94cf3eb940d0919ba00527ac89617a5df9e48bae234caf68106134`  
		Last Modified: Wed, 12 Aug 2026 19:16:47 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7e02f0717071ff8734277ca29a2f5bf8e0b4d5071af972f6d3a582e49d28bb`  
		Last Modified: Wed, 12 Aug 2026 19:16:47 GMT  
		Size: 81.2 KB (81221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07877772e8bfea0585357a279db8ead163a25564be99dd2fb622f5143a491ca`  
		Last Modified: Wed, 12 Aug 2026 19:16:47 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28394b1717be6113b1bd4996a64528abc19187b23cca6843289ccd6e8f7ba282`  
		Last Modified: Wed, 12 Aug 2026 19:16:52 GMT  
		Size: 49.1 MB (49082865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2fa3c786555beb097321d83f7f291c188aa2f88365f43fafcc510caf5e51cba`  
		Last Modified: Wed, 12 Aug 2026 19:16:47 GMT  
		Size: 96.8 KB (96815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
