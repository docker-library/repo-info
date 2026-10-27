## `eclipse-temurin:26-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:1d77e0679ce80de48f7b66c5e4e64a1f83582eaaec10a99cd08fea67dc1f4024
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:26-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:80aca0df2575ad7601c7b519609c580704ea382cc29e1b10ad480fb04e3189ec
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267438548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969808e8df0381ad8009a950ba6e02246f6f7affbcb569f55cf32a4f2d78e445`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:33:48 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:35:00 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Tue, 27 Oct 2026 18:35:01 GMT
ENV JAVA_HOME=C:\openjdk-26
# Tue, 27 Oct 2026 18:35:01 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:35:03 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:35:03 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:35:18 GMT
COPY dir:ccd67fcf3d45d4940fbcca3f3b377600053cf61ab5c19e3266e53dfa5c18d33b in C:\openjdk-26 
# Tue, 27 Oct 2026 18:35:22 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 27 Oct 2026 18:35:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb37bd91727a9a2ea13e79ebf86b464297e4edfb0c8e4fb3a09fe9ab893db69`  
		Last Modified: Tue, 27 Oct 2026 18:34:04 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed682a948d1418e23bdbd2926a1c6c8cb91cf2bd9ea737a87e34adaba77a11b`  
		Last Modified: Tue, 27 Oct 2026 18:35:28 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9f20267569ba528f4646567918bc357a43761b5d1ac275d2fb476a88d14515`  
		Last Modified: Tue, 27 Oct 2026 18:35:28 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8400f820cdd79a855e818195f6e410f4b4f11c75e512bb57e9cb712952363bad`  
		Last Modified: Tue, 27 Oct 2026 18:35:28 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784f733fb9160fa64921d18426277c04cc06233b78f5311c543ce0e8e08820e5`  
		Last Modified: Tue, 27 Oct 2026 18:35:26 GMT  
		Size: 79.0 KB (78966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3f6da7a1a523104b680d71bea5443ccbea7c41c1c2940da9832387ba4c55f1`  
		Last Modified: Tue, 27 Oct 2026 18:35:26 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d911931ad9a3fa0d45848d910dfe8680952f59785e071844d1fb9fd00b680b93`  
		Last Modified: Tue, 27 Oct 2026 18:35:37 GMT  
		Size: 141.3 MB (141319383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f55fefaf4efc5ee31f124f3f299410cfcdd778d46ae2372c1795e92c199d33`  
		Last Modified: Tue, 27 Oct 2026 18:35:27 GMT  
		Size: 107.1 KB (107064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c8bbcbc78d851d88cfee34c8ec3ecd48122036467e2136e89f3671b695531e`  
		Last Modified: Tue, 27 Oct 2026 18:35:26 GMT  
		Size: 1.1 KB (1088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
