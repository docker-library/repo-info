## `openjdk:28-ea-9-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:292d3e9c747b554934896871df1cd1e3281b3a7b95bbb29252f95eb3715f5e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-9-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:5bae16ad747842211473e9c1e310d26d92e5c8ee7b12c84de482efd61b2b58de
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342198977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196659e12ea54ec326b1efaef14e09a892e20f1a381a45d96badfcebc4e76332`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 04 Aug 2026 02:43:43 GMT
SHELL [cmd /s /c]
# Tue, 04 Aug 2026 02:46:11 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 04 Aug 2026 02:46:12 GMT
USER ContainerAdministrator
# Tue, 04 Aug 2026 02:46:14 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 04 Aug 2026 02:46:14 GMT
USER ContainerUser
# Tue, 04 Aug 2026 02:46:14 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 02:46:56 GMT
COPY dir:ade7d8306458484ee4d1acd9a3b62fee8765b7626e6acd0d064062c8811f54c4 in C:\openjdk-28 
# Tue, 04 Aug 2026 02:47:01 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 04 Aug 2026 02:47:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173e10f42c89f66e6b0faeb1f163dcfd8c8320a828e4dfc282fd5640613e206f`  
		Last Modified: Tue, 04 Aug 2026 02:45:30 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6656f9b878661f1c68eb5a8a6a4d1b06765ebc18c9ee51f0c8db4c56505825`  
		Last Modified: Tue, 04 Aug 2026 02:47:07 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2370c13843929e710adad83a7f8b56597042bceb684464783d4aeef03032ca0e`  
		Last Modified: Tue, 04 Aug 2026 02:47:07 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d707af135be5a6e0dab02fe931f69951a787bf07d7b5da582d1dbc2e9b3b7263`  
		Last Modified: Tue, 04 Aug 2026 02:47:07 GMT  
		Size: 77.2 KB (77228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7c0ec574aed201a9315b19298b90fb391473fad8219e84a32dc0121ed08512`  
		Last Modified: Tue, 04 Aug 2026 02:47:05 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c861091c0a62db316cf4a6d95f7bfd580a90d80311884eb255f3110dbf3503`  
		Last Modified: Tue, 04 Aug 2026 02:47:05 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b910b5754ad2d4c628381f867e8208d2515da7e4f4dc39fa00ad349c74bebd5e`  
		Last Modified: Tue, 04 Aug 2026 02:47:18 GMT  
		Size: 217.9 MB (217914142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea2fe637f76c9a288714dabd0dfa39916c5b9a71661a75c83ba69d7f41ad593`  
		Last Modified: Tue, 04 Aug 2026 02:47:05 GMT  
		Size: 98.1 KB (98143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2af72f86fc3914dace153c5c61ffc39399babff2380db2d4fbad3f4e8cd5a2e`  
		Last Modified: Tue, 04 Aug 2026 02:47:05 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
