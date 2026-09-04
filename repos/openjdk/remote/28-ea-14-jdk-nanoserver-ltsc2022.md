## `openjdk:28-ea-14-jdk-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:2d8e57e08e1f4e1db231ed7d3a17d9ca55a2dfe44b0273aa783a2905609db4a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-14-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:4f5b23028a69a8f654572f70c90931d014100000bd9c82b93dd24b4a08f85feb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.5 MB (363530274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb181697e7477fe0caf219757ea07e18ed33e98e8666476e4b91b609cebc77cc`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Fri, 04 Sep 2026 21:47:41 GMT
SHELL [cmd /s /c]
# Fri, 04 Sep 2026 21:47:42 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 04 Sep 2026 21:47:42 GMT
USER ContainerAdministrator
# Fri, 04 Sep 2026 21:47:53 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 04 Sep 2026 21:47:54 GMT
USER ContainerUser
# Fri, 04 Sep 2026 21:47:54 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:48:45 GMT
COPY dir:4738696310eaa291f8bef5368f765ccbf284679c8f1e9e590a7700e40797f549 in C:\openjdk-28 
# Fri, 04 Sep 2026 21:48:49 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 04 Sep 2026 21:48:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b00172d7c7e5e55566fd693b5e6a74ce89978da5f9541fd01caf193b20f4fc`  
		Last Modified: Fri, 04 Sep 2026 21:48:56 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb824491bb4cdfad87bffe55577230fbe7a6f2fe7fd492b7f8940f872d6e086d`  
		Last Modified: Fri, 04 Sep 2026 21:48:56 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8a98cbf4594b17d97fd2e8531069aa7ba0ad1b5850fe8b2bcbadfbd40e7b85`  
		Last Modified: Fri, 04 Sep 2026 21:48:56 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ff633f4a95c40c9e17595b6aeed3abf66b061318261dfc1b5850d174261c40`  
		Last Modified: Fri, 04 Sep 2026 21:48:56 GMT  
		Size: 73.8 KB (73844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f88d15cef6c7766d5781bb7ef916e9bbdbdbe48ab1e6fb8e45fc1b9bf1a247`  
		Last Modified: Fri, 04 Sep 2026 21:48:55 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c40ffa7590c3c0529d1731502056646baf61a936270901ed13966a7f6774af0`  
		Last Modified: Fri, 04 Sep 2026 21:48:55 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d19b5593c76128b7cbea36db4943273e53103b9b3aac7bc51e7ab72c25954b0`  
		Last Modified: Fri, 04 Sep 2026 21:49:12 GMT  
		Size: 239.1 MB (239096204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b16e7c9422546bc12ad96710780386887040956dcdde03ae15bfe19f7456a2`  
		Last Modified: Fri, 04 Sep 2026 21:48:55 GMT  
		Size: 96.0 KB (95954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6a6c520928a467580ad1d28a5318d0a3a232a82f02f37bbdbf6618faa8e554`  
		Last Modified: Fri, 04 Sep 2026 21:48:55 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
