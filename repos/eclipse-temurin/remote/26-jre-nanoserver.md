## `eclipse-temurin:26-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:1bfdb13f3409f98cf4bdb6965365a9855d44fe56eed5f23431db068ce6a84528
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:26-jre-nanoserver` - windows version 10.0.26100.33296; amd64

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

### `eclipse-temurin:26-jre-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:5038ada6db61d64fd5ab798a32b4f0c591aa86323514560b11e0e1cf2b8beaeb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184704898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1991f68d35a1ff84265f28c21454427bb56aa9ef4b58e74e84a8cf4fe6af8da`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 19:16:02 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 19:17:54 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Wed, 12 Aug 2026 19:17:54 GMT
ENV JAVA_HOME=C:\openjdk-26
# Wed, 12 Aug 2026 19:17:54 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 19:17:56 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 19:17:57 GMT
USER ContainerUser
# Wed, 12 Aug 2026 19:18:12 GMT
COPY dir:1edec5af9445e163af5cd51feafb262ed7498368c1981b477e0c90d82a11e11a in C:\openjdk-26 
# Wed, 12 Aug 2026 19:18:16 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82dd0516391bf42101b3dcd7237f6d876ade9064d2873a65f24b2bc57d3fdd1`  
		Last Modified: Wed, 12 Aug 2026 19:16:34 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5bc882a2c3d4141ae639c5e2c460c8da197efd7aed8478e430b54c34bf79dba`  
		Last Modified: Wed, 12 Aug 2026 19:18:21 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf7a147575428b10a99b19dee301cd824f082b8886e6c22389190e1b9fb4d1d`  
		Last Modified: Wed, 12 Aug 2026 19:18:21 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e4103e939cf58276a542f618701667dacd5ed46a53086a21d08e0305d99085`  
		Last Modified: Wed, 12 Aug 2026 19:18:20 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176efba2ff923a93aebca356017715dee886fba7910546c11336efa6af369fa5`  
		Last Modified: Wed, 12 Aug 2026 19:18:20 GMT  
		Size: 86.8 KB (86795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba81e22852da8d0f9281f1be7bd9fe8177485a97fcca490b646c5ab1fcc0e7f`  
		Last Modified: Wed, 12 Aug 2026 19:18:20 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9644d8ddd46681f109b7f99708fe23c0ceee41587bf5f4865424a6a4de5730b4`  
		Last Modified: Wed, 12 Aug 2026 19:18:27 GMT  
		Size: 60.2 MB (60225823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a148f7df6039bcb2017993c3571ad41a5fba1530c007de5e439183f4f9cfe88`  
		Last Modified: Wed, 12 Aug 2026 19:18:20 GMT  
		Size: 129.1 KB (129082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
