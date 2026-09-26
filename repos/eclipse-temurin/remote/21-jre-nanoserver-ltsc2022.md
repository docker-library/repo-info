## `eclipse-temurin:21-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:5da4968903e5332efc673b71027ca96b350109a6807eb0b41824117d17906348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:21-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:5805b859ae3e878a23d0cc54afcafeed03d392fa8b461538d6de8e285ae7f985
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173896201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df4c512be6da5028ba9387399a65af398e9c1737e6edc7c2d62e1da83b17147`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Fri, 25 Sep 2026 23:13:58 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 23:15:56 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 23:15:57 GMT
ENV JAVA_HOME=C:\openjdk-21
# Fri, 25 Sep 2026 23:15:57 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 23:15:59 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 23:16:00 GMT
USER ContainerUser
# Fri, 25 Sep 2026 23:16:05 GMT
COPY dir:430c09910c856671a7a4bc2d7f37f53b3c92c6e330587a4d530316a31249e48c in C:\openjdk-21 
# Fri, 25 Sep 2026 23:16:08 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba7606da81c1e59f9b7ece57412470ddc11dd5ffb417294ee7a13c883e3ec98`  
		Last Modified: Fri, 25 Sep 2026 23:14:36 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69125a8af0bef058c90cecba943c331c96756c2730e60ca7a070f35ade8495f3`  
		Last Modified: Fri, 25 Sep 2026 23:16:13 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513e92a87029545f7fdb30aa14a3f52dd784d64db76bd07a2cc7e0bb74d0d44a`  
		Last Modified: Fri, 25 Sep 2026 23:16:13 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6030c6b9a8604373d0ec0b685f5c4e2fa0fbc1a88c6420ea24082bd9ebd46b8`  
		Last Modified: Fri, 25 Sep 2026 23:16:12 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c4a079f789ce599822f34c0fcafe87163ff0f07b29e1d73d7d81b8e4364f94`  
		Last Modified: Fri, 25 Sep 2026 23:16:12 GMT  
		Size: 77.6 KB (77646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ccc044c2d41af1b73288dc947de80d474ed036a34ef6d344a7e101a93f105f`  
		Last Modified: Fri, 25 Sep 2026 23:16:12 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22bae72483ffa44ea78ec61af7f50448e5ff29126bc98f96f89df60844fab85`  
		Last Modified: Fri, 25 Sep 2026 23:16:17 GMT  
		Size: 49.1 MB (49085267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5b8f80794104fc7f3307dd2911877a8b9a3f2300ab283a66046d96d5e4d6f4`  
		Last Modified: Fri, 25 Sep 2026 23:16:12 GMT  
		Size: 90.6 KB (90610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
