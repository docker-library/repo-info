## `eclipse-temurin:8u504-b01-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:6080726edefce62f5298b62bf8be739087604c817dbfbf7a5d3a295cb8b1e741
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:8u504-b01-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:0afdd155fab3df25b174c37dddeeb66f67aff21c16c127e602889267871be177
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.7 MB (299741258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3bb03e9e8ed33ead81908b450a04bb9076c1764d7e142e9edb6788323560418`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Fri, 25 Sep 2026 22:56:38 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 22:56:38 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:56:39 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 25 Sep 2026 22:56:39 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 22:56:45 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 22:56:45 GMT
USER ContainerUser
# Fri, 25 Sep 2026 22:57:07 GMT
COPY dir:2f81b6f86c0792931be4477281229eea743ca9e82e883595a621ccf3a9f5df80 in C:\openjdk-8 
# Fri, 25 Sep 2026 22:57:12 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9821e8632519385eda2a0573686d80a6e40b5760306a6090a921d4f1a84fd2`  
		Last Modified: Fri, 25 Sep 2026 22:57:18 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d5366150d606a4aa2edec851f30828a738a88344fc16072d60234c44991c20`  
		Last Modified: Fri, 25 Sep 2026 22:57:17 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9f69a450ed521a60e7e67ec15037ac9c8c086f9ba20ca4f05d5a81f142d561`  
		Last Modified: Fri, 25 Sep 2026 22:57:17 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d927ec64102a6b16c94d56e6e40a3a61aa3a58ca4834b49ee549c13b1ae5191`  
		Last Modified: Fri, 25 Sep 2026 22:57:16 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839c87366d877892be77543a07b09f2e742867584a9dcf46214547ee72001cdc`  
		Last Modified: Fri, 25 Sep 2026 22:57:16 GMT  
		Size: 69.7 KB (69698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5f4580041b9305dec18c4b386bc9cb8d6d3418fc0f74419b3c70254d5010d4`  
		Last Modified: Fri, 25 Sep 2026 22:57:16 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262846b30853fd5c15649618583549866c7e83945f6053fce7fb11b8fdbd844b`  
		Last Modified: Fri, 25 Sep 2026 22:57:23 GMT  
		Size: 101.9 MB (101913134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01adfce919fe119088a2c3243fb07aa2738a0851c86ce017d6d52cd091abf3fe`  
		Last Modified: Fri, 25 Sep 2026 22:57:16 GMT  
		Size: 102.7 KB (102681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
