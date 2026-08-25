## `openjdk:28-ea-12-nanoserver`

```console
$ docker pull openjdk@sha256:84e4371b35be2637dc308f24145d60fe1e11b02b3d9bc702764626806974753f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-12-nanoserver` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:acae48028f9ce6609ff90b8bf9bbfca1fe8d84b4f64c5ca3438dd1db39ce1372
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.8 MB (436760424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7748277616bc15d3267a2c737a150cf7697083aa06a4e3c5140744a4f25f952`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Tue, 25 Aug 2026 19:13:56 GMT
SHELL [cmd /s /c]
# Tue, 25 Aug 2026 19:13:57 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 25 Aug 2026 19:13:58 GMT
USER ContainerAdministrator
# Tue, 25 Aug 2026 19:14:12 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 25 Aug 2026 19:14:12 GMT
USER ContainerUser
# Tue, 25 Aug 2026 19:14:13 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 19:15:34 GMT
COPY dir:f10e9aca416bf160e5aeafdcba9c9943207253ecab544e71f088fde9cf6a30c2 in C:\openjdk-28 
# Tue, 25 Aug 2026 19:15:42 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 25 Aug 2026 19:15:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0bc1a50a6698fbd3aad83061e201e4af4ac0fff31b007f0315653b0390302`  
		Last Modified: Tue, 25 Aug 2026 19:15:55 GMT  
		Size: 1.0 KB (1029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e61a511186a9e72ecfdc2f58024a2a74cbb729814ee7dae43acad05659d0eb`  
		Last Modified: Tue, 25 Aug 2026 19:15:55 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00d70edab4a6cf612e12a116383d5e281d3160a68dbea0ffdd58c952198573a`  
		Last Modified: Tue, 25 Aug 2026 19:15:55 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d44a103cf202e28320a86d09d08a42520e58bf238b0e744ef474d9518487f85`  
		Last Modified: Tue, 25 Aug 2026 19:15:55 GMT  
		Size: 77.6 KB (77629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4b026bda26581130e1c3096f406b7c72d18146632d7dbcd6248df31ff9186d`  
		Last Modified: Tue, 25 Aug 2026 19:15:53 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b88a514e8cb7d27e63c0961bd81501f9371f20a5a676cc5913f32a35bea6666`  
		Last Modified: Tue, 25 Aug 2026 19:15:53 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13ae0863c43f55fbbe97a064c89e14788e03bef396d0071f744e4b34b5c3322`  
		Last Modified: Tue, 25 Aug 2026 19:16:10 GMT  
		Size: 239.1 MB (239097039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98e38bd2bbc09d90e77783276eee3112b825947b2a5c2e24eb941465450b89b`  
		Last Modified: Tue, 25 Aug 2026 19:15:54 GMT  
		Size: 97.4 KB (97368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c58c4b35d968ca304624869af3d3be12230c439d46b10ea8f414e5dba6cae0`  
		Last Modified: Tue, 25 Aug 2026 19:15:53 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-12-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:b5ed7c865b7f1d171245401e3ad679cade680cb19242a5f5671739a850de417e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.5 MB (363533075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415ca844459dca9c750a5c7271e4b71393d0db69ee7a45a2671a14bb24357c58`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Tue, 25 Aug 2026 22:00:46 GMT
SHELL [cmd /s /c]
# Tue, 25 Aug 2026 22:00:47 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 25 Aug 2026 22:00:48 GMT
USER ContainerAdministrator
# Tue, 25 Aug 2026 22:01:04 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 25 Aug 2026 22:01:05 GMT
USER ContainerUser
# Tue, 25 Aug 2026 22:01:05 GMT
ENV JAVA_VERSION=28-ea+12
# Tue, 25 Aug 2026 22:02:29 GMT
COPY dir:f10e9aca416bf160e5aeafdcba9c9943207253ecab544e71f088fde9cf6a30c2 in C:\openjdk-28 
# Tue, 25 Aug 2026 22:02:35 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 25 Aug 2026 22:02:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476e091b1041c5b9ae86a694b4c777d275852d34bed04204e6a687887a85a9d4`  
		Last Modified: Tue, 25 Aug 2026 22:02:48 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9fe92288ca16afdd53ad327e9ef00b374221fa82e2ae5a05f8c9ee9baba12ea`  
		Last Modified: Tue, 25 Aug 2026 22:02:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f30d21d261c0f6e6eb8eb301cef1a8b0bd16aef919ccaa0c87f9a50799db762`  
		Last Modified: Tue, 25 Aug 2026 22:02:47 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481410cf33ccf62e4f80b4526f440af514c55b131dc2a3ca49c23f301810ff95`  
		Last Modified: Tue, 25 Aug 2026 22:02:47 GMT  
		Size: 82.3 KB (82350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db19131de044e32ea7b28f5f04cb25bf195c6a26b55936a13957121a24909cb`  
		Last Modified: Tue, 25 Aug 2026 22:02:46 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbfc8610b1b19da8d90919bbca6a4e6bca5bc454c206649f53f8e6d72541aff`  
		Last Modified: Tue, 25 Aug 2026 22:02:46 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d0895fad38859b9b7d37c6957ee9db87e8a981a4d44356246f166588906177`  
		Last Modified: Tue, 25 Aug 2026 22:03:01 GMT  
		Size: 239.1 MB (239097269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4e777c5c7f351514df7b9552bb1bc4e8c2f2c61186be737eeb168a3566559c`  
		Last Modified: Tue, 25 Aug 2026 22:02:46 GMT  
		Size: 89.2 KB (89189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828e27e4c1b0b66f6b4b698509b929ff87949c75fed1a39ca286166b6476dff8`  
		Last Modified: Tue, 25 Aug 2026 22:02:46 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
