## `eclipse-temurin:25-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:adfb84f3ce3aeef11ea6c0bd7b1d308ee15cf1ca7f924a019a5fd8c4407894d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:25-nanoserver` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:b0b1fcdc2ba858809ed43f7e15004f2796cb43a6e00e93c5da4a32b2c72f8083
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.4 MB (335410227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b0c7754031f490c6773883acd241cd54ca9d2b96cc52b5356f7668a3b2c15c4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Thu, 16 Jul 2026 00:17:44 GMT
SHELL [cmd /s /c]
# Thu, 16 Jul 2026 00:17:44 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 16 Jul 2026 00:17:45 GMT
ENV JAVA_HOME=C:\openjdk-25
# Thu, 16 Jul 2026 00:17:46 GMT
USER ContainerAdministrator
# Thu, 16 Jul 2026 00:17:52 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Thu, 16 Jul 2026 00:17:52 GMT
USER ContainerUser
# Thu, 16 Jul 2026 00:18:16 GMT
COPY dir:93c9a33f6e3b7bf9a4cc6584352427179a8f4d1e9396155b43179dd1c4270396 in C:\openjdk-25 
# Thu, 16 Jul 2026 00:18:22 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Thu, 16 Jul 2026 00:18:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c356e5f0a6e4e2b23e4993b07623eccc53e0d1e9d7f460ce55ee7e142a43f8`  
		Last Modified: Thu, 16 Jul 2026 00:18:28 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e1e73a0c61ce64566c7088d5e1f0b80497172cb4ffa5fe6f92d595b7b677e2`  
		Last Modified: Thu, 16 Jul 2026 00:18:28 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58984ac93f78ecc509d6661e8f7fec87511d107c3e0da310eb96039690d7fa16`  
		Last Modified: Thu, 16 Jul 2026 00:18:28 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7640d7f4273d034b0957618c742f1e3271862ae1ac232c66e6ddc3b743d9785e`  
		Last Modified: Thu, 16 Jul 2026 00:18:28 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13a2c3185e8b1bf12a8b4cdb2bbd8445ccc24dde0c42819d7914ec7fda7f4d4`  
		Last Modified: Thu, 16 Jul 2026 00:18:26 GMT  
		Size: 72.6 KB (72587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77c068ec55e2776be2ba8c3051b38b88fa737b13c42cb721558d79b5eedac2c`  
		Last Modified: Thu, 16 Jul 2026 00:18:26 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5f5dee58f276cce2ff7b486b3e3fee07b732f6d22733ab4330f230bb40b0cd`  
		Last Modified: Thu, 16 Jul 2026 00:18:37 GMT  
		Size: 138.0 MB (138008567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9e305c749add4ff3cd224bcbdfa40cee73113d390c6eb79c8b77891271975f`  
		Last Modified: Thu, 16 Jul 2026 00:18:26 GMT  
		Size: 103.4 KB (103427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48bc122995266bfbad115d178836ddcfa127c340c822dd193b794be5cea6fd3`  
		Last Modified: Thu, 16 Jul 2026 00:18:26 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:25-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:6b28e648ba42c1abfb5f2538ae4e94feb4e4c73f26f1db2c8dda0a45d10639d4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262304361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0538df4d547299f8dc9d2b689cb59851069b9a4cc4d2f7550a74318c8996eca`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:52:07 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:53:45 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Wed, 15 Jul 2026 23:53:45 GMT
ENV JAVA_HOME=C:\openjdk-25
# Wed, 15 Jul 2026 23:53:45 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:53:47 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 15 Jul 2026 23:53:47 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:54:03 GMT
COPY dir:93c9a33f6e3b7bf9a4cc6584352427179a8f4d1e9396155b43179dd1c4270396 in C:\openjdk-25 
# Wed, 15 Jul 2026 23:54:07 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 15 Jul 2026 23:54:08 GMT
CMD ["jshell"]
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
	-	`sha256:6bf919f9aff1c541bddd576ca03636b499dcc642700749e716bfd1d54826ff85`  
		Last Modified: Wed, 15 Jul 2026 23:54:13 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0637690385d02733331f614add1b414d6731a8264d5a0b41a0395fd8ac78f870`  
		Last Modified: Wed, 15 Jul 2026 23:54:13 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12daf67082dc15b25277a930d82b713af488e00a1a2a70bcc90a2a152fad2eaa`  
		Last Modified: Wed, 15 Jul 2026 23:54:13 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d8dd9d1e6e7a15717731295a43256b2d05f1b351ae3c2a6cb47050e607036f`  
		Last Modified: Wed, 15 Jul 2026 23:54:12 GMT  
		Size: 77.0 KB (77004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd95545c571b5bdb1cc7d10501bfddeb44f0b337faee49906e13e10ed5af843f`  
		Last Modified: Wed, 15 Jul 2026 23:54:12 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba569b7947da52900ed9332b2945afd9d421e8337d4c6b010e561d4fb7691a8`  
		Last Modified: Wed, 15 Jul 2026 23:54:23 GMT  
		Size: 138.0 MB (138008932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529db19ca3a2d87921efeadd624e84590899cf2087b5c2b7afc1543a1ccc431c`  
		Last Modified: Wed, 15 Jul 2026 23:54:12 GMT  
		Size: 108.9 KB (108935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de81de6f633818ec818472a33dd0b164f424a79abf0ae319c492e0e51cc24d36`  
		Last Modified: Wed, 15 Jul 2026 23:54:12 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
