## `eclipse-temurin:8u512-b09-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:7cdf54a1bf189022cfbfe08aa0fe54239d5f3fc99ce1830fe42fa7bdd0f64dbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:8u512-b09-jdk-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:3d76bc72d3df5ec67acd0ecc12525949be5ea70f614871ff9121248893d60033
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.1 MB (302087812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9265d259373fd1a553628833c6776496141b9f60023567f264a5c23b524548d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Mon, 09 Nov 2026 23:48:52 GMT
SHELL [cmd /s /c]
# Mon, 09 Nov 2026 23:48:53 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:48:53 GMT
ENV JAVA_HOME=C:\openjdk-8
# Mon, 09 Nov 2026 23:48:54 GMT
USER ContainerAdministrator
# Mon, 09 Nov 2026 23:49:06 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 09 Nov 2026 23:49:06 GMT
USER ContainerUser
# Mon, 09 Nov 2026 23:49:34 GMT
COPY dir:5ea7cf21f5771b3d48b8677f1f79659e6f7f03cb212691f126d4def41226d352 in C:\openjdk-8 
# Mon, 09 Nov 2026 23:49:42 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8aba469b7bef38d5608229fa7e6efc7790a1711d41e8ac65164f280384379f`  
		Last Modified: Mon, 09 Nov 2026 23:49:48 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7686de35403a15e0a75802722b842970decbf781946f461749dd9cbfdfa94a`  
		Last Modified: Mon, 09 Nov 2026 23:49:48 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9834c0ca45e25999edb54fe6c47998ffc347ac413350269fa92e1243d58cb6a`  
		Last Modified: Mon, 09 Nov 2026 23:49:48 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f1fff82ebafd4b2a7eb12eaf21bf89e2815a75bbc4fdba05e186b551c1d4c2`  
		Last Modified: Mon, 09 Nov 2026 23:49:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04e04197e2d21645666754b457ed9ded0cbff4de39969ff3ce8236bd4fb898a`  
		Last Modified: Mon, 09 Nov 2026 23:49:46 GMT  
		Size: 69.7 KB (69667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac239a19d1da195db549e09585d0c13a89f73886877639c4fdd333cb10abd392`  
		Last Modified: Mon, 09 Nov 2026 23:49:46 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a460876c87700d7a6e075c4c38a9dc1db3248f254f6768e0fa54b0dcf3026ec9`  
		Last Modified: Mon, 09 Nov 2026 23:49:52 GMT  
		Size: 101.9 MB (101941881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e5fd40d858e83ce9c4e7b20c901220ae9e7267bfc8eb30d05894fc0142a47d`  
		Last Modified: Mon, 09 Nov 2026 23:49:46 GMT  
		Size: 112.0 KB (111955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:8u512-b09-jdk-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:9bf02e62e807b8b6fc5ac47556bb6986fbae47e5a3a7e5bb2739d2ab05f872c8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.1 MB (228053597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b0d08e6c638c3361f25f079b4ead3d0967c483fba0eb1e907a1a94fc29caff`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Mon, 09 Nov 2026 23:48:44 GMT
SHELL [cmd /s /c]
# Mon, 09 Nov 2026 23:48:45 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:48:46 GMT
ENV JAVA_HOME=C:\openjdk-8
# Mon, 09 Nov 2026 23:48:46 GMT
USER ContainerAdministrator
# Mon, 09 Nov 2026 23:49:04 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 09 Nov 2026 23:49:05 GMT
USER ContainerUser
# Mon, 09 Nov 2026 23:50:02 GMT
COPY dir:5ea7cf21f5771b3d48b8677f1f79659e6f7f03cb212691f126d4def41226d352 in C:\openjdk-8 
# Mon, 09 Nov 2026 23:50:08 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b3aa508ed803c4f60dedceb59dc65a815ce47222e478babf1e2f63ada1be25`  
		Last Modified: Mon, 09 Nov 2026 23:50:18 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fb7bf53ed70fe855ff50496ae2fd593511f0a8cb2f2e9fd3ed5b63c7f4dbb1`  
		Last Modified: Mon, 09 Nov 2026 23:50:18 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379fe81aa6cff91ad50293418a362dc4415c7370479e231384c213cb196c55b7`  
		Last Modified: Mon, 09 Nov 2026 23:50:18 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3455649575cb44df10edb1320c9cc46e2e5a26d53bbd04982b4c2ba45ccf59ab`  
		Last Modified: Mon, 09 Nov 2026 23:50:16 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e485179305fffb4288298d2b2e0f15167e3c04dd6a119d5af50c246f9c06dd`  
		Last Modified: Mon, 09 Nov 2026 23:50:16 GMT  
		Size: 86.9 KB (86890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591a1c10583f040d82d3f1c770060af1f284167e0e2ddea24016a8b2ed3a9141`  
		Last Modified: Mon, 09 Nov 2026 23:50:16 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b45f130376fd7adc90597460f45070ba89fb0f3b1755ec70cb1fbff8f51427`  
		Last Modified: Mon, 09 Nov 2026 23:50:22 GMT  
		Size: 101.9 MB (101941987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c61339a2ade803c955ffcdaaac61f8f25c2c986ac9fb05ba95b25b46601a155`  
		Last Modified: Mon, 09 Nov 2026 23:50:16 GMT  
		Size: 92.7 KB (92724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
