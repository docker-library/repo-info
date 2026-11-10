## `eclipse-temurin:8-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:99d4f7b07e99f3796c538997ce21e46041add461369572833cdf36777c38ac7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:8-jre-nanoserver` - windows version 10.0.26100.33674; amd64

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

### `eclipse-temurin:8-jre-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:ef595e9fdd6825656883edba24ec2c54710fdf4114fbceecf9f3b047853588a0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166110530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea4687be6a1c13674928417fd1614b58cf47dc18a2b8cb741e1932eb16aa0b86`
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
# Mon, 09 Nov 2026 23:52:41 GMT
COPY dir:1d5679204bdcff12726574c811d8243612c83f060c92df7e82dd41929c00caa1 in C:\openjdk-8 
# Mon, 09 Nov 2026 23:52:44 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
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
	-	`sha256:cd570cf7e3cc6025c48d00b12992838782d45bd3a15c1f1b51613c96c7a7daee`  
		Last Modified: Mon, 09 Nov 2026 23:52:52 GMT  
		Size: 40.0 MB (39999293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7588c9283560ef956daf1c8b1a4aad7961d9f8b4c66dc1674749211029e8e6b`  
		Last Modified: Mon, 09 Nov 2026 23:52:48 GMT  
		Size: 92.4 KB (92351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
