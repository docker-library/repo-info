## `eclipse-temurin:17-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:efeca330c362915366184c48da16864317969ac27390a994adfd8b8ff5a9f600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:17-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:d9c0a5891370dd7978bd12475fa4b218a5f1aedeae511bf2a47357ffac2c1907
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313761722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1114f102c7f9227094fba44ca9ff8949e19cee7841d4e71620b5a4be95b47b6f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:34:02 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:34:03 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 27 Oct 2026 18:34:03 GMT
ENV JAVA_HOME=C:\openjdk-17
# Tue, 27 Oct 2026 18:34:04 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:34:06 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:34:06 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:34:50 GMT
COPY dir:3a5535544d6fb312c0f44eb2f3dd3631cac8c859fdbee30782f06557677f7659 in C:\openjdk-17 
# Tue, 27 Oct 2026 18:34:54 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 27 Oct 2026 18:34:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e441df77f696036b089e55c9768ee3993ff79955fcd592776c3d50b2d0141a04`  
		Last Modified: Tue, 27 Oct 2026 18:35:00 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6723106da2c5fe1b7b8373ae9cd89ec62b92e8a9f16b4b4bb26fbf868c64b488`  
		Last Modified: Tue, 27 Oct 2026 18:35:00 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70e691e54dd017457e6b6e0a8fce57a685dd114fc1cada406e26fbe1c4a1df8`  
		Last Modified: Tue, 27 Oct 2026 18:35:00 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5baecfd43e6ab03048d28b56d4b51f8e91315eb96b881f402c934900369053`  
		Last Modified: Tue, 27 Oct 2026 18:35:00 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e06761d9bad6601d1d562120dd2cd04a12688022c6d5b71e12f57ea38166e76`  
		Last Modified: Tue, 27 Oct 2026 18:34:58 GMT  
		Size: 79.1 KB (79090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1296d00db5b4892642916eb9abb89d14eff571ddaadd1d1d89f21daa3d26474`  
		Last Modified: Tue, 27 Oct 2026 18:34:58 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0285060ab6e46f90b6780a6a8cb8b23dbe8709cec2b8478d0ed1c35dff2bb3a4`  
		Last Modified: Tue, 27 Oct 2026 18:35:09 GMT  
		Size: 187.6 MB (187642384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d14202ad91cf53ee9bb2f28c7fddc32cebafa404dcb020810d5e97a7f4eeb2`  
		Last Modified: Tue, 27 Oct 2026 18:34:58 GMT  
		Size: 107.3 KB (107284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e59ec03ec32c47daef207ba89f8714c0e9f48aa9ef31d1ae413770f608be71c`  
		Last Modified: Tue, 27 Oct 2026 18:34:58 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
