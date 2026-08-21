## `eclipse-temurin:17-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:64e910ee41e5a374ac6c1d3f14033253aa25636b3802143611ae449b5d4b34d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:17-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:121d15e18984416c2a89d2b86e16a38e8db6de9875fe057516f50c2f09f57b41
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.1 MB (312091298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3321e49fa98899436351961d5e48ab98af516ffe448bc33a35264dd95f683e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Fri, 21 Aug 2026 18:35:48 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:36:53 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:36:54 GMT
ENV JAVA_HOME=C:\openjdk-17
# Fri, 21 Aug 2026 18:36:55 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:36:57 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:36:57 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:37:19 GMT
COPY dir:2efdbec36c0747edfcd3701d361069b5b5efc5358da080c276b68df862639cb1 in C:\openjdk-17 
# Fri, 21 Aug 2026 18:37:23 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 21 Aug 2026 18:37:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f459426bce9b11f0fdd7188adcf536f7f83b7d387d61808eb4517c9e48324ee8`  
		Last Modified: Fri, 21 Aug 2026 18:36:18 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5d449a450adb3fd6c60b61cbd6b9d17cc0ae79d049e4463674a55f4dc65368`  
		Last Modified: Fri, 21 Aug 2026 18:37:29 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807faaeeb917b52485b86f9dab40499b8bdee764ca687765b5b48512d9203955`  
		Last Modified: Fri, 21 Aug 2026 18:37:29 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f039c8dd9c5f71661b786366cdefec10bbb936806aa80e64f8b3d19fbe0bc6bf`  
		Last Modified: Fri, 21 Aug 2026 18:37:29 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c27fe141c317f3854783abba5e523f2c446f5efcc85e2f83d1cbf8a063bf51`  
		Last Modified: Fri, 21 Aug 2026 18:37:28 GMT  
		Size: 76.7 KB (76690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3f2f81137b323395adaf02429ff95513d776552b23b2231569134d74c0e52c`  
		Last Modified: Fri, 21 Aug 2026 18:37:28 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c56cad843447d5cec524604176fd4b33dec8ac97542a65ce26ee6cf0f5324e`  
		Last Modified: Fri, 21 Aug 2026 18:37:39 GMT  
		Size: 187.6 MB (187642388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e422489c3cce2c3676ae8e9196bc1eb8d221a8c6935d46e24b31a75f858047`  
		Last Modified: Fri, 21 Aug 2026 18:37:28 GMT  
		Size: 107.9 KB (107948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2ce9e36c1ced775b907a128c2eb3e08d146d302adf183f2eae88eae3ed9689`  
		Last Modified: Fri, 21 Aug 2026 18:37:28 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
