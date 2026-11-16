## `eclipse-temurin:11-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:d016ba68d30df43f9f7a3f75a3c926007ffcca70399ff74440930a8be696b39c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:11-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:ce4285a4d48d09c866a4b695d7f19a865bbe7e1c5e72fd2abca679eac189092f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.3 MB (395262881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf07b5f07ad846a10c7f2e1551ba5c180364cdf0a3d5ba8d5e95efb9192cb040`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:42:55 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:42:56 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 16 Nov 2026 20:42:57 GMT
ENV JAVA_HOME=C:\openjdk-11
# Mon, 16 Nov 2026 20:42:57 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:43:06 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:43:06 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:43:55 GMT
COPY dir:b2a9c02cf7043eaf69305b168557ff2023c509d078176e53125d7b39898c1c89 in C:\openjdk-11 
# Mon, 16 Nov 2026 20:44:02 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Mon, 16 Nov 2026 20:44:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee99294198fd38da376a2b225fdcbc8c0de22ed4b38db3977fceb35d6903b5bc`  
		Last Modified: Mon, 16 Nov 2026 20:44:08 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfd03489c3402acae6adbb9c7ebf57c5d0c6f4980bcd643928bdb87a93784e5`  
		Last Modified: Mon, 16 Nov 2026 20:44:08 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b91b152671b34420684050d0259d002e0c3b8284e81017d7ced4da0412a3c8`  
		Last Modified: Mon, 16 Nov 2026 20:44:08 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325a0227907b3df4735b65707d579d2638a9a8ba963e4a4d019770e07c266caf`  
		Last Modified: Mon, 16 Nov 2026 20:44:08 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e2e04a2730f64829b676c632a9f3fd976f4e8865497146e008236bdf82de5`  
		Last Modified: Mon, 16 Nov 2026 20:44:07 GMT  
		Size: 70.6 KB (70630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187eb3075fcf97859e4f0f48b75e3cfdb0c4d19ea1ca8c3414fc0d70ecc78c31`  
		Last Modified: Mon, 16 Nov 2026 20:44:07 GMT  
		Size: 1.0 KB (1023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cd1e3a3ca67e0ba5d976d599e2425616ddc6a10c7bd45a86f598d59cfa3ab2`  
		Last Modified: Mon, 16 Nov 2026 20:44:17 GMT  
		Size: 194.8 MB (194843336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc2bce70fe1f77daa78174f6e492d405fb1f6f5340bab75462713e55e84fc`  
		Last Modified: Mon, 16 Nov 2026 20:44:07 GMT  
		Size: 102.9 KB (102893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48a5a100b2275384f2b057dd80ff13700cdedefd7ef9481d32049d6f725ac3`  
		Last Modified: Mon, 16 Nov 2026 20:44:07 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
