## `eclipse-temurin:8u504-b01-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:3820e3340de294d0dd80924b238c2dce1a88db60b0d257ae7b51985a5bcef29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:8u504-b01-jdk-nanoserver` - windows version 10.0.26100.33438; amd64

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

### `eclipse-temurin:8u504-b01-jdk-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:7da391999434990fcb5606f9a9be682f9cdded327a0ed8af7410c93c3a3de9bd
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226731033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db00782350975c70d854d4e4155c9c14bf778556e5ecb212e65f14cbbaae11fd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Fri, 25 Sep 2026 23:13:58 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 23:13:58 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 23:13:59 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 25 Sep 2026 23:14:00 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 23:14:08 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 23:14:08 GMT
USER ContainerUser
# Fri, 25 Sep 2026 23:14:28 GMT
COPY dir:2f81b6f86c0792931be4477281229eea743ca9e82e883595a621ccf3a9f5df80 in C:\openjdk-8 
# Fri, 25 Sep 2026 23:14:31 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
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
	-	`sha256:080c8950f140ebea5962af9332e96d415b714a22a887df7fa77f54ab164dc4df`  
		Last Modified: Fri, 25 Sep 2026 23:14:36 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e760cc948054f1e0ad52b3a5539314ef9f4c34624342a31a04cade7d91ecc8`  
		Last Modified: Fri, 25 Sep 2026 23:14:36 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b739ae3a6187e6c1bf8a8c8abb0518812f767586a2f2f8258c87055fb740e287`  
		Last Modified: Fri, 25 Sep 2026 23:14:35 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a74946407e24826132aba080df72573e01a19f5162d1c2dc8c31fd28ee63758`  
		Last Modified: Fri, 25 Sep 2026 23:14:35 GMT  
		Size: 79.2 KB (79184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ce453e7d90039d85d00c76ab88f59a25ce4f13447eecd30ac9e010ab566da6`  
		Last Modified: Fri, 25 Sep 2026 23:14:35 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec44ef8836eb27d7af17c38086dd6727f6c43773050cc742da8fccfe8421a017`  
		Last Modified: Fri, 25 Sep 2026 23:14:41 GMT  
		Size: 101.9 MB (101913256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386cf64b89bf8311d01d8a9c2ce77f04784501b2828196de2d9b897d89dd394f`  
		Last Modified: Fri, 25 Sep 2026 23:14:35 GMT  
		Size: 95.9 KB (95856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
