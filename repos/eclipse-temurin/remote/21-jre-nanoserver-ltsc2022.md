## `eclipse-temurin:21-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:203554f14a327e47224ae55b25fc7f93f00ad9d60303500ba3244c119c7200da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:21-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:86cec8c6f3e2f57027b72dd4c6bd58ff78419b859f40d90184522e4393f3c88a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175643765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b424b008e3d8a67f6af1064092a93bd9a6056a755fcce7996548c8fd8990e8e4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 20:35:02 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:35:45 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Mon, 16 Nov 2026 20:35:45 GMT
ENV JAVA_HOME=C:\openjdk-21
# Mon, 16 Nov 2026 20:35:46 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:35:47 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:35:48 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:35:51 GMT
COPY dir:0a790f654228b0909cb063fcccd1cf031298e492a3665cc86d7fcfc2d95ab288 in C:\openjdk-21 
# Mon, 16 Nov 2026 20:35:55 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d54da00f6a852c7a44949eb04512c7ab6e1d15a15c07634da08148947e6045f`  
		Last Modified: Mon, 16 Nov 2026 20:35:19 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad68e7778e97aad32b93b01403fdc34bdf364080f40f686eb5286712c61fc6c8`  
		Last Modified: Mon, 16 Nov 2026 20:36:00 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f490b692988719aa01c472ef4d22cb6c079fa1f7f161cda465e72cca906ee6b7`  
		Last Modified: Mon, 16 Nov 2026 20:36:00 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a03ba8aec4d75485471af3d557771f1992249ecb5b33f092697e060f2c4edf`  
		Last Modified: Mon, 16 Nov 2026 20:35:58 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c5faa0da852ebab72b45f17b48a42e2f58009b92e409eefa120126dd8e6501`  
		Last Modified: Mon, 16 Nov 2026 20:35:58 GMT  
		Size: 77.5 KB (77543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b498f5ef621a7a2dbd434a9d4afac40b4b9c0810a7300389cfee74530353c0`  
		Last Modified: Mon, 16 Nov 2026 20:35:58 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9687ddc1f912cc13b61347c931a4064ba6b1dbb2a805686c62e7237f28e60f55`  
		Last Modified: Mon, 16 Nov 2026 20:36:04 GMT  
		Size: 49.2 MB (49179792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0f9a17ed0d2f86f461445c758aae57289562d4a4fbd07e20115645bd2ef606`  
		Last Modified: Mon, 16 Nov 2026 20:35:58 GMT  
		Size: 107.2 KB (107205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
