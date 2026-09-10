## `eclipse-temurin:21-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:426a0143b719062cd0c35bd8f4356af0d2cfffe8ef7b2078eca873d892ff8a4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:21-jdk-nanoserver` - windows version 10.0.26100.33438; amd64

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

### `eclipse-temurin:21-jdk-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:4c3cb904c25f80c29e3228fed67bb21445b0842c3dd65df08a647ab8291fff7c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.7 MB (326704339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f928591d5369a2031383e803dec9ccde052783c76bdefd2df5d79f4aeadc06`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:21:00 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:21:51 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 23:21:51 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 09 Sep 2026 23:21:51 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:21:53 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:21:53 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:22:00 GMT
COPY dir:0834ce0442693c0f1f088bdbe5aa2e6929b552bb7d2fb8becac9a5b90ee9dea0 in C:\openjdk-21 
# Wed, 09 Sep 2026 23:22:06 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 09 Sep 2026 23:22:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bf4bbc6d3d57d9e2d4bf255e66a33386c44201e91ea9b28f1fc9d549d9a882`  
		Last Modified: Wed, 09 Sep 2026 23:21:16 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10db1d4c19af492ed4bcd46ffc2650133a36fd2ad2c905e1faf7c5805fa65077`  
		Last Modified: Wed, 09 Sep 2026 23:22:14 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a3b21f9091b1873c8391495a0f72ec43fbf7d981f3293e79b8ebabc2320ec3`  
		Last Modified: Wed, 09 Sep 2026 23:22:14 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ff0e955dc07963d8f2fea6f9686397361bf6e187459b699c4f2eb505452741`  
		Last Modified: Wed, 09 Sep 2026 23:22:14 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f193a50c2f342e12cbd5010dd20c51d019b63a32805f6625a2dbd703ed37a841`  
		Last Modified: Wed, 09 Sep 2026 23:22:13 GMT  
		Size: 78.8 KB (78804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d014b6c479da681cc71861f232613e7ca444398ed3d4bd672373645b8978df`  
		Last Modified: Wed, 09 Sep 2026 23:22:13 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96ab8122791fa1189bc0eaa60917945ca5f575a0f434a22d8398af3a12ccd31`  
		Last Modified: Wed, 09 Sep 2026 23:22:25 GMT  
		Size: 201.9 MB (201874530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eefab484c49df71d18ca0654d6682cb1cf50454998320ff933333b71d596576`  
		Last Modified: Wed, 09 Sep 2026 23:22:13 GMT  
		Size: 107.2 KB (107225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030a585bdcf43dae325af21cadbf905a2ec2b97cac14a16bb77a29843d9011c8`  
		Last Modified: Wed, 09 Sep 2026 23:22:13 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
