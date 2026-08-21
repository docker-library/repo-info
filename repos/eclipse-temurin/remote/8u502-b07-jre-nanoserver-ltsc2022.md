## `eclipse-temurin:8u502-b07-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:5389d07affb654fbb8ee30653807f17a31e4e5397083f71883a1c9b787cea1dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:8u502-b07-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:7cc439c47e9f0dc55921c75e7e16fc4bb6db5181be53c2683b2cabacc69e73ef
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164408179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055dbbd51d7dbb345ed6d6bef6a8514e723d67fae4e5277440ea8da7cd6b6add`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Fri, 21 Aug 2026 18:35:48 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:35:48 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:35:49 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 21 Aug 2026 18:35:49 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:35:57 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:35:57 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:36:09 GMT
COPY dir:2f3bbccf7e2287e97c6411cc76d2cd1301cbec1aff5b5ea1a538254e125c425b in C:\openjdk-8 
# Fri, 21 Aug 2026 18:36:12 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f459426bce9b11f0fdd7188adcf536f7f83b7d387d61808eb4517c9e48324ee8`  
		Last Modified: Fri, 21 Aug 2026 18:36:18 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c573daf16b673246be55f1dfd6c8edcd9b06b4adab90804a8380e2a1fd213c`  
		Last Modified: Fri, 21 Aug 2026 18:36:18 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69ce9d700cc1d4249bf9e00e15df32b09333115ca943a60d6412d20ab51e79f`  
		Last Modified: Fri, 21 Aug 2026 18:36:18 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abb4c1f65f9efcff2c51264d599078cfd06b6a495f87c66cc7bc7fad75b1603`  
		Last Modified: Fri, 21 Aug 2026 18:36:16 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17df7d8e3510c1a1873138a9045bbdc23bb3fbca6fb2770225e90009f88ee5f2`  
		Last Modified: Fri, 21 Aug 2026 18:36:16 GMT  
		Size: 74.5 KB (74474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f6ba7ee60c2ff2d1ebfe13698b46c884c6206c06c03d4e329cfc3c885d6a8c`  
		Last Modified: Fri, 21 Aug 2026 18:36:16 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fb72d46a77d155095eeeae98fefb3ac7df6ee5e39cd86301561ba0c3ba9c3b`  
		Last Modified: Fri, 21 Aug 2026 18:36:20 GMT  
		Size: 40.0 MB (39980558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0e01dd0ea73f2bae909648ae7e2670aa15b86701fe1a357ed35ce91cde699b`  
		Last Modified: Fri, 21 Aug 2026 18:36:16 GMT  
		Size: 89.9 KB (89889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
