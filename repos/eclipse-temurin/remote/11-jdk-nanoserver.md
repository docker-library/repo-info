## `eclipse-temurin:11-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:da6f3872681eb91be7ba34afcbac0a5529c89d9d5ef18e48200a86fab9e58a32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:11-jdk-nanoserver` - windows version 10.0.26100.33158; amd64

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

### `eclipse-temurin:11-jdk-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:ed5ffbbc745e632ea38f927b98f993aab7844a5a540fb6c49d47a87b7db5d065
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.1 MB (319078766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d0f51504c74312e3ddc04f1fc88612d6f4645498cdc831daacd5f2de011fce`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:52:34 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:52:34 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 15 Jul 2026 23:52:35 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 15 Jul 2026 23:52:35 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:52:37 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 15 Jul 2026 23:52:37 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:52:44 GMT
COPY dir:508f69ae524938b28a83a19a9aeade10facf00325b620c7a836698644d966097 in C:\openjdk-11 
# Wed, 15 Jul 2026 23:52:49 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 15 Jul 2026 23:52:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0017bba38d18c186be699523bba85321db7186b5fa610c29f8eb3519bf78c0f7`  
		Last Modified: Wed, 15 Jul 2026 23:52:55 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db97f802a4fb67bb9d846ccffda0ef851b8ad4402ad6936fac443cfcbb799d58`  
		Last Modified: Wed, 15 Jul 2026 23:52:54 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a1bf670aa9f5c1f4f69252344ce5a5a1f7dd2b87aa62293fd09c8a5252d312`  
		Last Modified: Wed, 15 Jul 2026 23:52:54 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84cf53f1cb31fd5afb31902c7133416f41ba1d564576af37a9ff3e6aa318b82`  
		Last Modified: Wed, 15 Jul 2026 23:52:54 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab91c8e9c3942f388fcffd4f26477158e13fb4b091542f370839f3724467080a`  
		Last Modified: Wed, 15 Jul 2026 23:52:53 GMT  
		Size: 77.0 KB (76981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd7bd258b75d0d0a1ccee80d8a7a6fd263e64423558c969262bf8d5fdbac365`  
		Last Modified: Wed, 15 Jul 2026 23:52:53 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282826fa9d4d397c5f9f55106aca652df2237eb5bfe45812015dbac8e1a1afdf`  
		Last Modified: Wed, 15 Jul 2026 23:53:03 GMT  
		Size: 194.8 MB (194784925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4a2cc74874a7c77e29a0772ae7985dcbee19c9c988e36b3ae16a0f4e358993`  
		Last Modified: Wed, 15 Jul 2026 23:52:53 GMT  
		Size: 107.4 KB (107389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e57acaf77470540bb9071fa378fcb854138d1ec9f2b43ba0a282b78cde7216`  
		Last Modified: Wed, 15 Jul 2026 23:52:53 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
