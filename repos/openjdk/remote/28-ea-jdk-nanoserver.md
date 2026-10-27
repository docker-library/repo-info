## `openjdk:28-ea-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:35eb42089bef7d7e4ef09881c41f38f48e2d7fbb5bbfc71eeecc0425ade3006f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `openjdk:28-ea-jdk-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull openjdk@sha256:cf66bf1c2eafd1b2e52d09c6774b94befe98fe5f0eb6d7a00675f43a4ae5d98b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.7 MB (439709806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1586458c395332fb66b16b8cfa64311fcc2e928694b219789607d0c22a535354`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:40:57 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:42:45 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 27 Oct 2026 18:42:46 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:42:47 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 27 Oct 2026 18:42:47 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:42:48 GMT
ENV JAVA_VERSION=28-ea+21
# Tue, 27 Oct 2026 18:43:01 GMT
COPY dir:24d8bbfd6877380a565c0b7368b2b02fad8c7eb0eceb426a35d8fc2a14429cc2 in C:\openjdk-28 
# Tue, 27 Oct 2026 18:43:07 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 27 Oct 2026 18:43:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79aab455b542f662fc0a01a9185da4777ebb1576a0187dea48d048615d6dc626`  
		Last Modified: Tue, 27 Oct 2026 18:41:18 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ad1627c17f0d9e6bd9a21be32dae91415b2d8c76193922229068008bfd3584`  
		Last Modified: Tue, 27 Oct 2026 18:43:13 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894982adacf699b2d159f8d19a8053ca9892c7b69987c2f598ab8223ffa69450`  
		Last Modified: Tue, 27 Oct 2026 18:43:13 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6177a75d420286e35bf135abc1433329b5b32ab935239bbadb06f417ffef73d`  
		Last Modified: Tue, 27 Oct 2026 18:43:13 GMT  
		Size: 72.2 KB (72174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2eb6cec8a2666bf9d8b53a6d633f4545713283f7e1f6b11d708f115160bc4f`  
		Last Modified: Tue, 27 Oct 2026 18:43:12 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e094b2eead346d2e10823eddea000c08cf5bb73139ca82ea7a94adbd7e5817`  
		Last Modified: Tue, 27 Oct 2026 18:43:12 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f58b47054dd031f0025099c2c7ef78aa2f2f78d8467169558bb0d35c227c76`  
		Last Modified: Tue, 27 Oct 2026 18:43:28 GMT  
		Size: 239.6 MB (239559890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6a3a3bdbce887893e16179203c7303c0358725a73f0cafe1d564dcde16c578`  
		Last Modified: Tue, 27 Oct 2026 18:43:12 GMT  
		Size: 112.4 KB (112399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b10859c3b5894f0b3ee95d73786754fe8dfb135b0f783c21002feae29c3ed91`  
		Last Modified: Tue, 27 Oct 2026 18:43:12 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull openjdk@sha256:f7e3bdbaec6d442ffef249bdc052111201a68ca95be3e444350a9a2fd4fc6a16
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.7 MB (365677499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbe7c5f17812ac08552ff7372346b8786c7378e4b549d1786aa6f2b4492c0569`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 19:16:53 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 19:16:53 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 27 Oct 2026 19:16:54 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 19:16:55 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 27 Oct 2026 19:16:55 GMT
USER ContainerUser
# Tue, 27 Oct 2026 19:16:56 GMT
ENV JAVA_VERSION=28-ea+21
# Tue, 27 Oct 2026 19:17:35 GMT
COPY dir:24d8bbfd6877380a565c0b7368b2b02fad8c7eb0eceb426a35d8fc2a14429cc2 in C:\openjdk-28 
# Tue, 27 Oct 2026 19:17:42 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 27 Oct 2026 19:17:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c66506ee626c3d4a1d26b38f8acb48f443915ac12dd58c8ac06e55be975936`  
		Last Modified: Tue, 27 Oct 2026 19:17:48 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b1df0b7baebea9b54d03e1438b59ed8f9fe3a25c402fb7b185906b7d4712b6`  
		Last Modified: Tue, 27 Oct 2026 19:17:48 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f86a63a82853909ba1c0c664da4e5eec15c5a780ef5cd1610beef172e56604`  
		Last Modified: Tue, 27 Oct 2026 19:17:48 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e454fe83eea81a3f75cccb2f100dc18186a6e76ae3e102b81308c3e771a413e`  
		Last Modified: Tue, 27 Oct 2026 19:17:48 GMT  
		Size: 76.6 KB (76647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c07251e9dff62f2154b994a772ed05b6e2c9936fd29e140e94cfc24c00014b8`  
		Last Modified: Tue, 27 Oct 2026 19:17:46 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d235efd4e1de4f5758a742b4213c23aaf22257c5ce6abf7118830f8dd2a99da2`  
		Last Modified: Tue, 27 Oct 2026 19:17:46 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae96bca06486efe50b4143da1b65b11497eab01cd4b01f2781b9fecd65772f2`  
		Last Modified: Tue, 27 Oct 2026 19:18:01 GMT  
		Size: 239.6 MB (239559761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c69be6cf8f1a2d839fa6adce5b692feba4961ffda932ae25d4a9094961fbe46`  
		Last Modified: Tue, 27 Oct 2026 19:17:46 GMT  
		Size: 108.1 KB (108086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e1e80a915dda24acdfad0b2f6f66ce4c0c252078bb08a7994dd155d89843c0`  
		Last Modified: Tue, 27 Oct 2026 19:17:46 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
