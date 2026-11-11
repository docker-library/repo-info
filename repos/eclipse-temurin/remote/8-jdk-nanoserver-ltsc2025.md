## `eclipse-temurin:8-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:3f33f9dead1aee8f332f5f3896114167a4e747fe12c004f5b9ba3c26a7fd9b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:8-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:37b02e168c27937858b2762a0b47d1c567b936e56a79630bcfa437b655c84912
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302371112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea7752609a7a46479837a76e0386db511805478e7ee51b025f041fa34782c536`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:45:38 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:45:39 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Wed, 11 Nov 2026 22:45:39 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 11 Nov 2026 22:45:40 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:45:48 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:45:48 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:46:20 GMT
COPY dir:5ea7cf21f5771b3d48b8677f1f79659e6f7f03cb212691f126d4def41226d352 in C:\openjdk-8 
# Wed, 11 Nov 2026 22:46:25 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf2c4c4f83e3465e877a3e3fe3ce6a78f4e65c1cd3bb55ed97da3b9a989457`  
		Last Modified: Wed, 11 Nov 2026 22:46:33 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf4dc488c4a41b9ecc2233cc09505b64188fdfd3f1d9e69371bd98f3434823f`  
		Last Modified: Wed, 11 Nov 2026 22:46:32 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78add22b5e2908560eeeca1ce5490b11bfdb8c861c6b6abfb8221de76247eacd`  
		Last Modified: Wed, 11 Nov 2026 22:46:32 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca8e3a960ad03160875d14f524c2db1521ba1eba09afc16a7989198a45fe3e`  
		Last Modified: Wed, 11 Nov 2026 22:46:31 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f43c3ec238ecb4925c74a8f1c831c25c541f0adcea263e6f21f015338d234ae`  
		Last Modified: Wed, 11 Nov 2026 22:46:31 GMT  
		Size: 69.5 KB (69528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a787ff6bce9216ea455ff9971add69d35d518d30551198d3d4947f97367392`  
		Last Modified: Wed, 11 Nov 2026 22:46:31 GMT  
		Size: 1.0 KB (1026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5dcdd21b35c73cf9e3118fb48f3355fddbe6a8f799ecec834da572dd442877`  
		Last Modified: Wed, 11 Nov 2026 22:46:37 GMT  
		Size: 101.9 MB (101941842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011f806fe9748ce0ca73e110517de21c99fb059a8bd1979d979d0f41c409813b`  
		Last Modified: Wed, 11 Nov 2026 22:46:31 GMT  
		Size: 112.3 KB (112255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
