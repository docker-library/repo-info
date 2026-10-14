## `eclipse-temurin:8u504-b01-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:d5e23b87a7ba8c28368e883cd4e0f97ddc26204774b12dffa4c0ac11edec9ccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:8u504-b01-jdk-nanoserver` - windows version 10.0.26100.33650; amd64

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

### `eclipse-temurin:8u504-b01-jdk-nanoserver` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:0f0cc16891a3bcec1536f8c5d613e6c125f06bb29021a4d16dcef84f1e96fcb1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.9 MB (227907300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99ddf0a35a868463ba90184d6c0843ac2aa0cb787c32834e42356c0b6659b1c7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:18:24 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:18:24 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 14 Oct 2026 00:18:25 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 14 Oct 2026 00:18:25 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:18:27 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:18:28 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:18:47 GMT
COPY dir:2f81b6f86c0792931be4477281229eea743ca9e82e883595a621ccf3a9f5df80 in C:\openjdk-8 
# Wed, 14 Oct 2026 00:18:51 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fd6a1b6f3ff80e2df31e6dcd4c68da49d79c93834f2d34f03f2009647a2a52`  
		Last Modified: Wed, 14 Oct 2026 00:18:56 GMT  
		Size: 1.0 KB (1029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e495a04ffa012e836caa24a1e3c9d9a93b1badb6c3083816b0dd31672425e6`  
		Last Modified: Wed, 14 Oct 2026 00:18:56 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad35dbe4069cdbe371afc31acdd2287754f674d183623ad3259fc0bbda5d2c5f`  
		Last Modified: Wed, 14 Oct 2026 00:18:56 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d444640debb0dae88f551648a4145f49768d0c38fbb82e1d825043f06a361621`  
		Last Modified: Wed, 14 Oct 2026 00:18:55 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1162829652595ffb8eb37f8c54f3340f423626e4b8505574dd8be2c74a257eef`  
		Last Modified: Wed, 14 Oct 2026 00:18:55 GMT  
		Size: 85.2 KB (85188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09479f56f6805374c562d3472194817564ce5b7c728232b6ba713dee44601533`  
		Last Modified: Wed, 14 Oct 2026 00:18:55 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb26c1d112a0e9839c1e3e347c0be45de157218e4ec657c3c7ae9b3829a0dbaf`  
		Last Modified: Wed, 14 Oct 2026 00:19:02 GMT  
		Size: 101.9 MB (101913040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f792fd9e5a38b91d8369b655e4e86e821ba0606240563509539242cb3a546`  
		Last Modified: Wed, 14 Oct 2026 00:18:55 GMT  
		Size: 107.8 KB (107827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
