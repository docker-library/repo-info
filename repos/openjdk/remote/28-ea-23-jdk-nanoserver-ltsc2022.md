## `openjdk:28-ea-23-jdk-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:18adfe2873022f818b94e79dacd6f6bc4d053ad99419f34c1842d73b04a8b272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `openjdk:28-ea-23-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull openjdk@sha256:7bde1b97bc508bb9905c03c40a668ba5d19235a16a3dd10ab3ee468d55621a6f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.7 MB (365714914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102f1e6c065a59f945b5e1e46ef75a7f142b48caccadeab0eccf2ad7d8333a60`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Wed, 11 Nov 2026 00:08:27 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 00:08:28 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 11 Nov 2026 00:08:28 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 00:08:43 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 11 Nov 2026 00:08:44 GMT
USER ContainerUser
# Wed, 11 Nov 2026 00:08:44 GMT
ENV JAVA_VERSION=28-ea+23
# Wed, 11 Nov 2026 00:10:14 GMT
COPY dir:eccb7be0a9f8eaa58f5562ed94140b38f060cdd923e40d7690403e8044ef352a in C:\openjdk-28 
# Wed, 11 Nov 2026 00:10:20 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 11 Nov 2026 00:10:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207056b518b34f52260d25c51383cec1d395a203bd4b66aaafcf96be06681b91`  
		Last Modified: Wed, 11 Nov 2026 00:10:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e306106b78e055c436baeaee60d7945255b1cb01ac64768b23e9b29807c5f4ce`  
		Last Modified: Wed, 11 Nov 2026 00:10:26 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e286206234504f0924d6d63341baba3377ca95b363eb5e3282b95778b2c568ad`  
		Last Modified: Wed, 11 Nov 2026 00:10:26 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c4209a2b3b8d8e034c7039cda2ff516ea99d027ecfb55782cb56d2b616b57d`  
		Last Modified: Wed, 11 Nov 2026 00:10:26 GMT  
		Size: 71.5 KB (71466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7089dacd3faf394c042f676a582ffb1654b453ec36b293e01efb6ccdd18c9776`  
		Last Modified: Wed, 11 Nov 2026 00:10:25 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57ebabab7c2427ce391f09bd322c29a55dc113ae4fcb2fe406f5d878d96a39a`  
		Last Modified: Wed, 11 Nov 2026 00:10:25 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17358e079aababd49350acee74051434927dece30afa5b4592b3371a8333dc35`  
		Last Modified: Wed, 11 Nov 2026 00:10:40 GMT  
		Size: 239.6 MB (239613236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a83c7226e8bccb52f390ac0989f5a2017b1a7fceee73938363720dc46921dcc`  
		Last Modified: Wed, 11 Nov 2026 00:10:25 GMT  
		Size: 97.2 KB (97155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107eec1e2cf0833c453ba6e9baf24a4a5983cd9f0050163c63344e7d42484b94`  
		Last Modified: Wed, 11 Nov 2026 00:10:25 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
