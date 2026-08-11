## `openjdk:28-ea-10-jdk-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:5e5321d4a1a4746a5a567a4e4d4f8ef4ed2b9fe806ebd7817fafc4229f00d29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:28-ea-10-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:fe7365bad02438f5b039cacb0096cbe0dee821e92d45d87f93ece732ce19402d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436500937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f2c5426e34404f85b846bbb03cc613be7a81e3a5d6fb2c003d6398bcceeb26`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Tue, 11 Aug 2026 00:13:35 GMT
SHELL [cmd /s /c]
# Tue, 11 Aug 2026 00:16:04 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 11 Aug 2026 00:16:04 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 00:16:06 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 11 Aug 2026 00:16:07 GMT
USER ContainerUser
# Tue, 11 Aug 2026 00:16:07 GMT
ENV JAVA_VERSION=28-ea+10
# Tue, 11 Aug 2026 00:16:33 GMT
COPY dir:f5d65859e5db07be3accfca92651eed424ef29ce08cf756d53ee7a8d187d1d07 in C:\openjdk-28 
# Tue, 11 Aug 2026 00:16:40 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 11 Aug 2026 00:16:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75d5a43e5b62bc2b3969e6d44d265faec552073c411228afc128f71d13389c5`  
		Last Modified: Tue, 11 Aug 2026 00:15:20 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e858652e6c8eb3cccd0b618fd49d0abfe5f3c84a5e685d05fc8747dbfa0821`  
		Last Modified: Tue, 11 Aug 2026 00:16:46 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac62fabf4591c71fa0d7c9616cd2e0718c01f6b6194ab0c000e0a1234fc4b6b9`  
		Last Modified: Tue, 11 Aug 2026 00:16:46 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99af201e98a404094ee1e66503da08915e10e5c61573c703a6a6943618bbfbb`  
		Last Modified: Tue, 11 Aug 2026 00:16:46 GMT  
		Size: 73.2 KB (73161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2a76e6b10dd9789436348c5ed27703c1d029aaaedc30b39520d5ff7452cfac`  
		Last Modified: Tue, 11 Aug 2026 00:16:44 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167f7d65028a113c84d3e32e24caaf85687501af83a6a837401cd773f8b89316`  
		Last Modified: Tue, 11 Aug 2026 00:16:44 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625ea375771e617209b86b3edb9545725a2868df34e9613cbf33d1be9455a599`  
		Last Modified: Tue, 11 Aug 2026 00:17:02 GMT  
		Size: 239.1 MB (239086660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb05dfb67bd799cefdca7937c04eb9a3b4d95625b4fb639bc992ade2ac708590`  
		Last Modified: Tue, 11 Aug 2026 00:16:44 GMT  
		Size: 115.4 KB (115428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e78bd06017607a3a57a0529bc726369b865ff1b62d3b1a60dd0d2e1a16a0cf`  
		Last Modified: Tue, 11 Aug 2026 00:16:44 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
