## `eclipse-temurin:17-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:6d351e6744447110fbaf4cd2a302d08b769d57771de36ceea126e24563c45cc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:17-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:fe247bfedc1eadf3d245ea07c3f7c7571c456133507811567223b028e74aa98c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168278481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b5d953dae6a4eeda453300607c9a9cc8c22ef6992e9566a88771adf1095bad6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 19:16:07 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 19:16:08 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 12 Aug 2026 19:16:08 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 12 Aug 2026 19:16:09 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 19:16:18 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 19:16:19 GMT
USER ContainerUser
# Wed, 12 Aug 2026 19:16:37 GMT
COPY dir:2f70d7e82fbe25185baf6a6b1e05b870cb38c3ad05aac5b5932c695a93320f91 in C:\openjdk-17 
# Wed, 12 Aug 2026 19:16:42 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599f4e76ba358aa7244b2fc085df288972c7c2a0da1b918e05c36be3bdc641d0`  
		Last Modified: Wed, 12 Aug 2026 19:16:49 GMT  
		Size: 1.1 KB (1085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15434d3a53624d642208b0ed995f595cd985ed5317dc02e91b32aad2e0155a0a`  
		Last Modified: Wed, 12 Aug 2026 19:16:49 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8808659dff4e8cf0e4c2665d5af34acb4d06cb1afe16963ee8d9ec3594d2a279`  
		Last Modified: Wed, 12 Aug 2026 19:16:49 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e61c31f0df1427bb69baceb8f867576557e0f8316e45f9a6743745bc18a5951`  
		Last Modified: Wed, 12 Aug 2026 19:16:47 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec797948d66bd2ccd3aaf67129b72c426a8469dd53eadfb1735d430281d91a05`  
		Last Modified: Wed, 12 Aug 2026 19:16:47 GMT  
		Size: 86.2 KB (86243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1164ed0e4a6405d2bccfb0fda16c41820b873c24255b886b8d73ee8c60e0bcaf`  
		Last Modified: Wed, 12 Aug 2026 19:16:47 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4180827ad695b9f3aa2f5cc347ece7dac4fddc2c72d8048390cef4881e12c1ce`  
		Last Modified: Wed, 12 Aug 2026 19:16:53 GMT  
		Size: 43.8 MB (43834050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17ad5fadb4a5a862e141bb434c4bfc559d3184556f043944efb5b665717c5d2`  
		Last Modified: Wed, 12 Aug 2026 19:16:47 GMT  
		Size: 94.9 KB (94942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
