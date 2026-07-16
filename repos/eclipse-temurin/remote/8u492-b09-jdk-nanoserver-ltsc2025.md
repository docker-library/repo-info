## `eclipse-temurin:8u492-b09-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:7c80c5fb99340ec8005ee770b3b77e371c18aa083b9b51c341214d968a238b2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `eclipse-temurin:8u492-b09-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:4508143ee3a60b70b6e116acebf51320b81b16774f2b605c3df0bb8aebf83460
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.3 MB (299341797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89fdb98509d317d4ccbf07239a0d7c88032e7074cc7ba7a7d7ee4ae32e19a7f8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Wed, 15 Jul 2026 23:56:22 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:56:23 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 15 Jul 2026 23:56:24 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 15 Jul 2026 23:56:25 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:56:27 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 15 Jul 2026 23:56:28 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:56:50 GMT
COPY dir:25077d8770e7edce418eff57fe3a0561246eac55d5c42b7efa90e67ec851bbed in C:\openjdk-8 
# Wed, 15 Jul 2026 23:56:53 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f9d3fe91de185ebc31da497bb384d730f4dd26c0e63146d597be99a5fae63f`  
		Last Modified: Wed, 15 Jul 2026 23:57:00 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976555ddd8e1fb36e83865b81920024ee5d7f846e188e4ed4fbe4f82b5cbf003`  
		Last Modified: Wed, 15 Jul 2026 23:57:00 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e273f536af5026ebd5e00ec4f7833dbd63233c299518a1feb5bb16c821be6b0`  
		Last Modified: Wed, 15 Jul 2026 23:56:59 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415dee7b6536e5d5bfabac7613a2f3be6239e8cf692fe9ff36f74e024ee6e0a2`  
		Last Modified: Wed, 15 Jul 2026 23:56:58 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ec35e027c94e369c39607fcf1e5d5736fc686cae073ddf26ef72d5515bddb8`  
		Last Modified: Wed, 15 Jul 2026 23:56:58 GMT  
		Size: 73.1 KB (73054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3d0cb5e9cb696ec0513a65b44efac90b9c682cb962f95eb0af01fd060ae02f`  
		Last Modified: Wed, 15 Jul 2026 23:56:58 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db1ad2f889bb8b6f3b96e2f8563853842d18288d4ac3f12c013f05a3549a912`  
		Last Modified: Wed, 15 Jul 2026 23:57:05 GMT  
		Size: 101.9 MB (101915987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b8b5c2de8e797e1fe4795ee4d1a162f55fbd2b4be393ac4780540d8edb162d`  
		Last Modified: Wed, 15 Jul 2026 23:56:58 GMT  
		Size: 128.2 KB (128183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
