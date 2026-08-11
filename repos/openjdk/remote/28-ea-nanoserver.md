## `openjdk:28-ea-nanoserver`

```console
$ docker pull openjdk@sha256:62ea1218be0b80e47b9e13e365672266f16c0b56270099869255b2dd2fa4b7ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-nanoserver` - windows version 10.0.26100.33158; amd64

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

### `openjdk:28-ea-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:99d167f452c2e5263b4a20d06687f687b5cb916031f73a15ba0de929218468bf
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.4 MB (363392575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b279cbdacf80848a1fb787e65568a5a8b5cc65d1a1dc7f9cea2c833e0b9d79b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 00:13:25 GMT
SHELL [cmd /s /c]
# Tue, 11 Aug 2026 00:17:25 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 11 Aug 2026 00:17:26 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 00:17:29 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 11 Aug 2026 00:17:29 GMT
USER ContainerUser
# Tue, 11 Aug 2026 00:17:29 GMT
ENV JAVA_VERSION=28-ea+10
# Tue, 11 Aug 2026 00:19:12 GMT
COPY dir:f5d65859e5db07be3accfca92651eed424ef29ce08cf756d53ee7a8d187d1d07 in C:\openjdk-28 
# Tue, 11 Aug 2026 00:19:18 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 11 Aug 2026 00:19:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb551c4ec66da0a108e7622d16de49002dc9db422ff494f6cfa925c3cd621b2`  
		Last Modified: Tue, 11 Aug 2026 00:16:13 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64b307d3b0f0c95ac86e449c7742cf632de1b8f0dc274b9c5b3e15ad31ad6b9`  
		Last Modified: Tue, 11 Aug 2026 00:19:26 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7141e26773978141483f9b8933c3d1bb69ab31045779052fd851ce30433e4233`  
		Last Modified: Tue, 11 Aug 2026 00:19:26 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fd9f4d869d7972a2103f6e216af699eacb4512ea12e33a7eab928ac47ad8bd`  
		Last Modified: Tue, 11 Aug 2026 00:19:26 GMT  
		Size: 76.8 KB (76806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb3487f4e7e1b93c3bc755e965f7352d05db0a5e404bd9b6c046844f47aa1`  
		Last Modified: Tue, 11 Aug 2026 00:19:25 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc03239eef6dc99ec95c82a14f76535ebb92a36a71e89a73b3f588bb0679130`  
		Last Modified: Tue, 11 Aug 2026 00:19:25 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e92c764e0197a1ae668475d8867c210e775dbb8d0f14f36dc1057f93962698`  
		Last Modified: Tue, 11 Aug 2026 00:19:41 GMT  
		Size: 239.1 MB (239087051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff1f6f1400c89d8204bbe6ab6b31f576659598770d1fe2cf2c548a084c7a55f`  
		Last Modified: Tue, 11 Aug 2026 00:19:25 GMT  
		Size: 119.1 KB (119147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f700e9eed43cd9b4205a6e712789ea8057f11ee0d2c40a0defa90a2806fb4c7`  
		Last Modified: Tue, 11 Aug 2026 00:19:25 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
