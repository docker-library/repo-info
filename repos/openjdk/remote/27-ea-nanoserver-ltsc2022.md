## `openjdk:27-ea-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:13f7a79a808f2b5e24d68aded235e4a00cb6473b847215fb16cd2073a39f809d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5256; amd64

### `openjdk:27-ea-nanoserver-ltsc2022` - windows version 10.0.20348.5256; amd64

```console
$ docker pull openjdk@sha256:b8ddcedd6f53d78c7f7316c7d7663d22da90d8fc993a44b47324b23e3144f750
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.4 MB (347351422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf6287b90a886891ea65bd97c83eb29c97cd8413873506707103b88bfdb1fe1`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 07 Jun 2026 06:26:15 GMT
RUN Apply image 10.0.20348.5256
# Fri, 10 Jul 2026 18:20:27 GMT
SHELL [cmd /s /c]
# Fri, 10 Jul 2026 18:20:29 GMT
ENV JAVA_HOME=C:\openjdk-27
# Fri, 10 Jul 2026 18:20:31 GMT
USER ContainerAdministrator
# Fri, 10 Jul 2026 18:20:50 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 10 Jul 2026 18:20:51 GMT
USER ContainerUser
# Fri, 10 Jul 2026 18:20:52 GMT
ENV JAVA_VERSION=27-ea+30
# Fri, 10 Jul 2026 18:22:35 GMT
COPY dir:9c05a27038ce29679908b9e4f8e42ea1ba5c3566b9603f40bec0382cb1f736a4 in C:\openjdk-27 
# Fri, 10 Jul 2026 18:22:45 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 10 Jul 2026 18:22:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8fc8662767a8f63038f8f45ce82f52438fd89b4444ed43648c9e6a7f06330686`  
		Last Modified: Tue, 09 Jun 2026 17:48:06 GMT  
		Size: 124.0 MB (123997505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0202e8f3592e0fa1e17a6c0870fb26acc724dfe75b0fb3912076ce523bc90cbb`  
		Last Modified: Fri, 10 Jul 2026 18:22:53 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72c292a4f1e43203d753d51a3f8ef5083ebedf630a81332da05cf090af897fe`  
		Last Modified: Fri, 10 Jul 2026 18:22:53 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ae24d260b485112445578430dfe26f5b68c3ce2fac495c7c40fe4d9e23618b`  
		Last Modified: Fri, 10 Jul 2026 18:22:53 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b68110771e508d238a64a6b309a06730b9a16b4c0df96a81daa2bab3654e41`  
		Last Modified: Fri, 10 Jul 2026 18:22:53 GMT  
		Size: 86.9 KB (86904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d634ff957bcb2deb34830666d235b38cfacf2ec1ce9d45523509c2ead1357393`  
		Last Modified: Fri, 10 Jul 2026 18:22:51 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7fab1caf321674518154ccce5bcbfebeb63a145782bbf68bd791334dbb0702`  
		Last Modified: Fri, 10 Jul 2026 18:22:51 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7f36728b86d921330c5f9a9b4660c803f6cb7ac94fb829a5c83103664e745e`  
		Last Modified: Fri, 10 Jul 2026 18:23:05 GMT  
		Size: 223.1 MB (223121440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e70958f7ab2a2fc9038e121a59771e721395b3c3aa1fb92cb76c30c7c2f149`  
		Last Modified: Fri, 10 Jul 2026 18:22:51 GMT  
		Size: 139.2 KB (139221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef92eb2dcd7bf41d0e7b66a7bb5d2bab028cd9b8f18420f5bbdb0938ac7450`  
		Last Modified: Fri, 10 Jul 2026 18:22:51 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
