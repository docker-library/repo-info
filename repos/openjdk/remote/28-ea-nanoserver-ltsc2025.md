## `openjdk:28-ea-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:81e03d7d853a6c9b68daa5112ec1932f0ff4b5eee03948875c5822f19397d258
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `openjdk:28-ea-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

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
