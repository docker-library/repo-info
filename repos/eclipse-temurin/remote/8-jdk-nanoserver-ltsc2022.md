## `eclipse-temurin:8-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:0d711bf6a90af6efd24f39c6e6a6d0b6ca588516392b9a6aea3479398158e726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:8-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

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
