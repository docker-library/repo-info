## `eclipse-temurin:26-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:b91262dc19398c3c50fb784535387e3ac7150b6d9d329816edb118ca8758c473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:26-jre-nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:1dc1768abb2d3e87273e5869d5dc71f4f6230f533763e8305a5a1be2c9309390
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258084482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9994ec7ea3046c0c5f3a5cf8b507cc5086c4b5ea08bc9500604ab6078d3aa0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Fri, 25 Sep 2026 22:56:27 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 22:57:20 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:57:20 GMT
ENV JAVA_HOME=C:\openjdk-26
# Fri, 25 Sep 2026 22:57:20 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 22:57:22 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 22:57:22 GMT
USER ContainerUser
# Fri, 25 Sep 2026 22:57:34 GMT
COPY dir:4fa11c2d1d3954c333627983ea16adf3126c426e2101995a1de119866b2233a8 in C:\openjdk-26 
# Fri, 25 Sep 2026 22:57:37 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7913f40ea1c6bb2cb9b9a92bf93550fb4d611333a774a6d9e242699c44b119`  
		Last Modified: Fri, 25 Sep 2026 22:56:58 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f849946f14ae77ff0d08352167193768b54acb5fb79f64f4961ae388c0d776`  
		Last Modified: Fri, 25 Sep 2026 22:57:42 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf3fdd639eb8662f47b95f9320e2d8b8ad66087d42a8966cc28b51834395d7e`  
		Last Modified: Fri, 25 Sep 2026 22:57:42 GMT  
		Size: 1.1 KB (1085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dfb797a94618664d5b379b55e09382e2f4acf602730e79ebfe1c43f73af23b4`  
		Last Modified: Fri, 25 Sep 2026 22:57:41 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9494cf289b35f2f6a5287f6e1899ae3193ffd2e882981bf1d5ea34c80fa22b`  
		Last Modified: Fri, 25 Sep 2026 22:57:41 GMT  
		Size: 71.7 KB (71683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f942bbe38aa6929be9d7883fe185572bbb7ee1ca71b01684ba4db54aca78ef9`  
		Last Modified: Fri, 25 Sep 2026 22:57:41 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21092ace890996dafd56cdc6e1ff7e74942609e7e4bd5f44ed4298d40990771d`  
		Last Modified: Fri, 25 Sep 2026 22:57:48 GMT  
		Size: 60.2 MB (60244565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ac5d96dfa192573018d0a7e10e0cf0f84472f78c7397cb5978c47aecc6f9bc`  
		Last Modified: Fri, 25 Sep 2026 22:57:41 GMT  
		Size: 112.5 KB (112490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
