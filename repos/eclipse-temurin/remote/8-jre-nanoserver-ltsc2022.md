## `eclipse-temurin:8-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:5bf763eba3574a0580da0404f9535dc0b2176cb7efd197b48282864069bc4349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:8-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

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
