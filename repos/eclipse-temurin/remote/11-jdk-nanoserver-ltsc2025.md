## `eclipse-temurin:11-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:3a69e4ec45b4caf8d147cbf82cd68074ccdf37860beeaa7022eaf06658b62346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `eclipse-temurin:11-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:6bd0e959982d1c8a2bcad99edae9e06e3b5130f9c3c51450752a0d684f7a1f62
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.2 MB (392197866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:567cd9e447b25bd83cdf94482eaf92719e5305f09a2669d8136d486da1d56a7d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Wed, 15 Jul 2026 23:57:07 GMT
SHELL [cmd /s /c]
# Thu, 16 Jul 2026 00:17:33 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Thu, 16 Jul 2026 00:17:34 GMT
ENV JAVA_HOME=C:\openjdk-11
# Thu, 16 Jul 2026 00:17:35 GMT
USER ContainerAdministrator
# Thu, 16 Jul 2026 00:17:36 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Thu, 16 Jul 2026 00:17:37 GMT
USER ContainerUser
# Thu, 16 Jul 2026 00:17:47 GMT
COPY dir:508f69ae524938b28a83a19a9aeade10facf00325b620c7a836698644d966097 in C:\openjdk-11 
# Thu, 16 Jul 2026 00:17:51 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Thu, 16 Jul 2026 00:17:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57025ac4eaf0720225682dd0a032efc6e2d6e1e8c5a6d3e5aa40960095d1bd7`  
		Last Modified: Wed, 15 Jul 2026 23:57:59 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e2fb3abf647a58d4ad61b3e517c8367e214076a3edec66339f67494d4cc4e6`  
		Last Modified: Thu, 16 Jul 2026 00:17:57 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8dee5204a5fae362a5ddcdf255f1af4bcbd87d79756058b1f96b21f8713968a`  
		Last Modified: Thu, 16 Jul 2026 00:17:57 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b81efd2b163f30d022820d697017b6e909eed081b05337d7422ccfc34d0a39f`  
		Last Modified: Thu, 16 Jul 2026 00:17:57 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82c21dc982ca380e99ec65e2103f5a475af456218ffb3b62c91224f56969f45`  
		Last Modified: Thu, 16 Jul 2026 00:17:56 GMT  
		Size: 73.2 KB (73158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d65bad314339090ccd69bcb2975021386d8699f682f26d6b210d4a22179155`  
		Last Modified: Thu, 16 Jul 2026 00:17:56 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048fe55c2eb6705d6c27b80319f44e95e71b992781822cf8a5e1da1ef62230aa`  
		Last Modified: Thu, 16 Jul 2026 00:18:07 GMT  
		Size: 194.8 MB (194785856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7e1dd7c19c8dcc3fd37fc4e4e9fa78ff31fef7a1ef87a4b6377567559001fe`  
		Last Modified: Thu, 16 Jul 2026 00:17:56 GMT  
		Size: 113.2 KB (113232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16aa00a002c7ad5f3cc63d62d04b003a58836c5a4d2637759ec5baafb4646d8`  
		Last Modified: Thu, 16 Jul 2026 00:17:55 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
