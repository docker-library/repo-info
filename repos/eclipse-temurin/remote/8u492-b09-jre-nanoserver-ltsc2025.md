## `eclipse-temurin:8u492-b09-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:eaabfb6fac9cc2f5419c1940df9d7aa6c5dc777ad0ba26a464185ba42374747b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `eclipse-temurin:8u492-b09-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:a67bb4dc98f8f2839ae2abd06c798f39da74c147f1e13fed7ea2736c46af5767
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237386328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a57b64983574f2d526ef85d0bfa00c18ecaacc4dc56f34cbb5649078cc0181`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Thu, 16 Jul 2026 00:17:18 GMT
SHELL [cmd /s /c]
# Thu, 16 Jul 2026 00:17:18 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 16 Jul 2026 00:17:19 GMT
ENV JAVA_HOME=C:\openjdk-8
# Thu, 16 Jul 2026 00:17:19 GMT
USER ContainerAdministrator
# Thu, 16 Jul 2026 00:17:34 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Thu, 16 Jul 2026 00:17:34 GMT
USER ContainerUser
# Thu, 16 Jul 2026 00:17:51 GMT
COPY dir:deea9cd49fa78c2b910137007aed467626dd46389507789da1635093de3df40f in C:\openjdk-8 
# Thu, 16 Jul 2026 00:17:57 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274a6d4d59e1c3a57c5961d1c5ac2704ac8a3afc071937c3de77ba1594502314`  
		Last Modified: Thu, 16 Jul 2026 00:18:03 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42eef7dfe5c631346f3448008909fb75470c8a520d4c6ae91301cc9de8d989e`  
		Last Modified: Thu, 16 Jul 2026 00:18:03 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff3200fe8308e3de35a2f9f24ad933034d510967cc2a41ba100333785af89ec`  
		Last Modified: Thu, 16 Jul 2026 00:18:03 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f260a70d8e562b7122a95369c3d4340423f1b7d4fdf7468183e44ea4f90cef93`  
		Last Modified: Thu, 16 Jul 2026 00:18:01 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5982a8c77fcf7dde6f1accfc3bc9ce8abc339a59bec43482e69707c6925674`  
		Last Modified: Thu, 16 Jul 2026 00:18:01 GMT  
		Size: 70.1 KB (70066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889954f29505a51b0e2706fa4cf49747c1645bbf22dc4c1f4c09670e8913841f`  
		Last Modified: Thu, 16 Jul 2026 00:18:01 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6bca5aeff663d7dcbcb493d79e2d4c7c31623e91ca8dc7584626d271cb4a43`  
		Last Modified: Thu, 16 Jul 2026 00:18:05 GMT  
		Size: 40.0 MB (39988061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26a28b8960e256aa80b7f03d13d7fbfce1c0b51052677ed5dbfa9b7ad5d2dd9`  
		Last Modified: Thu, 16 Jul 2026 00:18:02 GMT  
		Size: 103.6 KB (103638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
