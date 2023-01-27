## `eclipse-temurin:17-jdk-nanoserver-1809`

```console
$ docker pull eclipse-temurin@sha256:76458da39dc0709e513ef7a699de88464b35405991ebceb15e7929e56d409df9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `eclipse-temurin:17-jdk-nanoserver-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull eclipse-temurin@sha256:c3f1b323aa7b5c1bd16eaa30838225672bdc8684f7be6092ff74313fe6221bf3
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295852718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc75f6a3a0c010e4ca67f69c9c87380694ab4e320df030fdc18a3bd9614f6de`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:45:31 GMT
SHELL [cmd /s /c]
# Tue, 24 Jan 2023 18:29:45 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 18:29:46 GMT
ENV JAVA_HOME=C:\openjdk-17
# Tue, 24 Jan 2023 18:29:46 GMT
USER ContainerAdministrator
# Tue, 24 Jan 2023 18:29:57 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 24 Jan 2023 18:29:58 GMT
USER ContainerUser
# Tue, 24 Jan 2023 18:30:14 GMT
COPY dir:b9d1887161cde3cc24ae2101d8a284bfc20814b15fed427bc1c905c1248fb0bf in C:\openjdk-17 
# Tue, 24 Jan 2023 18:30:46 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 24 Jan 2023 18:30:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea67a6bd980bdee35399883e5abcc31c738b338ad384b2f92d91a15cf09d9df`  
		Last Modified: Thu, 12 Jan 2023 02:40:16 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998c9e2cb093caeb0607abf9b9de72ed4ef6564255a70887a16d3f7eb6f03b4a`  
		Last Modified: Tue, 24 Jan 2023 21:27:26 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590513e126a10ba2742725bb14efbe3e9a79bbcc795ca88017bdff264f4869ff`  
		Last Modified: Tue, 24 Jan 2023 21:27:26 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9637023f8f79eda1d4ff5a0686321506ba62e1a054f1db727eceff066bc515`  
		Last Modified: Tue, 24 Jan 2023 21:27:26 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb6570dac232e6ab563c36d3e3060e8d0ad9244107002a26a1fca9ece22b1c4`  
		Last Modified: Tue, 24 Jan 2023 21:27:24 GMT  
		Size: 71.7 KB (71661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cdada2ee0d288d7c26bda6ceffc41c94c1b0f242cf1bc0ee7e020b7cd6949a`  
		Last Modified: Tue, 24 Jan 2023 21:27:24 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6651d18f29dd9e67ad741aeecfbd48749a1e9f3b092c52199f42585539e2e8`  
		Last Modified: Tue, 24 Jan 2023 21:27:46 GMT  
		Size: 185.5 MB (185475200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d380f4b3ef2aa79d2e27fbc946f05ed853ce49e68635f7401d36d016887f2bc`  
		Last Modified: Tue, 24 Jan 2023 21:27:25 GMT  
		Size: 3.6 MB (3632805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5e000b3f58ffd2b8e15d029cc53e33379fe3bc01a5ad66e7a50c398ca5ab8a`  
		Last Modified: Tue, 24 Jan 2023 21:27:24 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
