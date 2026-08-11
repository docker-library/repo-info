## `openjdk:28-ea-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:6e1eb7756b83825c860bcd5cf253fb95ff39e3b112bbf283dbbdd89a45a55181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

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
