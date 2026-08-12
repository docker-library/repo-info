## `eclipse-temurin:8u492-b09-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:5b4d26972235e12f4b92e820b4e5e2346280f4445ca8026f1e68b359639c2244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:8u492-b09-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

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
