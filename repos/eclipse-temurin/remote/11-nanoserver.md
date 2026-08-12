## `eclipse-temurin:11-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:2892061c117a315d61893eb7f0b9ce53139eb541f911200364b0cf61c5042493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:11-nanoserver` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:64b8a9ef6e3df213b3a2ea80884c9d2bb491abe92ccb687dbb213b23184dc713
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.4 MB (392447848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2eaaf5ed2927cdddab4710b4e45a07f0e57e3a380d1dad78b131cf2cac58587`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 18:20:24 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 18:20:25 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 12 Aug 2026 18:20:25 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 12 Aug 2026 18:20:25 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:20:32 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 18:20:34 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:21:18 GMT
COPY dir:508f69ae524938b28a83a19a9aeade10facf00325b620c7a836698644d966097 in C:\openjdk-11 
# Wed, 12 Aug 2026 18:21:24 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 12 Aug 2026 18:21:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdd9d4b248b2935df3655c2c99dd349ca3751903bb334c42b654541f14aede5`  
		Last Modified: Wed, 12 Aug 2026 18:21:30 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1782c5527a92fa978d3b4ae4a71a01acf3a85b8333d4b4148207c20b2ade50b8`  
		Last Modified: Wed, 12 Aug 2026 18:21:30 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c22fdbed82e7804358cbd2ff342fe3be334e42a299410b479df6b5923f4e4d`  
		Last Modified: Wed, 12 Aug 2026 18:21:30 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ebfbfd81a0a970e505a35e4cd76fbcd2591e7d9540aa302b4afb9feb89d1a4`  
		Last Modified: Wed, 12 Aug 2026 18:21:30 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8b32365a66cd28e0ea49abb7d00aee78ab5b331b717ff5f579116589857495`  
		Last Modified: Wed, 12 Aug 2026 18:21:28 GMT  
		Size: 70.7 KB (70729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db46f57714dfb6871fad1fc509f0492fd18edd5677b1f9c8ce9bd67cf3239d32`  
		Last Modified: Wed, 12 Aug 2026 18:21:29 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed60d196de3d663eb6f1eb5c0eacc3959d4cf4ae9b39e8fed695ab672af2d7ee`  
		Last Modified: Wed, 12 Aug 2026 18:21:40 GMT  
		Size: 194.8 MB (194785643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acdcc8094e3f1f79a23c162f83985e59e9ed94148a8fced713196986860471b3`  
		Last Modified: Wed, 12 Aug 2026 18:21:29 GMT  
		Size: 103.1 KB (103059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cf340bffe06905addb175d89b3cb3d6311d73d67bddc8f404a4e1b508e7b0c`  
		Last Modified: Wed, 12 Aug 2026 18:21:28 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:11-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:12d9053d201e3a79b75ac98f6e63ef53aea17ed7379d08928a92b0ac71ff4f77
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.3 MB (319254308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c9806a20357aff0e51bca18a168e9134066577af642bd256f56060bed6e6abb`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 19:16:34 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 19:16:34 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 12 Aug 2026 19:16:35 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 12 Aug 2026 19:16:36 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 19:16:43 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 19:16:43 GMT
USER ContainerUser
# Wed, 12 Aug 2026 19:17:19 GMT
COPY dir:508f69ae524938b28a83a19a9aeade10facf00325b620c7a836698644d966097 in C:\openjdk-11 
# Wed, 12 Aug 2026 19:17:25 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 12 Aug 2026 19:17:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac41418c4979fb834282d2b7fcfe7a33143df68b41c4439484a65118c7ab4c0`  
		Last Modified: Wed, 12 Aug 2026 19:17:32 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a7a1b5831ab41edd621cd1819f60ad7e52bd1b5fe5aac4fc9f9b33791679f0`  
		Last Modified: Wed, 12 Aug 2026 19:17:31 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be83eca293980496666a512f0b89e16fc8369be89e01e2af106cb3638a9c86e7`  
		Last Modified: Wed, 12 Aug 2026 19:17:31 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd609988dfea91baddec4efcee961b3d974cdbe866ad0680d8b083179f85a486`  
		Last Modified: Wed, 12 Aug 2026 19:17:31 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3444dee96f4f6b08e0e456c4b4fc40e785a6b3f338c0020a4d989e1868c882d9`  
		Last Modified: Wed, 12 Aug 2026 19:17:30 GMT  
		Size: 76.9 KB (76940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7854f841ea21eee7dab897d2efbe8e50353e07c1eeb82b4f2cfa5c13c0d51b`  
		Last Modified: Wed, 12 Aug 2026 19:17:30 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7e5a3775cb430b02ef3e6eb2cc16d2fedd2737d3d6ef4d3471ada1874a3114`  
		Last Modified: Wed, 12 Aug 2026 19:17:40 GMT  
		Size: 194.8 MB (194785326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159c1c16a031a2022f4c80dda59f8371b810da1f6beb9c1c030416afc6481333`  
		Last Modified: Wed, 12 Aug 2026 19:17:30 GMT  
		Size: 127.7 KB (127744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b28e9ae2ebe61964722eab17f5589f7ad913f761e6bd436b9a439fd72391aa`  
		Last Modified: Wed, 12 Aug 2026 19:17:30 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
