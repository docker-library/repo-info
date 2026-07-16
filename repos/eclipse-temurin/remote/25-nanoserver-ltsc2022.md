## `eclipse-temurin:25-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:de2a772a680b73d5f2acb47d8ea0ae5e19dc86a2b768357bb751ada23737faf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:25-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

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
