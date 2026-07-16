## `eclipse-temurin:8-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:272c429aed087fb32df06ffd6477a8ff3b90c8f3f775dbd93d9534289edf3609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:8-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:1e5dc86d95dfdd0ac0213277b5e6e77f392434d84898e77bcb4d7adb16dec777
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.2 MB (226203850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3f54b281c7afd8286e32003d84b9bf3d41fb4b9395c00924fb8f12dcfc9afe`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:52:07 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:52:07 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 15 Jul 2026 23:52:07 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 15 Jul 2026 23:52:08 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:52:14 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 15 Jul 2026 23:52:14 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:52:32 GMT
COPY dir:25077d8770e7edce418eff57fe3a0561246eac55d5c42b7efa90e67ec851bbed in C:\openjdk-8 
# Wed, 15 Jul 2026 23:52:35 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106eb036a9ddc83031e7411c015ebd48a0cb4a1f5c72217a59a5db8232e1dc0d`  
		Last Modified: Wed, 15 Jul 2026 23:52:42 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b91879cdd35983091d80da20a0db4999cc75a99a1f8fd64616ff83c1e26bf2`  
		Last Modified: Wed, 15 Jul 2026 23:52:42 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ed0558471a5bbec06844da65890ef2ccfedfec94c1eb43e5fef49c0b2b83f2`  
		Last Modified: Wed, 15 Jul 2026 23:52:42 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d268a00a0f627e879c43f0c5030d27f51acb91663e708f276c19a4d9eb203c1`  
		Last Modified: Wed, 15 Jul 2026 23:52:40 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cbe56e73325c2d0834adba894e856a6d3bf1128298c2a3251afbc2d25da84c`  
		Last Modified: Wed, 15 Jul 2026 23:52:40 GMT  
		Size: 85.9 KB (85893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aae55b44363e4d752688f67ea948e00fd61fc9c79454f6dcfcbf023209fc067`  
		Last Modified: Wed, 15 Jul 2026 23:52:40 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3359b1c1c0f6a5b41a6f35bcbc20c8b6205f31e9b9b22229a8a1f8a7d538fd3d`  
		Last Modified: Wed, 15 Jul 2026 23:52:47 GMT  
		Size: 101.9 MB (101915807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933372b11491f75e04e92c3f9d1c696ddd67e1a1338653f37da1c5959f1e0e2a`  
		Last Modified: Wed, 15 Jul 2026 23:52:40 GMT  
		Size: 93.7 KB (93665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
