## `eclipse-temurin:25-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:01d063095ee80cbed6eeb4da2d6b076bd9825d9d8b0e0c69d016204b123dc96e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:25-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:a1b99d5a22eec48cf102304cc3df221b2ef4e575d416efab9110006c4475e8ef
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.2 MB (338204858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc69f3bc5806107961b63360bb8736cce3b30bb93fed9b374f583a558d69385`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:40:49 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:40:49 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 27 Oct 2026 18:40:50 GMT
ENV JAVA_HOME=C:\openjdk-25
# Tue, 27 Oct 2026 18:40:50 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:40:52 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:40:53 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:41:07 GMT
COPY dir:ca1e390f4b570d6e77b2769bb9a3bd10f0ce627c8274f33c597fc576311144d8 in C:\openjdk-25 
# Tue, 27 Oct 2026 18:41:12 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 27 Oct 2026 18:41:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164d4abb792461c183025d9953c42a07358aac142eb2a4aac01f0a583c5464c8`  
		Last Modified: Tue, 27 Oct 2026 18:41:18 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b310ad784676b1179f19ed67a21cdb009b51752d65348b676c9bedf54e836bf8`  
		Last Modified: Tue, 27 Oct 2026 18:41:18 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e17344e56096e934b012f43622f82417fa4853ad458d5fc1a1f9fe3ce8c5db`  
		Last Modified: Tue, 27 Oct 2026 18:41:18 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c44dc556e35c27108d3e7ede7b3dc2433ea35c6bb199861c001aecb48e0f0e`  
		Last Modified: Tue, 27 Oct 2026 18:41:18 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c70e8cad36fcb96bfe5f932f8c33b9b1ee16fcf700ee5e1abcc04d234d82d33`  
		Last Modified: Tue, 27 Oct 2026 18:41:17 GMT  
		Size: 72.2 KB (72185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c04116e4ed4191f25af0929845373a2efca318a14269d7c98d5635446e67b1`  
		Last Modified: Tue, 27 Oct 2026 18:41:17 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688680a7a6c4cf43891b01835a537fd5ef020f11d5df0626e1bb4cbba8ebbcbe`  
		Last Modified: Tue, 27 Oct 2026 18:41:27 GMT  
		Size: 138.1 MB (138054543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e1deb146ec558cc5d316924e2a760f698a8c5ce33b0e79a3f28749bfb09737`  
		Last Modified: Tue, 27 Oct 2026 18:41:17 GMT  
		Size: 112.8 KB (112826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efcc56678411e2a4e470aa2432c63e1f98e73a68b0d97d801242f7ce03c631d7`  
		Last Modified: Tue, 27 Oct 2026 18:41:16 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
