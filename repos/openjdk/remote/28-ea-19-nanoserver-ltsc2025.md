## `openjdk:28-ea-19-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:ba34cb50cb188e58b196a1973a09315fe860ca26e929de923d5b937fc6f0621e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `openjdk:28-ea-19-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

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
