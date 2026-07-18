## `openjdk:27-ea-nanoserver`

```console
$ docker pull openjdk@sha256:4e9625a5475103b9cc161848dccd6b303d7fa3f1271a5b5d922079ec0a5447c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:27-ea-nanoserver` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:1764ba16f4b7b238d6e0cc8512f17612fb1ea2680491ed382af237c7f48ae367
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420535386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33e21a51e83d3981856bae164a84235ae2ada405703ba132ff46e5161a221570`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Fri, 17 Jul 2026 23:15:09 GMT
SHELL [cmd /s /c]
# Fri, 17 Jul 2026 23:15:11 GMT
ENV JAVA_HOME=C:\openjdk-27
# Fri, 17 Jul 2026 23:15:12 GMT
USER ContainerAdministrator
# Fri, 17 Jul 2026 23:15:31 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 17 Jul 2026 23:15:33 GMT
USER ContainerUser
# Fri, 17 Jul 2026 23:15:34 GMT
ENV JAVA_VERSION=27-ea+31
# Fri, 17 Jul 2026 23:16:45 GMT
COPY dir:b79402c982cc5a6bb8a46a852f3c567cb68a1936ed8d4fd527eb221bfebd79f1 in C:\openjdk-27 
# Fri, 17 Jul 2026 23:16:54 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 17 Jul 2026 23:16:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a60115824657f0113a6d552fc45abf850b63918064a8155209f9b73ceb6bed`  
		Last Modified: Fri, 17 Jul 2026 23:17:01 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c000e4b118dc2a1cd1fb59e1556362ecba9c3ed6caa05da77017cab18c521f8f`  
		Last Modified: Fri, 17 Jul 2026 23:17:01 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab558aae6e4947a3735845979e9d845243acfe37611434ca3a7d3aa67cd80bb6`  
		Last Modified: Fri, 17 Jul 2026 23:17:01 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8308d18524a89ec65ca92e7bee21b30b5d89ca94c17fdfd870ed3ee8db8dbe15`  
		Last Modified: Fri, 17 Jul 2026 23:17:01 GMT  
		Size: 76.8 KB (76850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ed4bc46d383464bf7a0e49e9d23374259a818adbae6b1066900072dd3ef21f`  
		Last Modified: Fri, 17 Jul 2026 23:17:00 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec90982799558122b25a5c3d0323187dfbe275315b8e4de07e4fab140323f10`  
		Last Modified: Fri, 17 Jul 2026 23:17:00 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d9635780675589223e0df792ab2c99720a24c783334acf32e3302b87efad74`  
		Last Modified: Fri, 17 Jul 2026 23:17:15 GMT  
		Size: 223.1 MB (223135555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d0b8d795064036e578cf8ee496fe7b1cce69597c88136ab6c8848d22cb4e04`  
		Last Modified: Fri, 17 Jul 2026 23:17:00 GMT  
		Size: 97.4 KB (97399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750d06f73ddd6c54294273713252f8ef491c08e5bec767b8753de4d253cddf02`  
		Last Modified: Fri, 17 Jul 2026 23:17:00 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:27-ea-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:948ced89c15349e9c703f31c24ff34137a687de158ce0a8b6a4a0135c7f0dbbd
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.5 MB (347460278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69c9effca369497a1f675c415a1cc96bbcc8e648e44f4188fb12028cef0d2446`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Fri, 17 Jul 2026 23:38:16 GMT
SHELL [cmd /s /c]
# Fri, 17 Jul 2026 23:38:19 GMT
ENV JAVA_HOME=C:\openjdk-27
# Fri, 17 Jul 2026 23:38:20 GMT
USER ContainerAdministrator
# Fri, 17 Jul 2026 23:38:40 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 17 Jul 2026 23:38:40 GMT
USER ContainerUser
# Fri, 17 Jul 2026 23:38:42 GMT
ENV JAVA_VERSION=27-ea+31
# Fri, 17 Jul 2026 23:40:26 GMT
COPY dir:b79402c982cc5a6bb8a46a852f3c567cb68a1936ed8d4fd527eb221bfebd79f1 in C:\openjdk-27 
# Fri, 17 Jul 2026 23:40:39 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 17 Jul 2026 23:40:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddae224543b8e7e7be0037f699010af1b1786a892158384b986af925e8fd9dfa`  
		Last Modified: Fri, 17 Jul 2026 23:40:45 GMT  
		Size: 1.1 KB (1091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d36e3b056e643aaf7543b4ee358d6ade78668a68f056318ea41aa1b9884341`  
		Last Modified: Fri, 17 Jul 2026 23:40:45 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8011a2726b08ffae8d4ccc2e5ec900c3f32b4aeb4b4b2e780af0fa476f972aad`  
		Last Modified: Fri, 17 Jul 2026 23:40:45 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160bd50f414f62c42a3bb518a1677720a141fcf1b21f5046749aecea50238052`  
		Last Modified: Fri, 17 Jul 2026 23:40:45 GMT  
		Size: 87.5 KB (87502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88939ce2c7b2dbde0e591fb08748fd787bf1f2b7bb9696fcb25eeac93f97e92`  
		Last Modified: Fri, 17 Jul 2026 23:40:44 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d8015bf6ae73b9d049c6c424de219cb66750e63dfdad7e1d2822b284193ef2`  
		Last Modified: Fri, 17 Jul 2026 23:40:44 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e9a0a54c9643d35fbe1e03499401efa81066553e06d8046e86d9824aa2a31b`  
		Last Modified: Fri, 17 Jul 2026 23:40:59 GMT  
		Size: 223.1 MB (223135202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074463ac91dbc645e5d09158172fd897c4fdfc52a8e4f270f3a0430c793156f1`  
		Last Modified: Fri, 17 Jul 2026 23:40:44 GMT  
		Size: 128.0 KB (128046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f3859a7e894513dccd1a009e4f8c3e489e89220b107f2419a97c91891efdf1`  
		Last Modified: Fri, 17 Jul 2026 23:40:43 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
