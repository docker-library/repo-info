## `eclipse-temurin:21-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:34c2b80752cf360491f249db3d9fb7ccb3579fcd82c0c0e92b557628b437cb8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:21-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:38c567e47f05c49ad7b73c8e06b79d1eef891cdb7cf7ba5eba44280ff5a0fbae
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246911314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d801e823d9cd1e5429a0eab4291bd65cbd05161e96786e8d2c522689d3cb7bbb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Wed, 09 Sep 2026 23:23:47 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:23:49 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 23:23:50 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 09 Sep 2026 23:23:50 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:23:56 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:23:58 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:24:18 GMT
COPY dir:7f097d9731ad3c3f64258598b28d2d6a941ac14ae3e6473eb79dbe2c247b7b11 in C:\openjdk-21 
# Wed, 09 Sep 2026 23:24:22 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77221dcd590f6945ec0da4f8ff75ae68b504118dfafb516834c848bd0efbb271`  
		Last Modified: Wed, 09 Sep 2026 23:24:28 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95535fadd55438750cdf773b6eb1a6960f18b76dee9e736bd5d4fa42dc642b8a`  
		Last Modified: Wed, 09 Sep 2026 23:24:28 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d256b7115fda1948e3d37b6850f64e291895fef603ffff99a2790b7a4e114ef3`  
		Last Modified: Wed, 09 Sep 2026 23:24:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de055260bd76f905a885174c50b5f4c140508854b54600039f8d4eff8ba871dc`  
		Last Modified: Wed, 09 Sep 2026 23:24:27 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd2a6ebf32591b61a3d8731a1b4ce1f54d84adbd30488ef323f33724c31bd39`  
		Last Modified: Wed, 09 Sep 2026 23:24:27 GMT  
		Size: 70.0 KB (70013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51400a6da16627ad2f97e906059274125804a02e3e3fb0e7f565d0d7536dc78`  
		Last Modified: Wed, 09 Sep 2026 23:24:27 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1321bba04d5cbb36fe36dd8a44bc8d529a94fd015be3a410bec2d47cfc38ea71`  
		Last Modified: Wed, 09 Sep 2026 23:24:33 GMT  
		Size: 49.1 MB (49083513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce105c52de2fc33107f2fc65671e55430e0f6c7129aecfbb6d4cde5ddbd1171`  
		Last Modified: Wed, 09 Sep 2026 23:24:27 GMT  
		Size: 102.1 KB (102118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
