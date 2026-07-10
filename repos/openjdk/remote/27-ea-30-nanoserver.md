## `openjdk:27-ea-30-nanoserver`

```console
$ docker pull openjdk@sha256:001a71fee720a2edfadbb55f1fb7b09c2bf0544be66bb4d0e562c3b64631410c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.32995; amd64
	-	windows version 10.0.20348.5256; amd64

### `openjdk:27-ea-30-nanoserver` - windows version 10.0.26100.32995; amd64

```console
$ docker pull openjdk@sha256:15fae0dcbb4c1cc971cf7d0c3c15af0a729e6718ab76903d9f8643a72c025544
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.0 MB (419979722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda504c8b64e9f02553be2d2343ee6bf045a322ca668f7b1bbe883796e82773f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 07 Jun 2026 07:06:15 GMT
RUN Apply image 10.0.26100.32995
# Fri, 10 Jul 2026 18:13:02 GMT
SHELL [cmd /s /c]
# Fri, 10 Jul 2026 18:13:04 GMT
ENV JAVA_HOME=C:\openjdk-27
# Fri, 10 Jul 2026 18:13:05 GMT
USER ContainerAdministrator
# Fri, 10 Jul 2026 18:13:23 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 10 Jul 2026 18:13:23 GMT
USER ContainerUser
# Fri, 10 Jul 2026 18:13:24 GMT
ENV JAVA_VERSION=27-ea+30
# Fri, 10 Jul 2026 18:14:26 GMT
COPY dir:9c05a27038ce29679908b9e4f8e42ea1ba5c3566b9603f40bec0382cb1f736a4 in C:\openjdk-27 
# Fri, 10 Jul 2026 18:14:39 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 10 Jul 2026 18:14:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:64f5cd94d3bcd0fae94830b1fad0f8b3dc33677f8d7dc15c5219b56fe2a6584e`  
		Last Modified: Tue, 09 Jun 2026 22:11:30 GMT  
		Size: 196.7 MB (196668131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349d51d78c1f5808fa34d106d91d6b94df694d8e39d49598c1e79faa37e9f9e0`  
		Last Modified: Fri, 10 Jul 2026 18:14:46 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2465a3e801b6349431f64523ef9d8a2aebbf804092599856948d6819c24772c`  
		Last Modified: Fri, 10 Jul 2026 18:14:46 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc808d60c536d5e04f988995b89065f02e08e4c14634554e09c8331766e6625`  
		Last Modified: Fri, 10 Jul 2026 18:14:46 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2f13900cbdec67281985cf0b4a4b793f47416cf33c6f9f0ce2be6bda46b895`  
		Last Modified: Fri, 10 Jul 2026 18:14:46 GMT  
		Size: 70.3 KB (70273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7f3f83a82163961e17a929f7c04801da0973013c851d2bed7f65b4e1628276`  
		Last Modified: Fri, 10 Jul 2026 18:14:44 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7939f7afaf6029b81708f5227465d4f2b72efa7b4f2c1ce2c807922da11575ba`  
		Last Modified: Fri, 10 Jul 2026 18:14:44 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd677840ad75fff45b51c6f53f52af68c5b17fc0b438084b0bdf1e5776da7920`  
		Last Modified: Fri, 10 Jul 2026 18:14:58 GMT  
		Size: 223.1 MB (223121470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8832d466394f2c15db672d19363aa211e46b3f56cbdd5c9cfb577e61b17de597`  
		Last Modified: Fri, 10 Jul 2026 18:14:44 GMT  
		Size: 113.6 KB (113608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eee5f349afc6b0e3a753621245dbf7e80c53cafa86037b215ca033c7632aec7`  
		Last Modified: Fri, 10 Jul 2026 18:14:44 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:27-ea-30-nanoserver` - windows version 10.0.20348.5256; amd64

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
