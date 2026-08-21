## `eclipse-temurin:8-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:f65c382c317a0f3815070da8cf87fd5b721c8865afe991fc283b7070fa69e12e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:8-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:980422462d2afeac169816bf1617b75621cc832dc05934ebeac5367b395f4ca5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237621317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d1754421b32079f5b1fbeeff1c6c3b68a85587e8f36c73de6cbd9b683c0a2ab`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Fri, 21 Aug 2026 18:35:41 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:35:42 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:35:43 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 21 Aug 2026 18:35:44 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:35:51 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:35:52 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:36:02 GMT
COPY dir:2f3bbccf7e2287e97c6411cc76d2cd1301cbec1aff5b5ea1a538254e125c425b in C:\openjdk-8 
# Fri, 21 Aug 2026 18:36:06 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3344968ae60c85d2f27e40b1caf9a69e716e8c375cdf2acf54adf133d097b816`  
		Last Modified: Fri, 21 Aug 2026 18:36:12 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3ca7cc6753e1ba8ce8c0eb7ca866feb36c7374147e7511a252a87ac324361e`  
		Last Modified: Fri, 21 Aug 2026 18:36:11 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293747c203631c557d78264abcf4c7b50fc0c29aa79fc17cd2ba962c078ff374`  
		Last Modified: Fri, 21 Aug 2026 18:36:11 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bf52afcb9c0c52985be1a3b6f17c9e4412e95e797c23549a3140d5e138be4b`  
		Last Modified: Fri, 21 Aug 2026 18:36:10 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0190a7637a5eaafba569460f597a781ed9404264a82530f6594c4bd4e9d51de1`  
		Last Modified: Fri, 21 Aug 2026 18:36:10 GMT  
		Size: 70.1 KB (70101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c016fc1d65a84a723562194cf1192a178f15d8cc6752bfbc767c92033e0f5`  
		Last Modified: Fri, 21 Aug 2026 18:36:10 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eca81517c6f1b2fed24b072e812a25c15224992bf869214c71dc9c5592f947e`  
		Last Modified: Fri, 21 Aug 2026 18:36:13 GMT  
		Size: 40.0 MB (39980364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dccec9830896708772bef0287beb38fb11042eae944574467af8dd790051c5`  
		Last Modified: Fri, 21 Aug 2026 18:36:10 GMT  
		Size: 83.5 KB (83482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
