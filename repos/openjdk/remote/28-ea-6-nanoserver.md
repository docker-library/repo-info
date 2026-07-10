## `openjdk:28-ea-6-nanoserver`

```console
$ docker pull openjdk@sha256:237a321b16a67ba2f13da11ef15bdaec366297a05bab1fe6358791a00a90a4c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.32995; amd64
	-	windows version 10.0.20348.5256; amd64

### `openjdk:28-ea-6-nanoserver` - windows version 10.0.26100.32995; amd64

```console
$ docker pull openjdk@sha256:a425ae3b7255cde149dac61a748c9be3283a5cd91f99cd00e77010f7e692c73f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.9 MB (420910074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749e73d649e79a77168eb5c48e4629ab352c63bd11d4620d806ed8011620e886`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 07 Jun 2026 07:06:15 GMT
RUN Apply image 10.0.26100.32995
# Fri, 10 Jul 2026 18:15:25 GMT
SHELL [cmd /s /c]
# Fri, 10 Jul 2026 18:15:28 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 10 Jul 2026 18:15:29 GMT
USER ContainerAdministrator
# Fri, 10 Jul 2026 18:15:48 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 10 Jul 2026 18:15:49 GMT
USER ContainerUser
# Fri, 10 Jul 2026 18:15:50 GMT
ENV JAVA_VERSION=28-ea+6
# Fri, 10 Jul 2026 18:17:26 GMT
COPY dir:3e5a4f6eb880dd82d06d57e8551c032af1385b632bb66c65dd911af65bfb3b33 in C:\openjdk-28 
# Fri, 10 Jul 2026 18:17:40 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 10 Jul 2026 18:17:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:64f5cd94d3bcd0fae94830b1fad0f8b3dc33677f8d7dc15c5219b56fe2a6584e`  
		Last Modified: Tue, 09 Jun 2026 22:11:30 GMT  
		Size: 196.7 MB (196668131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931aaee6053f34d27ffb073cc0ebffbf5ba1f6dd8d25520c4694862f6eeb53e0`  
		Last Modified: Fri, 10 Jul 2026 18:17:48 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c091cb746162df32a7eae2423349b9d38a5129a8ff2ce1bcc679bea1f35f9e3`  
		Last Modified: Fri, 10 Jul 2026 18:17:48 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c24b9a56a6d872203b1677b119456d5ab3cd29160198529c4954dace6fde0ed`  
		Last Modified: Fri, 10 Jul 2026 18:17:48 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956cc92bbfc07840bf06a70155e7e7129f1a829d92f16c3b4cfcfa889946f116`  
		Last Modified: Fri, 10 Jul 2026 18:17:48 GMT  
		Size: 70.6 KB (70559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bc33c4b227cbd4db52fa672740243ccfb08cb4e4fd83a3fd5ac35ae7ae192a`  
		Last Modified: Fri, 10 Jul 2026 18:17:46 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c96d1407a116b4a66d8ced3f732d56453f55ac7d558acd7c55b78b3ac0008d9`  
		Last Modified: Fri, 10 Jul 2026 18:17:46 GMT  
		Size: 1.0 KB (1029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f021a914c16c5e12f058eaca7d469f0ff14997da943e972c830303564c248625`  
		Last Modified: Fri, 10 Jul 2026 18:18:00 GMT  
		Size: 224.1 MB (224061982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19eefce739bb38e4e7400040b6d47f99671cd707d59a30f5d92b613e0509e8e`  
		Last Modified: Fri, 10 Jul 2026 18:17:46 GMT  
		Size: 103.2 KB (103151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98edbf7b240617de5a060eecbfb19963ad060aec1513a6e75a04b5eadf89683c`  
		Last Modified: Fri, 10 Jul 2026 18:17:46 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-6-nanoserver` - windows version 10.0.20348.5256; amd64

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
