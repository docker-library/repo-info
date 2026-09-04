## `openjdk:28-ea-nanoserver`

```console
$ docker pull openjdk@sha256:a7bbe581b25b26818034eb1e391960b059b6cbbbcf3697131523c55937510df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-nanoserver` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:bb110747429623c5656a613b0c743f1609df424ff4c0ba68a5ddfddad2fe2da4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.8 MB (436759261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e87d34977b0e1a2a4869835619b3595723999a648a2319e3a7538762a6cd8667`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Fri, 04 Sep 2026 21:47:34 GMT
SHELL [cmd /s /c]
# Fri, 04 Sep 2026 21:47:35 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 04 Sep 2026 21:47:35 GMT
USER ContainerAdministrator
# Fri, 04 Sep 2026 21:47:48 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 04 Sep 2026 21:47:48 GMT
USER ContainerUser
# Fri, 04 Sep 2026 21:47:49 GMT
ENV JAVA_VERSION=28-ea+14
# Fri, 04 Sep 2026 21:48:37 GMT
COPY dir:4738696310eaa291f8bef5368f765ccbf284679c8f1e9e590a7700e40797f549 in C:\openjdk-28 
# Fri, 04 Sep 2026 21:48:47 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 04 Sep 2026 21:48:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ad425c5bc119dcb8b9dcc73c0f677e25d601cdab96ec92db0cf399d52837c7`  
		Last Modified: Fri, 04 Sep 2026 21:48:53 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd4a700fac8ccecf7b347cc4e8b100568dd16af659ab01267d77c5080dcf148`  
		Last Modified: Fri, 04 Sep 2026 21:48:53 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:212e758d58c1a0da4ebf88efdb597762f0e4a9eb374f8d267c491fe125ef4054`  
		Last Modified: Fri, 04 Sep 2026 21:48:53 GMT  
		Size: 1.0 KB (1006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa958bde55a62aca7ec81352d728b9de71066eee539c507c803c66a60fec1e4`  
		Last Modified: Fri, 04 Sep 2026 21:48:53 GMT  
		Size: 71.3 KB (71301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a26023206c4ff9054df6a2132c7fbe255aafb8f9edcb423465b4c2136cf6c6`  
		Last Modified: Fri, 04 Sep 2026 21:48:51 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b659ab72e507f03cbc0950351c47526ad1ffe8421b2ec23d620a69d3529cbc1`  
		Last Modified: Fri, 04 Sep 2026 21:48:51 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f9fcbec5230e320f4736d15a8e46b7c84e10248368f750b03d469a855ee4b2`  
		Last Modified: Fri, 04 Sep 2026 21:49:08 GMT  
		Size: 239.1 MB (239096588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7695e94d4e83b18f359f93f65091076bb51ee0317c7287bcbbcdcd644ca6ffe6`  
		Last Modified: Fri, 04 Sep 2026 21:48:51 GMT  
		Size: 103.0 KB (102997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c184f2ef4b5594de7faa0819c0190ed654eab7262206f6fffe7f586373bb9695`  
		Last Modified: Fri, 04 Sep 2026 21:48:51 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-nanoserver` - windows version 10.0.20348.5499; amd64

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
