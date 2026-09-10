## `eclipse-temurin:17-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:87d690bbd6c277d5aef2ac5aea14b201af4cf0535107deb564b26691459f1be3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:17-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:22efbcba64a1c2582a33b9d0525f32aacd566db1240b823a239083e2ebfa4a99
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.7 MB (168658985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21fb8a058c030f3466f5aa5d347db4e1d88b37758f7dc833095b3670d6c1c625`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:20:54 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:21:33 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 23:21:33 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 09 Sep 2026 23:21:33 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:21:34 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:21:35 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:21:38 GMT
COPY dir:c7bf190121f912a89fd430dfa5b910ef4f4e58e423a49a810e3a7594bfc919b0 in C:\openjdk-17 
# Wed, 09 Sep 2026 23:21:41 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc280a6510bdc979b34bd6dcd8e970e856a223ec67daa4122864e326854eff4`  
		Last Modified: Wed, 09 Sep 2026 23:21:08 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d80e62dad1d028324b0539dfb3a7d56b2f09725ab12a4345ee072a603c42a`  
		Last Modified: Wed, 09 Sep 2026 23:21:46 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fed1372dedf6471e9d298bb9cbd91ef4026138306b7fc091a877fd9829fa51`  
		Last Modified: Wed, 09 Sep 2026 23:21:46 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd1e00f486de71ca88c4d92ab9ed0e61748e1cd5eba7521faf187968bc1618ae`  
		Last Modified: Wed, 09 Sep 2026 23:21:45 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36006546d3cf9018ec03b91c5843b5c8f9cd4c365c65e5135463a072036f5c8c`  
		Last Modified: Wed, 09 Sep 2026 23:21:45 GMT  
		Size: 76.8 KB (76826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1263068d21197177ac77ec0f7fa09ced5dd3bec748ab76daf291854e59d1b4`  
		Last Modified: Wed, 09 Sep 2026 23:21:45 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5215811eda464a46b6adbd8cdb186856de72ed9665f9a7fdd3404e1c491cbc19`  
		Last Modified: Wed, 09 Sep 2026 23:21:50 GMT  
		Size: 43.8 MB (43839509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ac1a662794bb03122512d4dd04757f75058c22a63ed943319cfc12c4fe296c`  
		Last Modified: Wed, 09 Sep 2026 23:21:45 GMT  
		Size: 100.0 KB (99953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
