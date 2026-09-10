## `eclipse-temurin:26-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:0f5a14976497501b67be8102467b9b6b043a9cabc6a05110d6fd1cd68afe4472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:26-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:31756386d88613ddb145dd975a4976a61ca457609a019cb7bb8655b6162db3cd
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266147329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25de2d66a7637d93235984f9bdf048b99a7789e2cbb320e71aa9b4c6c3eb40fa`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:21:05 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:22:37 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 23:22:38 GMT
ENV JAVA_HOME=C:\openjdk-26
# Wed, 09 Sep 2026 23:22:38 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:22:39 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:22:40 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:23:03 GMT
COPY dir:41be7f046b6b23393a5a8f45ec96dd32a1839da8d4fa6cfdff0b408563d7d9a9 in C:\openjdk-26 
# Wed, 09 Sep 2026 23:23:08 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 09 Sep 2026 23:23:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b2874531c88df1f3a842e90d4915d11093a8baeeb3b7d31d5b1b16aa9c7bbf`  
		Last Modified: Wed, 09 Sep 2026 23:21:27 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278ed8373ed9994a7fe75e3a931a46c790cb6da0ca30811ea3d5c934970ef440`  
		Last Modified: Wed, 09 Sep 2026 23:23:14 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80514a307a31d109e6884ac2e821812b2cee3cc12f8b2f6b0bc19d27489bad02`  
		Last Modified: Wed, 09 Sep 2026 23:23:14 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a19473a0af9d391908e4e4fa222f6dbf4348bf038e7a43ec4895a904b8d1e`  
		Last Modified: Wed, 09 Sep 2026 23:23:14 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1510ae58efb45fbddd13777f892763e7992086579c5cc5337f15a74f718bac77`  
		Last Modified: Wed, 09 Sep 2026 23:23:12 GMT  
		Size: 78.8 KB (78763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fabe76d8fde7b23fa61aab0605568901d5661a692a9821dfb409711f40eb187`  
		Last Modified: Wed, 09 Sep 2026 23:23:12 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d4157579f7c08442c1d3f7baddccdca7cb894108b1b756c3ad782e485a1bc6`  
		Last Modified: Wed, 09 Sep 2026 23:23:23 GMT  
		Size: 141.3 MB (141317505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80892979799013c800287f01a8d5da13b73f771775a899392ef6b747c797a0d`  
		Last Modified: Wed, 09 Sep 2026 23:23:12 GMT  
		Size: 107.3 KB (107267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ffcc72b1bd30d3163fd3230466de65e51706532916ef75f5ebe675e1ad222`  
		Last Modified: Wed, 09 Sep 2026 23:23:12 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
