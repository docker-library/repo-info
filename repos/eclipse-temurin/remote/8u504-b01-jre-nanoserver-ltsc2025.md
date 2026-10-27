## `eclipse-temurin:8u504-b01-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:458ab38acb57b3fdbd44339a87a633da323f3b016c0d2c7ef15f2c0a3a327611
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:8u504-b01-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:66db9ba29039d2aad3662807a47433e596d6876d397b04edce3c46fffdacfb1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.1 MB (240117614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7899b5e0d6b177d790f90c4581c3677773ce3c20927871ba79333a2979c9752`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:39:15 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:39:15 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 27 Oct 2026 18:39:16 GMT
ENV JAVA_HOME=C:\openjdk-8
# Tue, 27 Oct 2026 18:39:16 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:39:24 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:39:25 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:39:37 GMT
COPY dir:4c224d29a15b9aa56e23d2c02151956e155dad58f1ab34146433be40e9a5d364 in C:\openjdk-8 
# Tue, 27 Oct 2026 18:39:42 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf1e7135d8cfacfdd1738731d0643a6410cf654862f7d1a42067337cf5a4ceb`  
		Last Modified: Tue, 27 Oct 2026 18:39:48 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e9e2ea70d1d428faf9288ee5955b03254933247fce7dd45184356bad8597e0`  
		Last Modified: Tue, 27 Oct 2026 18:39:48 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386365510bb89f62f9b457c3fc0f4c319c0f281eb953039219340424fee9ae38`  
		Last Modified: Tue, 27 Oct 2026 18:39:48 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99e8db8c2e4a054bd410de79bfb07125128fb4ce232d927c296acdff7f2069f`  
		Last Modified: Tue, 27 Oct 2026 18:39:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d660588baf993e57c6131f2303d133eb6d6f7c59ebbbc677908e4034be6060e`  
		Last Modified: Tue, 27 Oct 2026 18:39:47 GMT  
		Size: 70.5 KB (70480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1ec8096b77f41588d743fab8a2face9843cf4b6d810bbefcfd30b6ac810627`  
		Last Modified: Tue, 27 Oct 2026 18:39:46 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3a82418e5f2c815c36223dc50fb22ab17274721a608a754d29a6722b85f0cc`  
		Last Modified: Tue, 27 Oct 2026 18:39:50 GMT  
		Size: 40.0 MB (39979766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba708c83090dcf859ef205c2878c92672ef5bd34a309bd9412c608c520d9ecef`  
		Last Modified: Tue, 27 Oct 2026 18:39:46 GMT  
		Size: 103.1 KB (103079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
