## `openjdk:28-ea-23-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:7e3ede48ef7cb328cc8b02bcef54c5ddeb5b8ad4baddf084f07b68f680158622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `openjdk:28-ea-23-jdk-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull openjdk@sha256:3f7bdcfed1a2ff55a6030454e1f2485262ec5d2e2e773a2ca796d381ae86d018
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.7 MB (439749702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0cf00f1fc55be369434d61dc28ba2ffd6e144793dc446facab1407f89923c6d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 10 Nov 2026 23:50:49 GMT
SHELL [cmd /s /c]
# Tue, 10 Nov 2026 23:50:50 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 10 Nov 2026 23:50:51 GMT
USER ContainerAdministrator
# Tue, 10 Nov 2026 23:51:04 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 10 Nov 2026 23:51:04 GMT
USER ContainerUser
# Tue, 10 Nov 2026 23:51:05 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 23:52:14 GMT
COPY dir:eccb7be0a9f8eaa58f5562ed94140b38f060cdd923e40d7690403e8044ef352a in C:\openjdk-28 
# Tue, 10 Nov 2026 23:52:24 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 10 Nov 2026 23:52:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f06546eb0b021439584ed9bd39f934329a4c5572a2153a125777eaa570fe99a`  
		Last Modified: Tue, 10 Nov 2026 23:52:32 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cf76895c921c400b6fdb09c90e6e4a77e28f75c3ac8370f9651ac3ec2894ee`  
		Last Modified: Tue, 10 Nov 2026 23:52:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1b61d1d83fa8edc0c3ebb75ca6045ce863d83ae146d1d37cb7ebf20b6cc18f`  
		Last Modified: Tue, 10 Nov 2026 23:52:32 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b2d468ba1c8936e2ad6bc6e3dd500504392b837a39cd3fa23955448dd0e87d`  
		Last Modified: Tue, 10 Nov 2026 23:52:32 GMT  
		Size: 69.7 KB (69673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772c7df7f535de8b06a9e828583db52ac9d8aa308e1b84bfaa9d4aa58041d0ab`  
		Last Modified: Tue, 10 Nov 2026 23:52:30 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6011e1d91707b02480d6fd7bdd68c504535825574b1aac53fd3455cee32e6c64`  
		Last Modified: Tue, 10 Nov 2026 23:52:30 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef5959daec3790625e393e8103108428ee99122e60830bd25b74a2fe84244f6`  
		Last Modified: Tue, 10 Nov 2026 23:52:45 GMT  
		Size: 239.6 MB (239612368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f08eabf57d33b20d8c008daa3d88469cb60a3afa8a8dfd1533b6d67c3314066`  
		Last Modified: Tue, 10 Nov 2026 23:52:30 GMT  
		Size: 102.3 KB (102331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032a8fa6950dd6e5a72f4092cb46b994ea585bcd03e1b5bd73a47ff026078b30`  
		Last Modified: Tue, 10 Nov 2026 23:52:30 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-23-jdk-nanoserver` - windows version 10.0.20348.5773; amd64

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
