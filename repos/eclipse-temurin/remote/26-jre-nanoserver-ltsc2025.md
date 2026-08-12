## `eclipse-temurin:26-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:c3c1127a829dc4d8de710238287898e47975d6fc84b7b6d7e10d210b218a311b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:26-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:e45f8b31985b5f3c79de9c3e8f8bc5a8eb663e02ed4f863d91c8830a2ad3fa50
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.9 MB (257898091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c81486e0db60f213808c424fd9369c47335255405f5a86a3b613f81e08672cd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 18:20:15 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 18:22:47 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Wed, 12 Aug 2026 18:22:47 GMT
ENV JAVA_HOME=C:\openjdk-26
# Wed, 12 Aug 2026 18:22:48 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:22:49 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 18:22:50 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:23:07 GMT
COPY dir:1edec5af9445e163af5cd51feafb262ed7498368c1981b477e0c90d82a11e11a in C:\openjdk-26 
# Wed, 12 Aug 2026 18:23:10 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a3209ddbf9c548d8d04c5a5212237133e23c9692c10cd5948cb7256a1dc9d5`  
		Last Modified: Wed, 12 Aug 2026 18:20:57 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff2ffe52965dd70bb6a51a4011a718a1a872cccda9ab432a6dfd7c40a2cc9d3`  
		Last Modified: Wed, 12 Aug 2026 18:23:16 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234f44d9e04ffedce4361f655b19461e75dda181f0d26788fc034fd62b23133d`  
		Last Modified: Wed, 12 Aug 2026 18:23:16 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdb9b0db9d0d974e613e21d7b2ebd9925d8a6912f99030a9ef518d1907b7b68`  
		Last Modified: Wed, 12 Aug 2026 18:23:15 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334b55c712956d7faf508b65a3863685c1df4a1f2d9bd6a4247e70657c8772f7`  
		Last Modified: Wed, 12 Aug 2026 18:23:15 GMT  
		Size: 72.3 KB (72318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2f53ed9b500e1d6274ce3fe9777e469d9cbbc6d77d88857959c3620882a5b1`  
		Last Modified: Wed, 12 Aug 2026 18:23:15 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43ef579cafaed4d9f29bb9ee95f6ead24a54b69c909d9acce62f06181bff3d2`  
		Last Modified: Wed, 12 Aug 2026 18:23:21 GMT  
		Size: 60.2 MB (60225742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd7c1e9bb405d1d9a8f7036a70bebba601b9391874729dd6ff254d73c4cd007`  
		Last Modified: Wed, 12 Aug 2026 18:23:15 GMT  
		Size: 112.7 KB (112652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
