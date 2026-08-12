## `eclipse-temurin:8-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:1651710fdd9341f02aad80f4ff7db267306fad94ca86de4fd5437a2efca5a575
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:8-jdk-nanoserver` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:3ecf465133325209585a3f94105b22d1bb0724a51e62c65596950368fb0f8ce2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 MB (299577125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92e82b831c4680965fe918fdb4f150de775491f4096a18361070c72f60efadea`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 18:20:14 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 18:20:15 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 12 Aug 2026 18:20:15 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 12 Aug 2026 18:20:16 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:20:23 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 18:20:24 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:21:02 GMT
COPY dir:25077d8770e7edce418eff57fe3a0561246eac55d5c42b7efa90e67ec851bbed in C:\openjdk-8 
# Wed, 12 Aug 2026 18:21:06 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
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
	-	`sha256:0f891e4de7f96ca1def35aa34eff6ddd13a65c6d79e129839bf86a759ea94fa2`  
		Last Modified: Wed, 12 Aug 2026 18:21:12 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66691ed1ddb27e342ca151ed659c2ac8288a5c26abaaff88949ad1e93eb6d3c`  
		Last Modified: Wed, 12 Aug 2026 18:21:12 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4fafa45655f6be572b8352b113596e0aa9a58ca65c854e8e6dcf5c363423fb`  
		Last Modified: Wed, 12 Aug 2026 18:21:11 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465729dd4eaa0f30de3e4986617c4ef5817cb8cc5b72c72961621216bd608213`  
		Last Modified: Wed, 12 Aug 2026 18:21:11 GMT  
		Size: 76.3 KB (76265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79d7eac3b6265ff7562b40bdf74d0ac873ae969db94c1fb2de33f73a76fa7b7`  
		Last Modified: Wed, 12 Aug 2026 18:21:11 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751e0fa5e7ad5e4e95759a90b3c96aa04450ae071625fc8828e896b256e9b496`  
		Last Modified: Wed, 12 Aug 2026 18:21:17 GMT  
		Size: 101.9 MB (101916106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f0e2a6d403903044405348645f40b3175776c03929c4f7796f8779de699ad3`  
		Last Modified: Wed, 12 Aug 2026 18:21:11 GMT  
		Size: 97.3 KB (97327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:8-jdk-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:38170b06f0a61465b9ab835738c4a1a578fc2e91d448500c61e760bf9a1c5aa4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226387456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba74689a9525540cd20c4a4d1a4b4c2b4ffd3a3dcb3b357521029170e320e16`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 19:16:03 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 19:16:04 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 12 Aug 2026 19:16:05 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 12 Aug 2026 19:16:05 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 19:16:12 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 19:16:12 GMT
USER ContainerUser
# Wed, 12 Aug 2026 19:16:40 GMT
COPY dir:25077d8770e7edce418eff57fe3a0561246eac55d5c42b7efa90e67ec851bbed in C:\openjdk-8 
# Wed, 12 Aug 2026 19:16:45 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98e721ecb6b2574f58c9ab6cecb255f63f217998c3a4b2e8d70363499014d0b`  
		Last Modified: Wed, 12 Aug 2026 19:16:51 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544b5d6e8e0be9b038c1e6656f6f0942557d4cc9c1e7f518130193ffc7ecb3ab`  
		Last Modified: Wed, 12 Aug 2026 19:16:51 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011e6a4dd726d1d2f0dc8fab4c454c609a30385fa124ede73f2ac15141833277`  
		Last Modified: Wed, 12 Aug 2026 19:16:51 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4241a0bd7ae6508116aab0ada3208764d4de9fe4c4d0968724b17c62594464`  
		Last Modified: Wed, 12 Aug 2026 19:16:50 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e377db08c0dc494efbb536ca8b64de4b8cb48894e209cb137de1a18f8950157`  
		Last Modified: Wed, 12 Aug 2026 19:16:50 GMT  
		Size: 80.5 KB (80521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690ef76f4ce5e71eba7800c196056ead43109580fdf186cef9191d01b846ed6e`  
		Last Modified: Wed, 12 Aug 2026 19:16:50 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5505a5ff976160831f059acc9b20494eac74fb0a3955d5d53d705e2afb68673`  
		Last Modified: Wed, 12 Aug 2026 19:16:56 GMT  
		Size: 101.9 MB (101915797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff244742cea1fb2af99b960188666842efef2c7041210ed54b1234f9533a0a1`  
		Last Modified: Wed, 12 Aug 2026 19:16:50 GMT  
		Size: 128.0 KB (127951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
