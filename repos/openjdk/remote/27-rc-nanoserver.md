## `openjdk:27-rc-nanoserver`

```console
$ docker pull openjdk@sha256:3e3164f4869fffe8f850209e6247ff7e269c6669f9bb612f44a47020fd3cd6ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `openjdk:27-rc-nanoserver` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:0720d535a88f421824b6aa2b0d418aea7abaca8ec338041b3b672947db4b1cca
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.8 MB (420810652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f31096c38c3cdc69a39cbb630d7a7bb774ecd7d9302b67cfc744ffcb5ef0a6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Fri, 21 Aug 2026 18:36:03 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:36:04 GMT
ENV JAVA_HOME=C:\openjdk-27
# Fri, 21 Aug 2026 18:36:04 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:36:10 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 21 Aug 2026 18:36:10 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:36:11 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 18:36:46 GMT
COPY dir:ec8228b03fe316162ed3a3a38b59fa92013dfe81b274efa43cf33cc6600090e3 in C:\openjdk-27 
# Fri, 21 Aug 2026 18:36:52 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 21 Aug 2026 18:36:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42f1322452cf361a90653dd2200a87faf545d608f3d4bad48c82aa3c52b729b`  
		Last Modified: Fri, 21 Aug 2026 18:36:58 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa566e434a11e3dd966d05a895df248a28f6b630f929d4289df8902ab77df702`  
		Last Modified: Fri, 21 Aug 2026 18:36:58 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9a960ba5e4c7b9c43b40ecdf339cf1f8d56b3ae3facef91d316d1a58417ac7`  
		Last Modified: Fri, 21 Aug 2026 18:36:58 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4addbdf0bac5c9361a76d238dd9319fa46cb9abc9b58a3cb0f5bbb8c2a68d03b`  
		Last Modified: Fri, 21 Aug 2026 18:36:58 GMT  
		Size: 71.7 KB (71700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3fd98ded5b3df04214b1c5261899e14f32ea355dacd2d6933ff1b536638d22d`  
		Last Modified: Fri, 21 Aug 2026 18:36:56 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3730939e66f6132d94c056b8a5ff0a901a7c67e038d28c2fd804259b00b21ec9`  
		Last Modified: Fri, 21 Aug 2026 18:36:56 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5474b40410469d30affa38bee396dae4cef27158af5f4c5e2f70cd86cb41b1`  
		Last Modified: Fri, 21 Aug 2026 18:37:10 GMT  
		Size: 223.1 MB (223138931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a865059a8709cc223ec846ead3e080aaec0c93b121eb8f85b5b0ab2d42ec51`  
		Last Modified: Fri, 21 Aug 2026 18:36:57 GMT  
		Size: 111.6 KB (111613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6551270654f11f6ccd46511797b6919a725640edf5cac526f4d626eb91fb7d22`  
		Last Modified: Fri, 21 Aug 2026 18:36:56 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:27-rc-nanoserver` - windows version 10.0.20348.5499; amd64

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
