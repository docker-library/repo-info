## `eclipse-temurin:21-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:92fefb39bfc8e296f3588136b3a3b9e775d3ca428ca17295770ad1535e5f82e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:21-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:c2292c2a819b35ce30514708004a93b82a1484623c7d9df75eba9e29361f7e24
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.0 MB (327995823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c85401cabb17db8341923c5ddd9c26c5db9454ffc0cde94e4c8861f500a43fd`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:33:49 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:34:46 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 27 Oct 2026 18:34:47 GMT
ENV JAVA_HOME=C:\openjdk-21
# Tue, 27 Oct 2026 18:34:47 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:34:49 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:34:49 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:34:56 GMT
COPY dir:a6e369a550f6c35be174f5086a2da4e5b27cbca4abe58d0c11b678536d0a440d in C:\openjdk-21 
# Tue, 27 Oct 2026 18:35:01 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 27 Oct 2026 18:35:02 GMT
CMD ["jshell"]
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
	-	`sha256:29d325d2754f1612c3a624c8bd256ff4fb432b8b8d4692f264d6e9f0eb7ff5d1`  
		Last Modified: Tue, 27 Oct 2026 18:35:07 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3545926a070c0edf4e108ee39b84e30696194791c97fdb04f42df32141e0c3a7`  
		Last Modified: Tue, 27 Oct 2026 18:35:07 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70f43c9d3d63bb88a2b85c95e0954327f9aded78345a1a6295122d0b4f0b75a`  
		Last Modified: Tue, 27 Oct 2026 18:35:07 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c664b5251978be0e2502def3dc8794dd2ed82a3fb6f5b4e3d7a3e2ef280034`  
		Last Modified: Tue, 27 Oct 2026 18:35:06 GMT  
		Size: 77.5 KB (77533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b5e3e7ebd2f77b218d753b94d60dc1786f49d5c1d171cc8238382fca076d07`  
		Last Modified: Tue, 27 Oct 2026 18:35:06 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada0e7c50db326991e1d9de4b67155fbbc921639cf7f1144107ea6e7c2e49fad`  
		Last Modified: Tue, 27 Oct 2026 18:35:18 GMT  
		Size: 201.9 MB (201876303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5d57c8d9f282e2c15bbe711182f68db1935d48ca4c86243df9d8426b09dac1`  
		Last Modified: Tue, 27 Oct 2026 18:35:06 GMT  
		Size: 108.9 KB (108924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e147620f5d1ed56dd67a3567056cab53e80460a7ed98af20b067ea7906d5c48`  
		Last Modified: Tue, 27 Oct 2026 18:35:06 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
