## `eclipse-temurin:11-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:111f5d76ae97a2bef700d6be42b20abf37bc2785db8c355263954a8de8b7bb92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:11-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

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
