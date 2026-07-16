## `eclipse-temurin:21-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:a9236326b01ea1e2c62d6e853cda5a68ab965f190ae4afe41a92d44aeccbb8d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `eclipse-temurin:21-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:f4133a8ebf4b7b1478efc63c7058fbaf4b77b7cbe2c15e583cd8a2a63aab1824
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.5 MB (246493602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22586ee2e4b4946232dc4fd1f08c4c2ee5b894b49746da9aaf1aaeec7c6ac38`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Thu, 16 Jul 2026 00:17:37 GMT
SHELL [cmd /s /c]
# Thu, 16 Jul 2026 00:17:38 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 16 Jul 2026 00:17:38 GMT
ENV JAVA_HOME=C:\openjdk-21
# Thu, 16 Jul 2026 00:17:39 GMT
USER ContainerAdministrator
# Thu, 16 Jul 2026 00:17:42 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Thu, 16 Jul 2026 00:17:42 GMT
USER ContainerUser
# Thu, 16 Jul 2026 00:18:00 GMT
COPY dir:4940aac187beb0c950977243d0b1d703fc0231f7cabe77dd307cf1e9c831ffc7 in C:\openjdk-21 
# Thu, 16 Jul 2026 00:18:04 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b45c1c516a0965cc4f20c5d375d14608165af225692a50a8c966737b9999f1d`  
		Last Modified: Thu, 16 Jul 2026 00:18:10 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c26ee43d22027c6bc649277515d533f9e0c321124163aefaa97b77c9a968cd`  
		Last Modified: Thu, 16 Jul 2026 00:18:10 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46444e408262a3e0250e7112c48485ee62e6f79a49e6e5addad91b1873190d8`  
		Last Modified: Thu, 16 Jul 2026 00:18:10 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc454db1bce43d37a4b69aceec36cc0be9faa8d9e05f0fbeb46815617031070`  
		Last Modified: Thu, 16 Jul 2026 00:18:09 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2063661be290612e66e251c96a7e223b174a8a0936d692c3c298adf8a30783`  
		Last Modified: Thu, 16 Jul 2026 00:18:09 GMT  
		Size: 72.6 KB (72616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab36563a6c36bb2fa969e7779e221921c744cb1fb4202aefb699d7bc437a9f86`  
		Last Modified: Thu, 16 Jul 2026 00:18:08 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93afde79381bffd65d4f21f3b96f0f30d40740f37c7503edb5ed6802c510ad9f`  
		Last Modified: Thu, 16 Jul 2026 00:18:15 GMT  
		Size: 49.1 MB (49082789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45ed6852d3594adc41fac0991a5e0e87d14cc22baf188b87e7ee25a6a97db30`  
		Last Modified: Thu, 16 Jul 2026 00:18:08 GMT  
		Size: 113.6 KB (113618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
