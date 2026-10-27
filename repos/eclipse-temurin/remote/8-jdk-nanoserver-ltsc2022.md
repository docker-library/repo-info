## `eclipse-temurin:8-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:ea77cfdceefd237b8e5b9ce8e297fb50693d87871b66e90d0f0c62c36440af2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:8-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:4b65e7f47528da28d6bd8692654fcc353661acf0bb3b142939cef48d3f17d5e9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.0 MB (228023681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0cb903ac9631011a2a1b412bb169018cb5c107f3f33a8930a59ed68c23ffa8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:33:49 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:33:50 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 27 Oct 2026 18:33:50 GMT
ENV JAVA_HOME=C:\openjdk-8
# Tue, 27 Oct 2026 18:33:50 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:33:52 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:33:52 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:33:57 GMT
COPY dir:2f81b6f86c0792931be4477281229eea743ca9e82e883595a621ccf3a9f5df80 in C:\openjdk-8 
# Tue, 27 Oct 2026 18:34:01 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3a3e4525716bca2ee833abf7d72b16a801efc516b95c500852a3bfd03c20ff`  
		Last Modified: Tue, 27 Oct 2026 18:34:07 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7191db07243a66199e58f1f23626eb34fe394e2696c3fdb6154b8d80a286864f`  
		Last Modified: Tue, 27 Oct 2026 18:34:07 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66deae235726f1b194854ceb2bd9339bbd2461578a5620b64e5c8561c7ded0f`  
		Last Modified: Tue, 27 Oct 2026 18:34:07 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2631e61a970757f2c286f9bb16641f214211997631815fbeab3ec625d70a027f`  
		Last Modified: Tue, 27 Oct 2026 18:34:05 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f094d3f9e07a15e01d4a1204271638a349c2f6e09803828f3e5d21b37e218210`  
		Last Modified: Tue, 27 Oct 2026 18:34:05 GMT  
		Size: 77.3 KB (77284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f596785da1f3e4a538de993fc6036ee29af238a9cdbf070948b4e341674679`  
		Last Modified: Tue, 27 Oct 2026 18:34:05 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66177e6eb69ce13ccc87742536dbef7b5fce6dfe32cd050e5d35450cebadea2f`  
		Last Modified: Tue, 27 Oct 2026 18:34:12 GMT  
		Size: 101.9 MB (101913222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ac0c235ba194a641bf143f5232a53e6e901a8c6e8234d3dacba966fb4ce163`  
		Last Modified: Tue, 27 Oct 2026 18:34:05 GMT  
		Size: 101.2 KB (101175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
