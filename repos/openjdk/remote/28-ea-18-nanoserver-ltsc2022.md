## `openjdk:28-ea-18-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:a10954a63acfa5577104bd8bc9bf935ec0873ec5d21d0925da00535fd3da65b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-18-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:f1c0e6cc4e9fed71f87fc910a02c4e777fa0466f2d36386ed8d64cd38d115cfa
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.2 MB (364190548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71b275115f46fe6739e02a24d10d96c7d3c6ffc8a5ccfe5f11b8890267fa40c8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Sat, 03 Oct 2026 01:08:15 GMT
SHELL [cmd /s /c]
# Sat, 03 Oct 2026 01:10:17 GMT
ENV JAVA_HOME=C:\openjdk-28
# Sat, 03 Oct 2026 01:10:18 GMT
USER ContainerAdministrator
# Sat, 03 Oct 2026 01:10:19 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Sat, 03 Oct 2026 01:10:20 GMT
USER ContainerUser
# Sat, 03 Oct 2026 01:10:20 GMT
ENV JAVA_VERSION=28-ea+18
# Sat, 03 Oct 2026 01:11:35 GMT
COPY dir:492ad5e5187676eccf03fcde3bcc4dd288df0cabbb7eb8b0950027401b1d965c in C:\openjdk-28 
# Sat, 03 Oct 2026 01:11:41 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Sat, 03 Oct 2026 01:11:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6078d2221d30a73e888e5e4465330851a2ab63a631e7e827c6d675f1256d665e`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b32bddfa71cc9c0be0d1469f5a556be9e92a0caafc41b571c6b6986e589d41`  
		Last Modified: Sat, 03 Oct 2026 01:11:47 GMT  
		Size: 1.1 KB (1088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbf812cfe48f03c23e1646ec2cfdc17c974aeae5afb07ed147744dc7fd2b5f9`  
		Last Modified: Sat, 03 Oct 2026 01:11:47 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c1413b5c79a9b19e29cb681ff1150f5bb6f9b2e94e4f67eafdb6d0ba54fbff`  
		Last Modified: Sat, 03 Oct 2026 01:11:47 GMT  
		Size: 78.8 KB (78780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66afd91bcb1a430748de0dbac671ebbbbff912e4ae2188ecb51d61590b987147`  
		Last Modified: Sat, 03 Oct 2026 01:11:46 GMT  
		Size: 1.1 KB (1090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5560e4da57838c78317906702f0c0620b45fc0c3e6513429bbfcc3c8779859`  
		Last Modified: Sat, 03 Oct 2026 01:11:46 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b5f9fcec1a1d6da6359f16fe583dd9f7d2c48788687703ce533c1b522faa59`  
		Last Modified: Sat, 03 Oct 2026 01:12:02 GMT  
		Size: 239.4 MB (239358949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a232090b86aee45ad4774911abfe0edc6d08a14d170cfac05970bf9d33066f`  
		Last Modified: Sat, 03 Oct 2026 01:11:46 GMT  
		Size: 109.0 KB (108994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5e62e29e02832f518c4ce6102a925879207122b178a2ea5221deba37dca125`  
		Last Modified: Sat, 03 Oct 2026 01:11:46 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
