## `openjdk:27-ea-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:3295e98201223ca71001824bec8dbc1f67639064ed13c7c3c7a061835361fb66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `openjdk:27-ea-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

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
