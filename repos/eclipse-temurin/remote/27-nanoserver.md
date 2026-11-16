## `eclipse-temurin:27-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:8dfcf222a16c9af6f0025f7e96fe816246aa5c1583a5dfb5e973b6ba04e7fd5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:27-nanoserver` - windows version 10.0.26100.33828; amd64

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

### `eclipse-temurin:27-nanoserver` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:faaa30a5c3de15cab57cade203d43d5e1c65bc8b931fc81eec450e53f94d8748
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266214202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23fb96b78ab30de67231066ec8448531d62cde8ce7b2fde77953ae47d7ee7a37`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 20:35:14 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:36:12 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 16 Nov 2026 20:36:12 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 16 Nov 2026 20:36:12 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:36:14 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:36:14 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:36:21 GMT
COPY dir:041fe613e042f012223ab1e1c125a8deb708fca71df02a9b28a463aa3361bff9 in C:\openjdk-27 
# Mon, 16 Nov 2026 20:36:25 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Mon, 16 Nov 2026 20:36:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1aa6dfe7740cf77c51413559ef3101c3a5cecead942a1bc12b99d879ed05b0`  
		Last Modified: Mon, 16 Nov 2026 20:35:35 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a006bc3fc1d79d39b9e29f8ddabd2b3091b43fc5497dde40950e60191553586d`  
		Last Modified: Mon, 16 Nov 2026 20:36:31 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aefe0155e23f1d71235ec28c0b96e60bf7cd50a8f4a63e7f56a7790bac120ff9`  
		Last Modified: Mon, 16 Nov 2026 20:36:31 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c59e50798d5f75c2069d22f8458807f1f98d81411e41815e74d0d99e33ce8d4`  
		Last Modified: Mon, 16 Nov 2026 20:36:31 GMT  
		Size: 1.0 KB (1028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf35fd5e1fb71a28c1098e130429f7e5d67bed532771a50db6e6e43df7138e4`  
		Last Modified: Mon, 16 Nov 2026 20:36:30 GMT  
		Size: 77.8 KB (77776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81060adcd5b911f517203abd513fe18e730276d4f317bb4d33a8b405fd2a783e`  
		Last Modified: Mon, 16 Nov 2026 20:36:30 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae76d08c9b976ade6c2f60571e65a34f316e5e26ac022bff6ad03a6e8109174`  
		Last Modified: Mon, 16 Nov 2026 20:36:40 GMT  
		Size: 139.7 MB (139746716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ff58e65494fad7ad9779b301ac91497d1067b1b33ceb385f4ed63ba2698226`  
		Last Modified: Mon, 16 Nov 2026 20:36:30 GMT  
		Size: 109.5 KB (109519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c34add8a7edb54da9c5eaa025b29b65a1ebb9c3386027d808785ee8ef0e1865`  
		Last Modified: Mon, 16 Nov 2026 20:36:30 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
