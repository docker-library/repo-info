## `eclipse-temurin:8-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:4674fdc169ae2b9f86596646abd692a3f2b6fbc4ea1e347f7ee3758f86d8c8fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:8-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:01c9832f6b016cd1e5ae3ccdd452ec18139ff295b6eb957fe98fae3fe254886b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237809757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe7741c6b2c6c234f82eb6452e96ee62511f3e90040a382b3f5de827ece0fd0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Wed, 09 Sep 2026 23:22:43 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:22:44 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 23:22:45 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 09 Sep 2026 23:22:46 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:22:54 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:22:56 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:23:09 GMT
COPY dir:2f3bbccf7e2287e97c6411cc76d2cd1301cbec1aff5b5ea1a538254e125c425b in C:\openjdk-8 
# Wed, 09 Sep 2026 23:23:15 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab53c7008b343c971bca6865144e9cf92150fc336a4eb083601bf2ef7f6a6c4`  
		Last Modified: Wed, 09 Sep 2026 23:23:21 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876b08eddd5bdcdcc7b5ded599c3d1ecb6c74c34626b568d6d82feb48f784468`  
		Last Modified: Wed, 09 Sep 2026 23:23:21 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd168209ab65f36a09642e8d35e9b6ad384d785b354ca55262d452ae785f892`  
		Last Modified: Wed, 09 Sep 2026 23:23:21 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b25b0d361d329382695adea2fbaec8a09d265501963eae308bddd93cc40cbf0`  
		Last Modified: Wed, 09 Sep 2026 23:23:20 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa93a97d5007f5e7e87709f5f6bd5a651e434f17924a2afc98ba0cad52c9c90`  
		Last Modified: Wed, 09 Sep 2026 23:23:20 GMT  
		Size: 70.5 KB (70472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1790f85f6c89556130b66becc46eadfdcbd1d4914af66005e7ea4433e4e22f`  
		Last Modified: Wed, 09 Sep 2026 23:23:20 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfebc19b438948063e4ca905af6fdd89e56423e72651c2dd98c8e6b53e1baa28`  
		Last Modified: Wed, 09 Sep 2026 23:23:24 GMT  
		Size: 40.0 MB (39980792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd9135a0046feaba1e3be4a779b7097006b70c30e7ce25d2b70cac713c3b526`  
		Last Modified: Wed, 09 Sep 2026 23:23:20 GMT  
		Size: 102.8 KB (102777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
