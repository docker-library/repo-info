## `eclipse-temurin:8u512-b09-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:910ce844e7fb50505a1b28b5b607f4cfeb5eb56e40671af5cb214d608f9e156e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:8u512-b09-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

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
