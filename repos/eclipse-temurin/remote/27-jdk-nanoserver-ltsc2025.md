## `eclipse-temurin:27-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:574666af6b521c478d5b8b600e0dcabe5e19a7b40420989550248b5dacae234c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:27-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:34b187d43ac3954c0f12bdb1d690ae702abbf9e65432107c61078eda1df6ab37
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340176766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac7d41f2bb964f6fdcd874f1785cfbbfcacb937dc1fb2295738823fa8bade68f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:42:58 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:45:11 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 16 Nov 2026 20:45:11 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 16 Nov 2026 20:45:12 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:45:13 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:45:14 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:45:32 GMT
COPY dir:041fe613e042f012223ab1e1c125a8deb708fca71df02a9b28a463aa3361bff9 in C:\openjdk-27 
# Mon, 16 Nov 2026 20:45:37 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Mon, 16 Nov 2026 20:45:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e262307a2ac242234e678d93452b418d18d63aae1fe7963e60f7d52fb0786620`  
		Last Modified: Mon, 16 Nov 2026 20:43:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711fda81b9b28bb7bac4734c03ab56c2212560e5c2e9ab57813b4672ec25a2b9`  
		Last Modified: Mon, 16 Nov 2026 20:45:43 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c990e573fb21ba6d0ffa56fb024cac4ab95ff2fccd775cbad4eda404bdb0db1d`  
		Last Modified: Mon, 16 Nov 2026 20:45:43 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfcb48e7042e9b6a3536fadc1d7b422211150b74900f2ed8766a8af16cb61e87`  
		Last Modified: Mon, 16 Nov 2026 20:45:43 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1908a7cb75883038046e33618defb5da165421c19bb5464022d14aa5ab6c507d`  
		Last Modified: Mon, 16 Nov 2026 20:45:41 GMT  
		Size: 71.7 KB (71656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb0c0fd55a02ea5676f0f18d11c00b02d023572bcf721f3ea71ff8992b4a73a`  
		Last Modified: Mon, 16 Nov 2026 20:45:41 GMT  
		Size: 1.0 KB (1024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec93cbab2796ee9636741614794675247363f7625673ba79750a6d1348a78174`  
		Last Modified: Mon, 16 Nov 2026 20:45:52 GMT  
		Size: 139.7 MB (139746691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4916b879497832aa4f94bf100471229b30841750e31affb9d2128876d00c29`  
		Last Modified: Mon, 16 Nov 2026 20:45:41 GMT  
		Size: 112.4 KB (112371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca8e6a215f997094989be13b10ccb9c5f3aa095922ffb43680aa604face2e03`  
		Last Modified: Mon, 16 Nov 2026 20:45:41 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
