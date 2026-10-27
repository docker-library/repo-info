## `openjdk:28-ea-21-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:3f711dc940ca261238ac51ff611e8d405ad1bca947d58010d21be9e20bc9235c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `openjdk:28-ea-21-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

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
