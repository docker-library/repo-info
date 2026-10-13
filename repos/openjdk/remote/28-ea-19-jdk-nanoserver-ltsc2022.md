## `openjdk:28-ea-19-jdk-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:9a88a39dde7f56e6f1d46be76a971f58234c45a1c778f04a2a52c804eea254c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-19-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:e6a961d7f86dfe1a60e570930b4dba154075dcac498a62bccd5ab86db6418881
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.2 MB (364161856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b01315debc1eb60ae13272305707367d1c5098d5576ed1dbd747b9e459c65a10`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 23:09:58 GMT
SHELL [cmd /s /c]
# Mon, 12 Oct 2026 23:09:59 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 12 Oct 2026 23:09:59 GMT
USER ContainerAdministrator
# Mon, 12 Oct 2026 23:10:12 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 12 Oct 2026 23:10:12 GMT
USER ContainerUser
# Mon, 12 Oct 2026 23:10:13 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 23:10:57 GMT
COPY dir:c208d4ddb823c6de37c796046bc4c0d90d3d226ecf0b2aab672eaf34a98fea52 in C:\openjdk-28 
# Mon, 12 Oct 2026 23:11:04 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 12 Oct 2026 23:11:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f9ae55eeaa5ddb216f7edc282e88af56463d20550fbe3032e718e912c69e9b`  
		Last Modified: Mon, 12 Oct 2026 23:11:10 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0610cc3c0b0f34f6812e2dbd0e94ab833bbcddb75737c0bb3a94c16535e6863e`  
		Last Modified: Mon, 12 Oct 2026 23:11:10 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d42d54e8f0cd2c0b2ee96e465d5256d64f21cc82ebec51ac9bd5c2af4a7da7`  
		Last Modified: Mon, 12 Oct 2026 23:11:10 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54343e3f7a8a6b227888c55392486dc40b7de7fc5eee51937dc2764c1bb5ebbe`  
		Last Modified: Mon, 12 Oct 2026 23:11:10 GMT  
		Size: 81.2 KB (81231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cae622052dd0a8f5db0ab3065014a4203623acc32595820323521cef112cddc`  
		Last Modified: Mon, 12 Oct 2026 23:11:08 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d8d1de31c2a9e59869ce57a04e252487860c2607dc494625ab68217be74b25`  
		Last Modified: Mon, 12 Oct 2026 23:11:08 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1fa2271d90da1ca821e38bfc4837077c9676072d03ac080662ee6a4e55eaee`  
		Last Modified: Mon, 12 Oct 2026 23:11:23 GMT  
		Size: 239.3 MB (239347681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537539daaf5ba958b28261242132d26dd04c399ae153d0d2026007379de3d8f8`  
		Last Modified: Mon, 12 Oct 2026 23:11:08 GMT  
		Size: 89.2 KB (89191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40cf3cd1a5a612652f6a8dcc73602e8a671913360ef3282324c3e7f7300cf5`  
		Last Modified: Mon, 12 Oct 2026 23:11:08 GMT  
		Size: 1.0 KB (1016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
