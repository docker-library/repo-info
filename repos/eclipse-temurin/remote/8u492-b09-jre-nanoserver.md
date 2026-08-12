## `eclipse-temurin:8u492-b09-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:3962073eddb475bda90a24a0cd2c960d8aa1b4e4fe2b28fe6e3ddce3a32404f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:8u492-b09-jre-nanoserver` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:ae9d49d97428d7230d355a7f75eba74eac36d5d8629770e35d9c86501f3ee0a3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237649009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffba96140d0446f4fd145cb83c67629158d5477e8dbe8b8b94806331dc0b80b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 18:20:14 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 18:20:15 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 12 Aug 2026 18:20:16 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 12 Aug 2026 18:20:17 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:20:28 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 18:20:29 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:20:40 GMT
COPY dir:deea9cd49fa78c2b910137007aed467626dd46389507789da1635093de3df40f in C:\openjdk-8 
# Wed, 12 Aug 2026 18:20:47 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0a6e26d4301d740d21358c4c97d93bf47793ed423a766a855aff23bd7a21d5`  
		Last Modified: Wed, 12 Aug 2026 18:20:53 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d8c47263d7f668e967a01b12b382101958307a51de1113ee062e976186d0e1`  
		Last Modified: Wed, 12 Aug 2026 18:20:53 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b1fae01206695799bba71b765c1673ffa01dce15b656417b8a9c4e941e16ee`  
		Last Modified: Wed, 12 Aug 2026 18:20:53 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8756be3689b63163873ab16854dedf6fa3a69c8d77606df400212c5547f4c8e`  
		Last Modified: Wed, 12 Aug 2026 18:20:51 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d5d9876479d5f9da1b1282f8de74702a72056708c725913ada2aeda02c6886`  
		Last Modified: Wed, 12 Aug 2026 18:20:52 GMT  
		Size: 70.7 KB (70703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809e96a9eb63cd0d8ab164c681f6718ea662d07bee7c1b0ea21259014b6ad290`  
		Last Modified: Wed, 12 Aug 2026 18:20:52 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb01cf02475c773ab1e22bd519a8810cbefde498c59a62c4a8019b3c92ee897`  
		Last Modified: Wed, 12 Aug 2026 18:20:55 GMT  
		Size: 40.0 MB (39988022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea13158a28ba1bc4843a968720d27cc189971e3f99e22f394fcda584081b744`  
		Last Modified: Wed, 12 Aug 2026 18:20:52 GMT  
		Size: 102.9 KB (102888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:8u492-b09-jre-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:16ad03e3c2142d2315288f78e802ca533522827cfb027d19614ef0040aafffe2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164438583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47ff3fffe562d6066bf79014f511dd1d1e047f7902eb7614d3f274616ab3ede`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 19:16:02 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 19:16:03 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 12 Aug 2026 19:16:04 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 12 Aug 2026 19:16:04 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 19:16:11 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 19:16:11 GMT
USER ContainerUser
# Wed, 12 Aug 2026 19:16:24 GMT
COPY dir:deea9cd49fa78c2b910137007aed467626dd46389507789da1635093de3df40f in C:\openjdk-8 
# Wed, 12 Aug 2026 19:16:28 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82dd0516391bf42101b3dcd7237f6d876ade9064d2873a65f24b2bc57d3fdd1`  
		Last Modified: Wed, 12 Aug 2026 19:16:34 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0377a0e20083a2a6e5bf2322388cfd9de53aa908ed00593078d7c1b04b51e6eb`  
		Last Modified: Wed, 12 Aug 2026 19:16:34 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41fba55d9fda022b78d9c90a89258dfa4a7f90380476c9a3f403755dc1d9f9d`  
		Last Modified: Wed, 12 Aug 2026 19:16:34 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1909cc2ab6d7182944ff981fad04815d2f9f6a07c760de616e47ea52893f4894`  
		Last Modified: Wed, 12 Aug 2026 19:16:32 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295df31fa43a85da2f44d8b6496e6d6eb084f7f26eb4aa0cfd26eb11cc4d9686`  
		Last Modified: Wed, 12 Aug 2026 19:16:32 GMT  
		Size: 80.5 KB (80510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c768fd59d61f242406916b78389d151c03c7cf44c64421c994980aaf773e6f`  
		Last Modified: Wed, 12 Aug 2026 19:16:32 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55633cc4302048e3c7e0dfc222ce42e5546d074cd9a286aa64ce028238879ef`  
		Last Modified: Wed, 12 Aug 2026 19:16:36 GMT  
		Size: 40.0 MB (39988076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d3c0e95a294f669ccfa0e4cffe98709bae61ef6fa944db3e91d65a5c9146eb`  
		Last Modified: Wed, 12 Aug 2026 19:16:32 GMT  
		Size: 106.7 KB (106738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
