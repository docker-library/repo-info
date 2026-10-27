## `eclipse-temurin:26-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:7e9f27ff832b404a1a0572c9635560d5ebaac66290f30984ab9f9c780cded161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:26-jdk-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:7d618370406fbc302718a5e044492fa6512908c624bbb678ba92d8c7071a1424
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.5 MB (341470546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3371ff555ebe1c9c0b19b85efd9f7cc819057d4a81b93641465f71c3829d25c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:39:11 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:41:01 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Tue, 27 Oct 2026 18:41:01 GMT
ENV JAVA_HOME=C:\openjdk-26
# Tue, 27 Oct 2026 18:41:01 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:41:03 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:41:03 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:41:12 GMT
COPY dir:ccd67fcf3d45d4940fbcca3f3b377600053cf61ab5c19e3266e53dfa5c18d33b in C:\openjdk-26 
# Tue, 27 Oct 2026 18:41:16 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 27 Oct 2026 18:41:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d404488f03568ad8939d7c496af48147f7f1ad96e31d920afb6e5653a8e4eb79`  
		Last Modified: Tue, 27 Oct 2026 18:39:46 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ba54976e49243a1b1c958034760e906e6797ff9fb317e9f53ba033e5850c71`  
		Last Modified: Tue, 27 Oct 2026 18:41:22 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6e5585de1bad4d90f83c1e9809e5bf6b2692f1e391e94d4684ad2eb02f91f6`  
		Last Modified: Tue, 27 Oct 2026 18:41:22 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432facc57b23a19896421841e015f7ae9fce42399e895b9595d2ce2a90ce6def`  
		Last Modified: Tue, 27 Oct 2026 18:41:22 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2c3e74306862c84b771ae049d3ab49acab889a024d3edf34be6ebbc3a542de`  
		Last Modified: Tue, 27 Oct 2026 18:41:20 GMT  
		Size: 72.0 KB (71952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5a0189e06bc4f2d5fe2da8039c4c8dda9c2549a6dd3177ccd1a2e4f5e70353`  
		Last Modified: Tue, 27 Oct 2026 18:41:20 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59494d618c654ee8998236ac230dcb128fe2b7ac2c134de24597a8386bedae42`  
		Last Modified: Tue, 27 Oct 2026 18:41:30 GMT  
		Size: 141.3 MB (141319677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8528a1f3fbb5c413485b175d6d1a48f60ee3f6c42beb7797d006ea3521ee38`  
		Last Modified: Tue, 27 Oct 2026 18:41:20 GMT  
		Size: 113.6 KB (113609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21579d5400ae79f82cf4d2abe6c167bbb4d5d498ab2a8bce8b8665eac0076bd`  
		Last Modified: Tue, 27 Oct 2026 18:41:20 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:26-jdk-nanoserver` - windows version 10.0.20348.5773; amd64

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
