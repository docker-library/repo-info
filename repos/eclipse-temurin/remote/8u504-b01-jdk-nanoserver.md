## `eclipse-temurin:8u504-b01-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:2d8753969a9bfe87aaba80844a49bc384d278c55df29ef0b27288621a564d0fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:8u504-b01-jdk-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:f6ad709e5338caa0515b024b0a1a267a8b0fd853a634964ef1fec42ad8be2053
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.1 MB (302076856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4baae6e7ef7bdcfd9a9b21a309aacdea292faf2fc6936d2267625778f5754fc0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:39:11 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:39:12 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 27 Oct 2026 18:39:12 GMT
ENV JAVA_HOME=C:\openjdk-8
# Tue, 27 Oct 2026 18:39:13 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:39:20 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:39:20 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:39:34 GMT
COPY dir:2f81b6f86c0792931be4477281229eea743ca9e82e883595a621ccf3a9f5df80 in C:\openjdk-8 
# Tue, 27 Oct 2026 18:39:41 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d404488f03568ad8939d7c496af48147f7f1ad96e31d920afb6e5653a8e4eb79`  
		Last Modified: Tue, 27 Oct 2026 18:39:46 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4759a0c5da8792c04cef0ee4e8b21e33a238d4fabd408a8823abc0571fef7dab`  
		Last Modified: Tue, 27 Oct 2026 18:39:46 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5882fa192ff8d1cdad2dc28e588291a196d625926872aed5371b436f9422ee7`  
		Last Modified: Tue, 27 Oct 2026 18:39:46 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff4b1671ad1ca4e1015114e90847c24a1b886d04416b47b77ee94ce754293f44`  
		Last Modified: Tue, 27 Oct 2026 18:39:45 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad44ce8fc13134709c2683376bbe33f9e98266d5daf49441d2a8845fa624f8a`  
		Last Modified: Tue, 27 Oct 2026 18:39:45 GMT  
		Size: 78.4 KB (78407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c63b58099605c686483a1cf7fb782161fb5d06944cbdb243941669d1e3d832`  
		Last Modified: Tue, 27 Oct 2026 18:39:45 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bc411dcf071e72b10f291a69050989e18f6104eef373e4a75a725724193204`  
		Last Modified: Tue, 27 Oct 2026 18:39:51 GMT  
		Size: 101.9 MB (101913044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7a454b4fb53d37d6abe31af0512f9e2fca504667feedbcaad6a061558f0b0a`  
		Last Modified: Tue, 27 Oct 2026 18:39:45 GMT  
		Size: 121.1 KB (121093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:8u504-b01-jdk-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:4b65e7f47528da28d6bd8692654fcc353661acf0bb3b142939cef48d3f17d5e9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.0 MB (228023681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0cb903ac9631011a2a1b412bb169018cb5c107f3f33a8930a59ed68c23ffa8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:33:49 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:33:50 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 27 Oct 2026 18:33:50 GMT
ENV JAVA_HOME=C:\openjdk-8
# Tue, 27 Oct 2026 18:33:50 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:33:52 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:33:52 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:33:57 GMT
COPY dir:2f81b6f86c0792931be4477281229eea743ca9e82e883595a621ccf3a9f5df80 in C:\openjdk-8 
# Tue, 27 Oct 2026 18:34:01 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3a3e4525716bca2ee833abf7d72b16a801efc516b95c500852a3bfd03c20ff`  
		Last Modified: Tue, 27 Oct 2026 18:34:07 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7191db07243a66199e58f1f23626eb34fe394e2696c3fdb6154b8d80a286864f`  
		Last Modified: Tue, 27 Oct 2026 18:34:07 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66deae235726f1b194854ceb2bd9339bbd2461578a5620b64e5c8561c7ded0f`  
		Last Modified: Tue, 27 Oct 2026 18:34:07 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2631e61a970757f2c286f9bb16641f214211997631815fbeab3ec625d70a027f`  
		Last Modified: Tue, 27 Oct 2026 18:34:05 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f094d3f9e07a15e01d4a1204271638a349c2f6e09803828f3e5d21b37e218210`  
		Last Modified: Tue, 27 Oct 2026 18:34:05 GMT  
		Size: 77.3 KB (77284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f596785da1f3e4a538de993fc6036ee29af238a9cdbf070948b4e341674679`  
		Last Modified: Tue, 27 Oct 2026 18:34:05 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66177e6eb69ce13ccc87742536dbef7b5fce6dfe32cd050e5d35450cebadea2f`  
		Last Modified: Tue, 27 Oct 2026 18:34:12 GMT  
		Size: 101.9 MB (101913222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ac0c235ba194a641bf143f5232a53e6e901a8c6e8234d3dacba966fb4ce163`  
		Last Modified: Tue, 27 Oct 2026 18:34:05 GMT  
		Size: 101.2 KB (101175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
