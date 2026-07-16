## `eclipse-temurin:17-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:2ab60a9ab10a4219f64971c5b66fac35b407f471e8806d6a3986e867af2d0e32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:17-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:99b4d9e78a4de5ef82801c22bb429706df107b335aa74fe73ba933b102062a19
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168114685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:709a042f8613923d8a3bea929601129bbb46e2bb9d3f716866e50befbfd689b4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:53:16 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:53:17 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 15 Jul 2026 23:53:17 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 15 Jul 2026 23:53:17 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:53:18 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 15 Jul 2026 23:53:19 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:53:22 GMT
COPY dir:2f70d7e82fbe25185baf6a6b1e05b870cb38c3ad05aac5b5932c695a93320f91 in C:\openjdk-17 
# Wed, 15 Jul 2026 23:53:24 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32d50ac99702729c222bf4061dbe849d1d440195ca91b4e5f016f53596be35e`  
		Last Modified: Wed, 15 Jul 2026 23:53:30 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d0160e700bdb1d50c734892a5ece20e37f38405a056b1891a5890269a1521`  
		Last Modified: Wed, 15 Jul 2026 23:53:30 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367bc04764ef649254139b5bbdfd4d071dfd21a796d98f4883a82cf29744527a`  
		Last Modified: Wed, 15 Jul 2026 23:53:30 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee4999ac2dfe33d324c0f79aa6a065689ca82f889a446b0539ee8cd284a1f65`  
		Last Modified: Wed, 15 Jul 2026 23:53:28 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7130f6b2785792eb470d19ad3c53aa65c07729abb395780d6c545c0c5d9a05a2`  
		Last Modified: Wed, 15 Jul 2026 23:53:28 GMT  
		Size: 80.4 KB (80379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f762c2fce190a4a82693da48a829456cad33e84f144e634ab942d22a6e33c93a`  
		Last Modified: Wed, 15 Jul 2026 23:53:28 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab40250f5c87a883c5cc9ee8ac85008033bf72e50b681dab3dacee23847e2df`  
		Last Modified: Wed, 15 Jul 2026 23:53:33 GMT  
		Size: 43.8 MB (43833668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0d25f677a9cd1bb520db33b0652f4ce54abbd24da933531d169e5fa5541dfd`  
		Last Modified: Wed, 15 Jul 2026 23:53:28 GMT  
		Size: 92.2 KB (92183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
