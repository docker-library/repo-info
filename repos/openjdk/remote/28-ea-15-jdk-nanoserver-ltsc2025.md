## `openjdk:28-ea-15-jdk-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:e8d189ce94ba0d80a2ad75d076ff627bcab5bafa918e0dc19e31460d91a44563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `openjdk:28-ea-15-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:f32d2ac2bd7ce34efec44a97bbe32c4793dab64a7be375ee3ec0d79a59e16a72
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.1 MB (437098210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c851fcbecf557da3fdf9f04fcb38fde21836d80710ad90a3e03481b0939d3b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Tue, 15 Sep 2026 22:11:32 GMT
SHELL [cmd /s /c]
# Tue, 15 Sep 2026 22:11:34 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 15 Sep 2026 22:11:36 GMT
USER ContainerAdministrator
# Tue, 15 Sep 2026 22:11:54 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 15 Sep 2026 22:11:55 GMT
USER ContainerUser
# Tue, 15 Sep 2026 22:11:57 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 22:13:56 GMT
COPY dir:d51e0422db024bac8099b74c7c7af242e8d94e8e4cdcadf22d35a6c509098414 in C:\openjdk-28 
# Tue, 15 Sep 2026 22:14:05 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 15 Sep 2026 22:14:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4088087d4fae4be0dbc50734ea23246ce21ad8102fcaad72b4fedda19e123709`  
		Last Modified: Tue, 15 Sep 2026 22:14:12 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532ab77dee0259f8b8bd8331e60a90f9bd8f041605ddbb25429e532788192721`  
		Last Modified: Tue, 15 Sep 2026 22:14:12 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697cc96b562822e00a72fef83682821b778e3915de3a948755f33ccd1679a126`  
		Last Modified: Tue, 15 Sep 2026 22:14:11 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975a77f63145a6cf4cec823fcadebe18fadb33cdbacf2af156018a3d50951d03`  
		Last Modified: Tue, 15 Sep 2026 22:14:11 GMT  
		Size: 69.9 KB (69942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f9abe01f55ab6b40e6cf13dc9ea436809f447698962c736ab774df9a8677e1`  
		Last Modified: Tue, 15 Sep 2026 22:14:10 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd39c0d1c60f6d0beb6268df387ef77ac98b57f50b179237a511dae96e1dcdd`  
		Last Modified: Tue, 15 Sep 2026 22:14:10 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba09488048e6c4e2e7eb4dc383536a082ed0186603e00b0904a6a9b48e026e9`  
		Last Modified: Tue, 15 Sep 2026 22:14:28 GMT  
		Size: 239.3 MB (239269021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e069079c97a17f963a4a460b14022d6118fadf0c6c7d6b59a7e786c407a00f5`  
		Last Modified: Tue, 15 Sep 2026 22:14:10 GMT  
		Size: 102.5 KB (102528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd41bf2d6963b6f91213ce2c4e6750070d38e74430f2f6408f02c2688ad10f5`  
		Last Modified: Tue, 15 Sep 2026 22:14:10 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
