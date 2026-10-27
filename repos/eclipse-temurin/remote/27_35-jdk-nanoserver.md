## `eclipse-temurin:27_35-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:246cdd9f95dda05551f76914bf6ba643b970bb98912dbe7273874e5bf5b4d7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:27_35-jdk-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:4ea34c1bd0cccedeb7c5666c4d5148815ab0e09ee2a901cb966f835981fa2d04
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.9 MB (339866095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2505fab7e77366cb7ea33856357e1ab563625311ed0746b56089d37298aeb3e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:39:16 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:41:29 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 27 Oct 2026 18:41:30 GMT
ENV JAVA_HOME=C:\openjdk-27
# Tue, 27 Oct 2026 18:41:30 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:41:32 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:41:32 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:41:44 GMT
COPY dir:a598b5fc3a93568869369eaabdea66c3c2b0ecde9417552cff3c1df8963b51f7 in C:\openjdk-27 
# Tue, 27 Oct 2026 18:41:48 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 27 Oct 2026 18:41:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc04aa7cb16162722eb098d2abd7ca19280c01ea2cd8d5a019d7e4a90613ead`  
		Last Modified: Tue, 27 Oct 2026 18:40:00 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1f2f10e86cbe618bd8d067e73410032df799b864fb4d0ef9ec0e3fab6b1de4`  
		Last Modified: Tue, 27 Oct 2026 18:41:54 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665d1cc4abc604069b24de32c64abec833ee43c899c3bac9477d62c49590bbb3`  
		Last Modified: Tue, 27 Oct 2026 18:41:54 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0df2c25a3e2f247dba19f82e778f9ed42a54947306f2fd716f6fd6f2f003b08`  
		Last Modified: Tue, 27 Oct 2026 18:41:54 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192807471509f09062dfbc510ea29ae3ac4a222665364322aa25e5038cf5e5f0`  
		Last Modified: Tue, 27 Oct 2026 18:41:52 GMT  
		Size: 71.7 KB (71747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b47b8bcd7984de90fcf82548493af40e93b7006771c5d2a2d0f855eb7415b7d`  
		Last Modified: Tue, 27 Oct 2026 18:41:52 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5def092240ba36c9fa7259e3afe90338f93dca891bcc5c86a484fd24fe2aa90c`  
		Last Modified: Tue, 27 Oct 2026 18:42:03 GMT  
		Size: 139.7 MB (139716095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ca2fc07ef6eb0dc0f7a915a2c0605e4ac7106a209eb2ef3a598cb24de45e30`  
		Last Modified: Tue, 27 Oct 2026 18:41:53 GMT  
		Size: 112.9 KB (112910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f685f0bf51bfb26fd4f57155ad7540119e661f266048d32ccde34ac98ad490f9`  
		Last Modified: Tue, 27 Oct 2026 18:41:52 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:27_35-jdk-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:beedbdee455e1eb74f8d83061af0baf65e15cc452911200b42c084d1e4686113
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265835529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:614330d09da2566a8850490b107c7baa13ece6e70450293d706e8c3cd74a4182`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:34:43 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:35:39 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 27 Oct 2026 18:35:40 GMT
ENV JAVA_HOME=C:\openjdk-27
# Tue, 27 Oct 2026 18:35:40 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:35:41 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:35:42 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:35:50 GMT
COPY dir:a598b5fc3a93568869369eaabdea66c3c2b0ecde9417552cff3c1df8963b51f7 in C:\openjdk-27 
# Tue, 27 Oct 2026 18:35:55 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 27 Oct 2026 18:35:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb04cd67f8b3dd19b65180e4ecc9bce515d0001642876ac0a6afbc853e684fce`  
		Last Modified: Tue, 27 Oct 2026 18:35:07 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6a234064371f4e4f3cf5d9e5d95bed0052156d72648b7c22d844e11db980d7`  
		Last Modified: Tue, 27 Oct 2026 18:36:01 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdb4311971517d5215b2168b55025a8c2fd9e80864ef9fb9a65ab2189d15ef1`  
		Last Modified: Tue, 27 Oct 2026 18:36:01 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b592a11a9229f54590b8b62cf83529dbb782acbe192b622f4b3fb07c259ac418`  
		Last Modified: Tue, 27 Oct 2026 18:36:01 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f6a0aa32e722f534e6cdeb42b214a5234670d24b7aff90505097de481939cc`  
		Last Modified: Tue, 27 Oct 2026 18:36:00 GMT  
		Size: 78.0 KB (77957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39fdfc11ae772440dc9efc45959b0886abdfe1a0c239fd9697bc2376a41f61`  
		Last Modified: Tue, 27 Oct 2026 18:36:00 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a4e67d56d47229664721bf38397c632e30ae06f55e5ca7cc93ad799dd4f638`  
		Last Modified: Tue, 27 Oct 2026 18:36:11 GMT  
		Size: 139.7 MB (139716180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0a53485f2dcd615309a15c0d3e2f6a575e354c56c17f617b16bffb1fea0b68`  
		Last Modified: Tue, 27 Oct 2026 18:36:00 GMT  
		Size: 108.3 KB (108287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83be628264cd6471b11c32f2d077bf4c8e04472026ee52a6d2ef4563a672005`  
		Last Modified: Tue, 27 Oct 2026 18:35:59 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
