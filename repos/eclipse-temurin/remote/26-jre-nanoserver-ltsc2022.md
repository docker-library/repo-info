## `eclipse-temurin:26-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:ddc97cf1d4fe86387ab4d7a5824ec3f8cb91344ce60dc3fb5812e074910e1ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:26-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

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
