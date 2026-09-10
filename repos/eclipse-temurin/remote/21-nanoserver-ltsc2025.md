## `eclipse-temurin:21-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:2da61b59063ae7c69bb8a187c311af92667a3cc6751cf642fc216fc6f51393a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:21-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:766a05f6131309748d1b70171f59e4a3069519f52dafee7e7e7b80e400dc1d10
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.7 MB (399715145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5eeb844330f8df9affb7b8efac6edeb4436904c2e4e47a4a0f289152a721f1c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Wed, 09 Sep 2026 23:23:31 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:23:31 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 23:23:32 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 09 Sep 2026 23:23:33 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:23:38 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:23:38 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:24:16 GMT
COPY dir:0834ce0442693c0f1f088bdbe5aa2e6929b552bb7d2fb8becac9a5b90ee9dea0 in C:\openjdk-21 
# Wed, 09 Sep 2026 23:24:22 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 09 Sep 2026 23:24:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd84e1ef79c09956cb4c012e3b8cb3d1f3d7a48ec5103d811ccc56c52f2f5c8`  
		Last Modified: Wed, 09 Sep 2026 23:24:30 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627f4ca2e9ab2bb8a489c61a575f4e1c83c4366e4fa735d0df2f768ece0b5954`  
		Last Modified: Wed, 09 Sep 2026 23:24:31 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479f16754453d54ccb10fa3bee45bd960c75dab22f536726262eb33e48d75a9b`  
		Last Modified: Wed, 09 Sep 2026 23:24:30 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a5b0f1ec9d55bf98344bae46b5b783c311b8b9f26cba1523f0eeaf34895d7c`  
		Last Modified: Wed, 09 Sep 2026 23:24:30 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea2d503c3a8855fee9440f358b74b9fcc91f39717f6bd7b9d85524a676dd1dc`  
		Last Modified: Wed, 09 Sep 2026 23:24:29 GMT  
		Size: 71.8 KB (71755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4000aa9cf17ed400d03014bcec93213883e68910e8843f7a2a6f7a8b4e2406bb`  
		Last Modified: Wed, 09 Sep 2026 23:24:29 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b37e55becc843660ffd3162129d7d963d6b1873bcd9a4ce4eb75c7933a1fbda`  
		Last Modified: Wed, 09 Sep 2026 23:24:40 GMT  
		Size: 201.9 MB (201874728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db4ddfc8a87c3d028392736ccce8e47993850d7e74d857ba5146c413966fbd86`  
		Last Modified: Wed, 09 Sep 2026 23:24:29 GMT  
		Size: 111.9 KB (111918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698ce24f418f0f7edf490f1e87fd30b1a58173bf684390e475c0a280f2da7f84`  
		Last Modified: Wed, 09 Sep 2026 23:24:29 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
