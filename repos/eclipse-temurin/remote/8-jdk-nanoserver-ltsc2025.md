## `eclipse-temurin:8-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:5c2bb6335a269cd2bc896497c6921a740ef4cc456af6fd9184a5167adc6f7838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `eclipse-temurin:8-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:c344cc823e57098f855702afb356b7a54ebaedc785ac641bc05656780ff44505
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.0 MB (301964408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc77b041cb559e6fc88a700b0bb177545247c944fd78c487878c7288924d85ff`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Wed, 14 Oct 2026 00:18:11 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:18:11 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 14 Oct 2026 00:18:11 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 14 Oct 2026 00:18:11 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:18:19 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:18:19 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:18:34 GMT
COPY dir:2f81b6f86c0792931be4477281229eea743ca9e82e883595a621ccf3a9f5df80 in C:\openjdk-8 
# Wed, 14 Oct 2026 00:18:39 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5c51bddd67580ccda585ba903b31f9983d29ea9ffc21a326acb6799dcec750`  
		Last Modified: Wed, 14 Oct 2026 00:18:45 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776c4b35806c6c621243636b3d5879b87d741547313d3f8e703355e59232662f`  
		Last Modified: Wed, 14 Oct 2026 00:18:45 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5a65d40bba4b2a3a889104e3efa9ab637ed242d3f192cd2678235ba10e6126`  
		Last Modified: Wed, 14 Oct 2026 00:18:45 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a69bbfef6744faaf57ec437586f4377d8118042231b702c0f58cf5dd725557a`  
		Last Modified: Wed, 14 Oct 2026 00:18:43 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad5f7774fae30f2e519d5a0dc02d6f6fae218ea8360ff9556cfc06d6e85474f`  
		Last Modified: Wed, 14 Oct 2026 00:18:43 GMT  
		Size: 72.8 KB (72846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c274a0f306d6f19fdb41e07dfe257d9aafc6d906edd18a05c66bf0eb0660d07c`  
		Last Modified: Wed, 14 Oct 2026 00:18:43 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b859437c1a573ffce8ea4f86dab68e72cdd047a40997b2dcf48e083cc97f8f`  
		Last Modified: Wed, 14 Oct 2026 00:18:49 GMT  
		Size: 101.9 MB (101912960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b3f516127642c7f198c7fbd18e969207a5a044bc47ef4da48ba0d28bd80641`  
		Last Modified: Wed, 14 Oct 2026 00:18:43 GMT  
		Size: 102.2 KB (102189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
