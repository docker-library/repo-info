## `eclipse-temurin:21-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:c3de76799ddd308b176dfb4cb3b7ef17c7320e5b43aac261d191695993050810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:21-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:251580e7b0a77f1d3492e93f22d782c6f4a5e487f8baf3c844c89c5cc157c173
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.2 MB (249223036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f07400f02c31afecea3a45cd71febb27897dd03eb99ac5f6648a439b1f83ef8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:40:16 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:40:16 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 27 Oct 2026 18:40:17 GMT
ENV JAVA_HOME=C:\openjdk-21
# Tue, 27 Oct 2026 18:40:18 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:40:23 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:40:23 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:40:29 GMT
COPY dir:430c09910c856671a7a4bc2d7f37f53b3c92c6e330587a4d530316a31249e48c in C:\openjdk-21 
# Tue, 27 Oct 2026 18:40:33 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c176cbf0b04fafccd2ab4ba4cfba70e3fb4b70a4730a31d472b130b4b742cbf9`  
		Last Modified: Tue, 27 Oct 2026 18:40:39 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb12158e111f1c06c70acff5ed6a507971b65c1f2aede4c67cbcd0c03adeb912`  
		Last Modified: Tue, 27 Oct 2026 18:40:39 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb166c8b70f6948bc6a41374bacba83dba5c9887126da6829890453914efce`  
		Last Modified: Tue, 27 Oct 2026 18:40:39 GMT  
		Size: 1.1 KB (1088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14f13d4e6414ac622fe4a7bbc04e028068da78f95afff415d21e53a6e426020`  
		Last Modified: Tue, 27 Oct 2026 18:40:37 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59264bed99ef029758a7fb5ee26e3e1786e16db3b3378af17217ee72977822b`  
		Last Modified: Tue, 27 Oct 2026 18:40:37 GMT  
		Size: 70.5 KB (70522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12e41ab9f572d69db8b1a9ab8eb10c23bcd20f49ccbf2985eebbf70464bae51`  
		Last Modified: Tue, 27 Oct 2026 18:40:37 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c90fa338ffe15c31eb321ba72300ac492d4c65cb0ee4992a1dd2abdfbcfeb50`  
		Last Modified: Tue, 27 Oct 2026 18:40:43 GMT  
		Size: 49.1 MB (49085273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1595eaed8ec805f0e047734552dafbed1ff0c3d256f655176331961b85bc21a`  
		Last Modified: Tue, 27 Oct 2026 18:40:37 GMT  
		Size: 102.8 KB (102836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
