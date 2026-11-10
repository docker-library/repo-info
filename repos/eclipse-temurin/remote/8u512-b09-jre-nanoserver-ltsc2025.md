## `eclipse-temurin:8u512-b09-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:11ca187363c92a23ace27ba0e2749bd900d3a1b57359ccbc1cd26f640fa6d211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:8u512-b09-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:be525aa777ad48047d477340afe3efe75468a3d3b0693bf98fb9f8863b052802
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.1 MB (240145406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fa7c4079a027f458d3f8ab8dd5e121ee2662d85fe276261ad73830c93fff7c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Mon, 09 Nov 2026 23:48:48 GMT
SHELL [cmd /s /c]
# Mon, 09 Nov 2026 23:48:48 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:48:49 GMT
ENV JAVA_HOME=C:\openjdk-8
# Mon, 09 Nov 2026 23:48:50 GMT
USER ContainerAdministrator
# Mon, 09 Nov 2026 23:49:05 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 09 Nov 2026 23:49:06 GMT
USER ContainerUser
# Mon, 09 Nov 2026 23:49:33 GMT
COPY dir:1d5679204bdcff12726574c811d8243612c83f060c92df7e82dd41929c00caa1 in C:\openjdk-8 
# Mon, 09 Nov 2026 23:49:40 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d907715dd9aa034d99f7982c280b1ad8eb432f572db73aeed605d64af47528db`  
		Last Modified: Mon, 09 Nov 2026 23:49:45 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e98ed4d2c135b5fda64daa90398c03ed90235e3e3946849d052276124f863a`  
		Last Modified: Mon, 09 Nov 2026 23:49:45 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e15a2a9992144a64398289df41c5360ea0e6902e0b0b811c9de555911a657`  
		Last Modified: Mon, 09 Nov 2026 23:49:45 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8922832ff461e68f06848097b83af04e4ab0809441b5fef520db5960ffbf0ccd`  
		Last Modified: Mon, 09 Nov 2026 23:49:44 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb51deec8feb3ae49893e7cde9b7ffea42f6a280f09d95e890d40663d24915f`  
		Last Modified: Mon, 09 Nov 2026 23:49:44 GMT  
		Size: 69.8 KB (69783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63331092bbefd6f3f5376c885a3a5ac52a334f7fae8f08fc90d547e3459b86e9`  
		Last Modified: Mon, 09 Nov 2026 23:49:44 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1dba1d6fd39fa0a1b597b4690f73af4fe0b16810c0d74e3bcab3b0bb891e8`  
		Last Modified: Mon, 09 Nov 2026 23:49:47 GMT  
		Size: 40.0 MB (39999297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66965237a024a436a2586227938747338dbc73b3871be57ef5603238c0c1b95b`  
		Last Modified: Mon, 09 Nov 2026 23:49:44 GMT  
		Size: 112.0 KB (111969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
