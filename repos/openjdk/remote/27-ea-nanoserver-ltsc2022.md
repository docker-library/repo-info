## `openjdk:27-ea-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:2029c37a2cb91b01f2eab97a61bc066132d3ba7ba59380a1511e07942cf45b9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `openjdk:27-ea-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:c9c58d924837399c5ba6276e88dc6cb80fc8963194bea8a04a79e3c80ac3c2be
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.4 MB (347416109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4349346012fb263d0c809340073cf526fcde424e597180a4602e15ccc5048eef`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:53:35 GMT
SHELL [cmd /s /c]
# Thu, 16 Jul 2026 00:08:32 GMT
ENV JAVA_HOME=C:\openjdk-27
# Thu, 16 Jul 2026 00:08:32 GMT
USER ContainerAdministrator
# Thu, 16 Jul 2026 00:08:35 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Thu, 16 Jul 2026 00:08:35 GMT
USER ContainerUser
# Thu, 16 Jul 2026 00:08:36 GMT
ENV JAVA_VERSION=27-ea+30
# Thu, 16 Jul 2026 00:09:32 GMT
COPY dir:9c05a27038ce29679908b9e4f8e42ea1ba5c3566b9603f40bec0382cb1f736a4 in C:\openjdk-27 
# Thu, 16 Jul 2026 00:09:37 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Thu, 16 Jul 2026 00:09:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb76bdf691f32ced200d4565f259d91510d340baa913f17aac8dfe4f2c036a3`  
		Last Modified: Wed, 15 Jul 2026 23:54:23 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b3aea1d2e548dec3bb07fb1af1434b8e2f77ef03c5ec78909dc2c4a58ed0845`  
		Last Modified: Thu, 16 Jul 2026 00:09:50 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e24bf43ec795d2eb6669a37e14514e998edb340ef0cad24760661c980da843b`  
		Last Modified: Thu, 16 Jul 2026 00:09:49 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7f4d966a43beb314cd2f90821e0a085a05eb8c8313b038fec158380ff7d546`  
		Last Modified: Thu, 16 Jul 2026 00:09:49 GMT  
		Size: 77.0 KB (76999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90998c0cf8886db507cbb1392cf42a4da97eac51806353bed419bd0debbe38c9`  
		Last Modified: Thu, 16 Jul 2026 00:09:48 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ccd3e1fba257db49b395224a6498a421d32690a2b44981463d7a404a1d81ac`  
		Last Modified: Thu, 16 Jul 2026 00:09:48 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8cc9936bd8cbfb30bf1f785611329643ed07883d6c172e1f2876501515931e`  
		Last Modified: Thu, 16 Jul 2026 00:10:02 GMT  
		Size: 223.1 MB (223121583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f7e13f2d692be8dd3f49eda62c81f409b1a502c08544af01763a27d65d6b82`  
		Last Modified: Thu, 16 Jul 2026 00:09:48 GMT  
		Size: 108.0 KB (108009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3347fc04445fc343265ba29d5808b94cb03eed74c0603d1d779421356130afc`  
		Last Modified: Thu, 16 Jul 2026 00:09:48 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
