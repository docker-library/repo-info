## `eclipse-temurin:8-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:11d9b7a183195fce125d207ad42180800ab07a0ff25f8e079e8de88ccbf157e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:8-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

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
