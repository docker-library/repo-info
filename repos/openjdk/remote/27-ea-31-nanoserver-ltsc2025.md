## `openjdk:27-ea-31-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:30f3a9ce08548c8f540030a31ac12b341110e551ecccf6f32251f9c28f1404b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:27-ea-31-nanoserver-ltsc2025` - windows version 10.0.26100.33158; amd64

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
