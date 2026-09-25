## `eclipse-temurin:11-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:ecc01b4c5111737fc4706d5e5c36b2aa9fad2906335533f74f2a6f3baad21828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:11-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:609bc4bd23a48efa176a47392217b3d2a3650f1508268876f7496f65212fb662
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.6 MB (392596665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:623ac8671aaee35b197cb75389e3828d733e51d8d3b2a63bc9fa399374d769b6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Fri, 25 Sep 2026 22:56:42 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 22:56:43 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:56:43 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 25 Sep 2026 22:56:44 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 22:56:48 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 22:56:49 GMT
USER ContainerUser
# Fri, 25 Sep 2026 22:57:10 GMT
COPY dir:abb22bd7f66d415f872b9b6353d786e1d425603507d47df4b9ec16e5af73f3ec in C:\openjdk-11 
# Fri, 25 Sep 2026 22:57:15 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 25 Sep 2026 22:57:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d036dcbdc41be6e0ddfcfdce27960d7efb752036dece35a945ac19e37533f58`  
		Last Modified: Fri, 25 Sep 2026 22:57:21 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8f82e7300f6a2e4e23503d43085a5d0e01b216ad3ffcd01ffc2e9eedbbac0e`  
		Last Modified: Fri, 25 Sep 2026 22:57:21 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5467c6484743d079c99c2036721ef2b52f17200d9d18ab8273ca87243eba4e8e`  
		Last Modified: Fri, 25 Sep 2026 22:57:21 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0295913b3fbb6a8a3566da5f9a99a2ace4d0f96ff22441c56f15f50b1ef3d8`  
		Last Modified: Fri, 25 Sep 2026 22:57:21 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61154238150d1cd73aa8a2124515ff6816515deae3050e30089e1eba5cb735b2`  
		Last Modified: Fri, 25 Sep 2026 22:57:19 GMT  
		Size: 70.4 KB (70405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa5e81d6380fdc1366f3ebdf59adb363cfb38203e82c77ab13052e22f39928a`  
		Last Modified: Fri, 25 Sep 2026 22:57:19 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3d152afa16bc9d5ad7555d58a86d3a4b6634cb598cee9b7668ea11c7171d19`  
		Last Modified: Fri, 25 Sep 2026 22:57:30 GMT  
		Size: 194.8 MB (194766303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394541ae6ca7e2909ab1e6b4df679af9491d3b067e169cee9d13df18ab8b4a1c`  
		Last Modified: Fri, 25 Sep 2026 22:57:19 GMT  
		Size: 103.2 KB (103178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039583908a72d6da80f5b200b6f02891536b158cd950ff3bfb5425a1143025d8`  
		Last Modified: Fri, 25 Sep 2026 22:57:19 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
