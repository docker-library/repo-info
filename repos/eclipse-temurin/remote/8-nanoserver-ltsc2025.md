## `eclipse-temurin:8-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:75a7a77c7d31725c734eb878a2a6c8042cf6ccab061bca50b242f20849572ac9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:8-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:99d5eb4da4abb26d37daed4cec952bf3b859142e3c24c342c11edf4ad2243099
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.7 MB (299742179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14eb747b9662143de861ddb80957a869bd443eb247f284023bf734c043c226f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Wed, 09 Sep 2026 23:22:43 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:22:44 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 23:22:45 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 09 Sep 2026 23:22:46 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:22:54 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:22:55 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:23:31 GMT
COPY dir:0a490e4334c64d82455cb318fdd0eca19d90157486e844899949930d816ec5a5 in C:\openjdk-8 
# Wed, 09 Sep 2026 23:23:36 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0961bd0b616887bc320f1da79cde59422ed6d58610c456201f0c4b17058e771c`  
		Last Modified: Wed, 09 Sep 2026 23:23:42 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84871c44a77778c61d76857c49735dc5c9040c5f50dc5351ef5fd44c672176f6`  
		Last Modified: Wed, 09 Sep 2026 23:23:42 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fe0834370973e86248ab31db97d535236a53f80de4d79bc30c596d2ec4b743`  
		Last Modified: Wed, 09 Sep 2026 23:23:42 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0645594818b8db9a6a361192ce5fe5ee2dfa129d8222f8aa872a8fb1237279`  
		Last Modified: Wed, 09 Sep 2026 23:23:40 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3748f4e2ae2f13f7abe86936fb14594e59236b7a4212362d7bd9fb9cce9fd3fa`  
		Last Modified: Wed, 09 Sep 2026 23:23:40 GMT  
		Size: 77.2 KB (77213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d07842d90a62fe486ca957e20f311e5d3469af4d283ba7efba64e200e04be88`  
		Last Modified: Wed, 09 Sep 2026 23:23:40 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f8478593eea87863f0b4000bc2c24efef8f088a1b84151fa15238d3899c289`  
		Last Modified: Wed, 09 Sep 2026 23:23:47 GMT  
		Size: 101.9 MB (101912546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a023bcf47ad645bee4d60c22c95c2116019403534e04b96525c70fc8911f8e30`  
		Last Modified: Wed, 09 Sep 2026 23:23:40 GMT  
		Size: 96.7 KB (96721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
