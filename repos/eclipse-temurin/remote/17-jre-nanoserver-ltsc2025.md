## `eclipse-temurin:17-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:1b9193c7d94b3b0ca8f9123a36784d0dac2a94e288608aad42bacd33142dd846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `eclipse-temurin:17-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:d3860c4d40a152de8da4957ab1acff888b3533afa4774d5f031e288538b39aeb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243890479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dfb7a59e8587bf2ae98554797cebb16bc6f86af1293ebdc79274fbb4bf08dd3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Wed, 14 Oct 2026 00:18:45 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:18:46 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Wed, 14 Oct 2026 00:18:47 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 14 Oct 2026 00:18:48 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:18:55 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:18:56 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:19:06 GMT
COPY dir:7fd41a3f65b8842d11d246cf9e17233e030c47f44036c1610eefa6c2f73af9e7 in C:\openjdk-17 
# Wed, 14 Oct 2026 00:19:10 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7dd991cacc33729bddb6e958126838a2ad7eaee2e539ad92c544d684b11f16`  
		Last Modified: Wed, 14 Oct 2026 00:19:17 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed81e737fe1cd9d88c206971907e474ec66bd4b79c13474bffba73432372d471`  
		Last Modified: Wed, 14 Oct 2026 00:19:17 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff81618e4a55d7abaab145ac3ba790adb4ed4879fd4e9cb3e4ea78550c1f3b2`  
		Last Modified: Wed, 14 Oct 2026 00:19:16 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4b55daef1fe16eccb1985d436fe594436f053b897ee2a2a6b2c008aad75d79`  
		Last Modified: Wed, 14 Oct 2026 00:19:15 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c3ff5c4667bc45038abc93bbc55622ed57f00c290193737c5b2d6b77064107`  
		Last Modified: Wed, 14 Oct 2026 00:19:15 GMT  
		Size: 70.5 KB (70516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294205ec165cc9eadcee2669c402054acbce8bf624dab039c0efc9cfa4bf0e11`  
		Last Modified: Wed, 14 Oct 2026 00:19:15 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdbf19ff628c4053690a097b6f7151e40b43b611829c0efc2a2fc2424f0165b`  
		Last Modified: Wed, 14 Oct 2026 00:19:20 GMT  
		Size: 43.8 MB (43840089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:212da43a8fac5c7ce3f16624abe49f1988f80f200daec56a43af52080c2bc819`  
		Last Modified: Wed, 14 Oct 2026 00:19:15 GMT  
		Size: 103.5 KB (103508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
