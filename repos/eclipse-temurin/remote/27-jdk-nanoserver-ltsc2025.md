## `eclipse-temurin:27-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:ae7191a8d0efe5136c44cad5c977269ba15d8c1f6b623ee880f99cc487fcead0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:27-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:c72c57c61218b916e820a7d44f5278c21c4d1640f576193af3986409607d3483
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.9 MB (339897102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46e2396a55357142367c1a73806b7170001bb51ee97f90735770effdb59021a1`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Mon, 09 Nov 2026 23:48:52 GMT
SHELL [cmd /s /c]
# Mon, 09 Nov 2026 23:55:53 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:55:53 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 09 Nov 2026 23:55:54 GMT
USER ContainerAdministrator
# Mon, 09 Nov 2026 23:55:55 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 09 Nov 2026 23:55:55 GMT
USER ContainerUser
# Mon, 09 Nov 2026 23:56:10 GMT
COPY dir:041fe613e042f012223ab1e1c125a8deb708fca71df02a9b28a463aa3361bff9 in C:\openjdk-27 
# Mon, 09 Nov 2026 23:56:14 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Mon, 09 Nov 2026 23:56:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8aba469b7bef38d5608229fa7e6efc7790a1711d41e8ac65164f280384379f`  
		Last Modified: Mon, 09 Nov 2026 23:49:48 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ca6c898babdc49827c5a9526e53906b3239c103c2d1dba004077fbf51fa928`  
		Last Modified: Mon, 09 Nov 2026 23:56:20 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95b37a47dbf82bd4d4b3c78d8473b6e5428ed832dc33c7e5d27b04706eeb036`  
		Last Modified: Mon, 09 Nov 2026 23:56:20 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280f04e7e75662c4f0d3f90490aeb32631d963756f5c8736cbf5e1aaee2aa1c9`  
		Last Modified: Mon, 09 Nov 2026 23:56:20 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf57b84ffb3a8c6f9d2fa0f427b93f9134e285a884b38f0e3f0bb798012ebfe3`  
		Last Modified: Mon, 09 Nov 2026 23:56:18 GMT  
		Size: 71.9 KB (71889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a93f354d9adaad1f8c8bbfbc44039520d640484d8bd4e4f3bf920da4d8a0e8`  
		Last Modified: Mon, 09 Nov 2026 23:56:18 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bc4089dfd52eb66e0db98abe552eea69e9e278c953f0ccfa50ec90e0eed987`  
		Last Modified: Mon, 09 Nov 2026 23:56:28 GMT  
		Size: 139.7 MB (139746578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38547ad65ef53a754353c319359841d01d9affebb63bc3de122623816c85e60`  
		Last Modified: Mon, 09 Nov 2026 23:56:18 GMT  
		Size: 113.3 KB (113313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f06ba3c5f02099ad75a25dec5578e54a8bc113ffa64dd02bce3e6ef2760f13`  
		Last Modified: Mon, 09 Nov 2026 23:56:18 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
