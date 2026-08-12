## `eclipse-temurin:26-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:4b3633b045121d4611ed25ac9fde5d4b5372bedecd6b589a077d713a81ebd49e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:26-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:ac9e2c2b3169db7f117439f39d2662e6ba3066e2de4d95d593a09a01823b63bd
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338946803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7321c5900514370f79f205811f71f0b251aa8c9970ebd58425eaae9c46179e9`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 18:20:14 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 18:22:53 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Wed, 12 Aug 2026 18:22:53 GMT
ENV JAVA_HOME=C:\openjdk-26
# Wed, 12 Aug 2026 18:22:54 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:22:56 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 18:22:56 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:23:13 GMT
COPY dir:254440c2db85c674475ced33fb249e9ba634466f55592d23f645db2e3bf929d7 in C:\openjdk-26 
# Wed, 12 Aug 2026 18:23:17 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 12 Aug 2026 18:23:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49706406d36e17110c3499ee64e0e41d65231888170ac8cf2df94351a6f15743`  
		Last Modified: Wed, 12 Aug 2026 18:21:12 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:362a1fcd2749601a206798c3a22710ab1e44e9e5fdd6e3fd1cbc677730ce4033`  
		Last Modified: Wed, 12 Aug 2026 18:23:24 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308d8c910586c831c414d11dec47b773e7ae4c7893c7d79ba6a3852933af62e9`  
		Last Modified: Wed, 12 Aug 2026 18:23:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b17bd6bc1b0b702fe6fd955c5b05930bd8a8e2c7db20cf9ce71e3fca2fe4c95`  
		Last Modified: Wed, 12 Aug 2026 18:23:24 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933d686a20f8ee74e1b6504849eb1aeba1f075261eaef146b8495ab8ebb91bf2`  
		Last Modified: Wed, 12 Aug 2026 18:23:22 GMT  
		Size: 73.0 KB (72990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b8936ce87ae68ef2b49768cc38f115ee2e3c71c75997b8c6fd3e7990b2a08f`  
		Last Modified: Wed, 12 Aug 2026 18:23:22 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62905fe0adc0ce224bf4ec09a40ce49e1a0f4a3a80d53e403421ba2cb4b6f8d9`  
		Last Modified: Wed, 12 Aug 2026 18:23:33 GMT  
		Size: 141.3 MB (141273173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2893cf10a39384954c072f172f632fed5a837ebfd8a64ed178b4d32682f29810`  
		Last Modified: Wed, 12 Aug 2026 18:23:22 GMT  
		Size: 112.2 KB (112205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e090a53f44d874da211cfd800fe2d1d3edd25ec67217efdfeac0f5408aa18aba`  
		Last Modified: Wed, 12 Aug 2026 18:23:22 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
