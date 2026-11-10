## `eclipse-temurin:27-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:67d45fd33327f07634cd0d0250679a04c7e7067231a4c5faf44eae07a2302f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:27-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:c1f20b7b958b392c1850e4394aa486730fb5b0ba3b77383cf59c3b1ce01b3ffe
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185428106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d7d731ad8b2d9c7551ae32714efc39e753a1e030395a50db87f322b795e6ef`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Mon, 09 Nov 2026 23:52:48 GMT
SHELL [cmd /s /c]
# Mon, 09 Nov 2026 23:55:50 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:55:51 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 09 Nov 2026 23:55:52 GMT
USER ContainerAdministrator
# Mon, 09 Nov 2026 23:55:54 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 09 Nov 2026 23:55:55 GMT
USER ContainerUser
# Mon, 09 Nov 2026 23:56:43 GMT
COPY dir:1d0776a6b2568151a4602a459dbb61f4638ffe7f56044e9eca31eeb2125da56f in C:\openjdk-27 
# Mon, 09 Nov 2026 23:56:48 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d981e834816a7115998a2df1128f237e403585ba872cafcb618c3f576404d604`  
		Last Modified: Mon, 09 Nov 2026 23:53:54 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10e3c5f7ebf3628c957e90a81ca8843387dc10ea604a3cf4e31928c2002c32f`  
		Last Modified: Mon, 09 Nov 2026 23:56:56 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d4f1beec062ea8de8507c65b7bad9aabf74711a0649eb6c909c65011da51a2`  
		Last Modified: Mon, 09 Nov 2026 23:56:56 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4adba182b2ac0844cbe7fdb687062dab1349166a7b5090176b5b1e307d6598`  
		Last Modified: Mon, 09 Nov 2026 23:56:55 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b3953a50a030283feca4e639e0ae39236cff8a645dd1b96ce123bc09a24d9e`  
		Last Modified: Mon, 09 Nov 2026 23:56:55 GMT  
		Size: 77.2 KB (77187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68619df974e06a36ac1e8f9918505f123e82aabe4ef5ca2c82e31beed35d33f`  
		Last Modified: Mon, 09 Nov 2026 23:56:55 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa06ea5ac46d17218682bcddf34d5be8a8ddc6a2a1b6b9235ee9a8759a44bdca`  
		Last Modified: Mon, 09 Nov 2026 23:57:02 GMT  
		Size: 59.3 MB (59321980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99aedf350c8bf3498fca63dbda4cd457772517c23a6d1ebf3aae0c534f9d973b`  
		Last Modified: Mon, 09 Nov 2026 23:56:55 GMT  
		Size: 96.9 KB (96897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
