## `eclipse-temurin:8-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:43595fb9300e4a28e373a6c92d993a5d9d4979aa1e49c8c818dc61cac928f92e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:8-jre-nanoserver` - windows version 10.0.26100.33438; amd64

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

### `eclipse-temurin:8-jre-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:618cab9d05202134c07909d31998ba08cead276743fbf0ec199ca62eed507de6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164802171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d719b392b80e5fa51caa3deb7615a4094649672940848f1577eafe1a715278e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:20:54 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:20:54 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 23:20:54 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 09 Sep 2026 23:20:55 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:20:56 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:20:57 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:20:59 GMT
COPY dir:2f3bbccf7e2287e97c6411cc76d2cd1301cbec1aff5b5ea1a538254e125c425b in C:\openjdk-8 
# Wed, 09 Sep 2026 23:21:02 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc280a6510bdc979b34bd6dcd8e970e856a223ec67daa4122864e326854eff4`  
		Last Modified: Wed, 09 Sep 2026 23:21:08 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1499f22a3e67c1bfc25af5cf7db678cd41a2d06b37815c12b3a8d425323f7d96`  
		Last Modified: Wed, 09 Sep 2026 23:21:08 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f6b6bca0603039a2627e34ff25b9dcf26736a54bb43dc5d4be2d2aa2b03ecb`  
		Last Modified: Wed, 09 Sep 2026 23:21:07 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9771a4610086049cccfa9e8362a24c393b1f8df0d1e3d1f160380a3307a2fb3`  
		Last Modified: Wed, 09 Sep 2026 23:21:06 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d43b2b0dcf51c7e0616d725d721a6779f734ca25007f46bf6c6d9198d5e885`  
		Last Modified: Wed, 09 Sep 2026 23:21:06 GMT  
		Size: 77.7 KB (77689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b009f7b7810136a14366fb5d236dc414511ae066a3674fa7f54d830423915`  
		Last Modified: Wed, 09 Sep 2026 23:21:06 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29821c43991107f9d21a0fc393762c9c5bb598ef001d68b4a17063333236b37`  
		Last Modified: Wed, 09 Sep 2026 23:21:10 GMT  
		Size: 40.0 MB (39980372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34b0c7f6f50ab2b5b9ee3bf8e325d179fa5678a0fb441c113bb3552b8333817`  
		Last Modified: Wed, 09 Sep 2026 23:21:06 GMT  
		Size: 101.4 KB (101427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
