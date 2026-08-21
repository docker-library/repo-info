## `openjdk:27-rc-jdk-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:8e79722a699a36d7775ce39171e8928e7963306c60bc67d42ef7c7419a44dace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `openjdk:27-rc-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:2239266d313310f3879a8e513f55251ca24f1240facfba376718421c9c530a0d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347560145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798ac6bc6166e2d7140fd21054c18ee43c14b305c611588a88a1125eebe6ae73`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Fri, 21 Aug 2026 18:25:41 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:25:42 GMT
ENV JAVA_HOME=C:\openjdk-27
# Fri, 21 Aug 2026 18:25:42 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:25:50 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 21 Aug 2026 18:25:51 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:25:51 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 18:26:29 GMT
COPY dir:ec8228b03fe316162ed3a3a38b59fa92013dfe81b274efa43cf33cc6600090e3 in C:\openjdk-27 
# Fri, 21 Aug 2026 18:26:34 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 21 Aug 2026 18:26:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861c1724d049b9ebbb8c4cd96e2fa05394f418ceb5daaa237cc9c3a15477229a`  
		Last Modified: Fri, 21 Aug 2026 18:26:44 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007f09c884e02310acbae4d12cd72856cac026c3622370299a7e8133ab538bf9`  
		Last Modified: Fri, 21 Aug 2026 18:26:44 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7af97a42ae1c51d3dd5de4cbc003c26aca0b8608c368d69436923269f585d13`  
		Last Modified: Fri, 21 Aug 2026 18:26:44 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd4b81cd5f0b67de8627901c8ba14d0083898aec74502f0379e1fbcfb09f015`  
		Last Modified: Fri, 21 Aug 2026 18:26:44 GMT  
		Size: 70.4 KB (70364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efd618641cd1822e593c3cb170e66f11e3e82feaa24aa72b941b2218065c8f2`  
		Last Modified: Fri, 21 Aug 2026 18:26:42 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1435cb398818941cabcfbed7773b2080f22fbeab05c4bbf41d4f1ea9e40983`  
		Last Modified: Fri, 21 Aug 2026 18:26:42 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed507f9fec9a8f4dda2537b02649c7a79a8796c2c3f1f902c1e1e9b65db39a6`  
		Last Modified: Fri, 21 Aug 2026 18:26:55 GMT  
		Size: 223.1 MB (223139136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b22a3b133f60f8aac332a97c663ce5683a66da3c000a1deeb9035bb4e92957`  
		Last Modified: Fri, 21 Aug 2026 18:26:42 GMT  
		Size: 86.4 KB (86355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3694684c5af005a44e99f0ae0d55f4c3398cb1b6c8a71e138ad87b910bdaed`  
		Last Modified: Fri, 21 Aug 2026 18:26:42 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
