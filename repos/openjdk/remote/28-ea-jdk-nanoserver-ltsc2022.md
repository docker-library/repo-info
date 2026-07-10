## `openjdk:28-ea-jdk-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:7b7b10f3184e752ab04378e49dc48893eded6b77b3596be0ae505894848fb24d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5256; amd64

### `openjdk:28-ea-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5256; amd64

```console
$ docker pull openjdk@sha256:d55fc415b8580f8b9f3d15097ee3ad4d5cdd1d07af0adad6251e8a80d0b94cb4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.3 MB (348282733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2063bb98851d2a484685c78c69ed8c82591b503e231a182c32d27eb614ffdc16`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 07 Jun 2026 06:26:15 GMT
RUN Apply image 10.0.20348.5256
# Fri, 10 Jul 2026 18:20:27 GMT
SHELL [cmd /s /c]
# Fri, 10 Jul 2026 18:23:37 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 10 Jul 2026 18:23:38 GMT
USER ContainerAdministrator
# Fri, 10 Jul 2026 18:23:40 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 10 Jul 2026 18:23:41 GMT
USER ContainerUser
# Fri, 10 Jul 2026 18:23:42 GMT
ENV JAVA_VERSION=28-ea+6
# Fri, 10 Jul 2026 18:25:19 GMT
COPY dir:3e5a4f6eb880dd82d06d57e8551c032af1385b632bb66c65dd911af65bfb3b33 in C:\openjdk-28 
# Fri, 10 Jul 2026 18:25:28 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 10 Jul 2026 18:25:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8fc8662767a8f63038f8f45ce82f52438fd89b4444ed43648c9e6a7f06330686`  
		Last Modified: Tue, 09 Jun 2026 17:48:06 GMT  
		Size: 124.0 MB (123997505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0202e8f3592e0fa1e17a6c0870fb26acc724dfe75b0fb3912076ce523bc90cbb`  
		Last Modified: Fri, 10 Jul 2026 18:22:53 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637523541a440585972d098271e499335c49d30f4b7f345aea61ecedc61fb765`  
		Last Modified: Fri, 10 Jul 2026 18:25:39 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81717241a600e446819e1ecae160177589b2307017818141851322a4ccf34d5`  
		Last Modified: Fri, 10 Jul 2026 18:25:39 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f55b51198a105edd8b5a715c529e7269d21ab91136ef96e742cf5f79ff8cc`  
		Last Modified: Fri, 10 Jul 2026 18:25:39 GMT  
		Size: 78.6 KB (78642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b1f7aa404dca1ed07052cc4957e35e31f7d2b58cc29e71c6ef191e92e124c`  
		Last Modified: Fri, 10 Jul 2026 18:25:37 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d66a2d4c84378fd67b89f551656657b33e6d7c3d709ce9d55a75f7964121791`  
		Last Modified: Fri, 10 Jul 2026 18:25:37 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78de03536ea8d6a61d57559af4bff1440fb35972c3c40447308d1f9e648fc044`  
		Last Modified: Fri, 10 Jul 2026 18:25:51 GMT  
		Size: 224.1 MB (224061908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37dc80ba5b9bc1bbe754c51875c30b10283b8ea9b2211469757446902f5c8be9`  
		Last Modified: Fri, 10 Jul 2026 18:25:38 GMT  
		Size: 138.3 KB (138290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddefd00ee8790dfea90deece786edc6603e753c77d0a66937cfcfe93061c509b`  
		Last Modified: Fri, 10 Jul 2026 18:25:37 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
