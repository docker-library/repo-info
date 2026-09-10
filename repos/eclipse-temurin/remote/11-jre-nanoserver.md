## `eclipse-temurin:11-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:0a31180f7e09fb4763682e6b15b294d0944ac107549285eafc9bfb715620b478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:11-jre-nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:e8a978b6723207ef47f068d4340ab8c46a2aaf4dd884694127a7676f699267ee
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241548980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1a5e69341132dea7ea275ca1b600e404ee7e6f487d311b8b31bc9e58c876b26`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Wed, 09 Sep 2026 23:22:49 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:22:50 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 09 Sep 2026 23:22:51 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 09 Sep 2026 23:22:52 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:22:58 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:22:59 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:23:20 GMT
COPY dir:bfc80568a37b5fa62f5d6490514e0af3c53913d0d5e6afe3ddc66999cde9b07d in C:\openjdk-11 
# Wed, 09 Sep 2026 23:23:25 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d959d10d6f21c45484ffce467cb3e840b6c1ca8545c3e5bb5f7e0ab997ca9ac1`  
		Last Modified: Wed, 09 Sep 2026 23:23:31 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cdd020705b2978c3aee03544e686db2c65cca4b5b28a842cf793710f1183eeb`  
		Last Modified: Wed, 09 Sep 2026 23:23:30 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1423c3eac995e1f8cdac1f348a97afc9b71bbeba88c64fd6db6232e43dc77cde`  
		Last Modified: Wed, 09 Sep 2026 23:23:30 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8c2a440cde345f66e02208938e5a489fffdb800846cccd3183af70d1f69994`  
		Last Modified: Wed, 09 Sep 2026 23:23:29 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d2558b3648ab97eb3fc2d8a1085a54597edaedecc0aeb4d9fde26987df77cf`  
		Last Modified: Wed, 09 Sep 2026 23:23:29 GMT  
		Size: 69.9 KB (69912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9b2cccb85da9c628389818bc2802fd47e33f1907c96dbe9ebb5796e76a278f`  
		Last Modified: Wed, 09 Sep 2026 23:23:29 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4fbf8353c14e1e07bdf847c7ced08004f05633318b6002486a723959271ee0d`  
		Last Modified: Wed, 09 Sep 2026 23:23:34 GMT  
		Size: 43.7 MB (43720870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626bd75c12808d9614483c68100c95216189f89fff329e696a8c8c14c7e566d1`  
		Last Modified: Wed, 09 Sep 2026 23:23:29 GMT  
		Size: 102.5 KB (102462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:11-jre-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:0c67a4def48246f20dc70e6ccea916e294ef2503c3429f64a5ec96cbba669f45
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168542706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0913f42e1cd036dddcf1f69d90c5e533da7bcce1792b901ed31c4e1d109d838a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:21:00 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:21:01 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Wed, 09 Sep 2026 23:21:01 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 09 Sep 2026 23:21:02 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:21:03 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:21:04 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:21:07 GMT
COPY dir:bfc80568a37b5fa62f5d6490514e0af3c53913d0d5e6afe3ddc66999cde9b07d in C:\openjdk-11 
# Wed, 09 Sep 2026 23:21:10 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bf4bbc6d3d57d9e2d4bf255e66a33386c44201e91ea9b28f1fc9d549d9a882`  
		Last Modified: Wed, 09 Sep 2026 23:21:16 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df5fdedffd1eaa02162d5088df2b9b1de081125c86bb45ee5c136ea80cedbcd`  
		Last Modified: Wed, 09 Sep 2026 23:21:16 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aeb9378d4e854f97ef597ea4649a47a022890fb4808b64562d532233d3c3f7a`  
		Last Modified: Wed, 09 Sep 2026 23:21:16 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c64aa0b8a99a08ea1401b39c6a922be2695f871d0fd9ef215a9ee47eea5395`  
		Last Modified: Wed, 09 Sep 2026 23:21:14 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7946da15dfaa46df4f72af7728fa172a51eaba75e92a4d6a6853258838b36c`  
		Last Modified: Wed, 09 Sep 2026 23:21:14 GMT  
		Size: 78.9 KB (78894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba53c54446124200b0371047e7eb13f41d682d7aec58fb4b8df571fdf1cfcc0`  
		Last Modified: Wed, 09 Sep 2026 23:21:15 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb02f47e4b4742dc348501808986684d744c54c3eb4a31b7d55e4b6d440415de`  
		Last Modified: Wed, 09 Sep 2026 23:21:19 GMT  
		Size: 43.7 MB (43720787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5659260d1ea69b93333476d405cab339187cd357e56d4362292889334ee8a`  
		Last Modified: Wed, 09 Sep 2026 23:21:14 GMT  
		Size: 100.3 KB (100294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
