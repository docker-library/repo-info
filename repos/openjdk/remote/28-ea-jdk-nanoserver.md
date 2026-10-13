## `openjdk:28-ea-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:6d46e2daf7e62201d5eaaf15f7fb8129abb7af937f92e3386d1756e72789bf2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-jdk-nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:920689efbd9c385917cbb8a5c44dee48fe08e638dad23ef0115c51c59e04707f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.2 MB (437178639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86ab98a9cba501bd5d45b2b367ae6f46137b27fa3221fdd99ef94ae87462061`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Mon, 12 Oct 2026 23:09:51 GMT
SHELL [cmd /s /c]
# Mon, 12 Oct 2026 23:09:51 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 12 Oct 2026 23:09:51 GMT
USER ContainerAdministrator
# Mon, 12 Oct 2026 23:10:05 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 12 Oct 2026 23:10:05 GMT
USER ContainerUser
# Mon, 12 Oct 2026 23:10:06 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 23:11:07 GMT
COPY dir:c208d4ddb823c6de37c796046bc4c0d90d3d226ecf0b2aab672eaf34a98fea52 in C:\openjdk-28 
# Mon, 12 Oct 2026 23:11:16 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 12 Oct 2026 23:11:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e11ff7d161588e04eb8b656fc9d9b5685dcd126adbbcd6ac82e9bc4eccfd25`  
		Last Modified: Mon, 12 Oct 2026 23:11:22 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f861962f5645a7dcfd5648b22a82fcd53ada119f3a84ef3c1ca07edade76cda3`  
		Last Modified: Mon, 12 Oct 2026 23:11:22 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fe9db11b6152fd38325725706ed16e2119bbed621e3190db91d0150f53aba2`  
		Last Modified: Mon, 12 Oct 2026 23:11:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a1f47238dfd82efd52bee60b759e09b89da906547e31645c3087676b9a94fe`  
		Last Modified: Mon, 12 Oct 2026 23:11:22 GMT  
		Size: 77.2 KB (77250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860adb8e816809f026ef456b08b5abda9abdd0522b3dbe18e7079538ccd8f3c5`  
		Last Modified: Mon, 12 Oct 2026 23:11:20 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b5c445f7307bbef632315026d0dc63edf885c5b6b5656e89093e97c4829867`  
		Last Modified: Mon, 12 Oct 2026 23:11:20 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8e83027e0714022698042641d172f09b070092fae33adc844eece0933d7e51`  
		Last Modified: Mon, 12 Oct 2026 23:11:35 GMT  
		Size: 239.3 MB (239347693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955cf9f58177cf339c5e61e1f03e4178128a44324d12cc84d7fffe568fb0eb40`  
		Last Modified: Mon, 12 Oct 2026 23:11:20 GMT  
		Size: 96.9 KB (96945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c75b54ad1033a16b4beeced8c79c751e7f7d6d4950f21a5b40b4ab1801e3cec`  
		Last Modified: Mon, 12 Oct 2026 23:11:20 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:e6a961d7f86dfe1a60e570930b4dba154075dcac498a62bccd5ab86db6418881
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.2 MB (364161856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b01315debc1eb60ae13272305707367d1c5098d5576ed1dbd747b9e459c65a10`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 23:09:58 GMT
SHELL [cmd /s /c]
# Mon, 12 Oct 2026 23:09:59 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 12 Oct 2026 23:09:59 GMT
USER ContainerAdministrator
# Mon, 12 Oct 2026 23:10:12 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 12 Oct 2026 23:10:12 GMT
USER ContainerUser
# Mon, 12 Oct 2026 23:10:13 GMT
ENV JAVA_VERSION=28-ea+19
# Mon, 12 Oct 2026 23:10:57 GMT
COPY dir:c208d4ddb823c6de37c796046bc4c0d90d3d226ecf0b2aab672eaf34a98fea52 in C:\openjdk-28 
# Mon, 12 Oct 2026 23:11:04 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 12 Oct 2026 23:11:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f9ae55eeaa5ddb216f7edc282e88af56463d20550fbe3032e718e912c69e9b`  
		Last Modified: Mon, 12 Oct 2026 23:11:10 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0610cc3c0b0f34f6812e2dbd0e94ab833bbcddb75737c0bb3a94c16535e6863e`  
		Last Modified: Mon, 12 Oct 2026 23:11:10 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d42d54e8f0cd2c0b2ee96e465d5256d64f21cc82ebec51ac9bd5c2af4a7da7`  
		Last Modified: Mon, 12 Oct 2026 23:11:10 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54343e3f7a8a6b227888c55392486dc40b7de7fc5eee51937dc2764c1bb5ebbe`  
		Last Modified: Mon, 12 Oct 2026 23:11:10 GMT  
		Size: 81.2 KB (81231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cae622052dd0a8f5db0ab3065014a4203623acc32595820323521cef112cddc`  
		Last Modified: Mon, 12 Oct 2026 23:11:08 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d8d1de31c2a9e59869ce57a04e252487860c2607dc494625ab68217be74b25`  
		Last Modified: Mon, 12 Oct 2026 23:11:08 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1fa2271d90da1ca821e38bfc4837077c9676072d03ac080662ee6a4e55eaee`  
		Last Modified: Mon, 12 Oct 2026 23:11:23 GMT  
		Size: 239.3 MB (239347681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537539daaf5ba958b28261242132d26dd04c399ae153d0d2026007379de3d8f8`  
		Last Modified: Mon, 12 Oct 2026 23:11:08 GMT  
		Size: 89.2 KB (89191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40cf3cd1a5a612652f6a8dcc73602e8a671913360ef3282324c3e7f7300cf5`  
		Last Modified: Mon, 12 Oct 2026 23:11:08 GMT  
		Size: 1.0 KB (1016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
