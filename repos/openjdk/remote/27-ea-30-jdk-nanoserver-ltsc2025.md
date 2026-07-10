## `openjdk:27-ea-30-jdk-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:a07150e6413d7266e7124d6abb7ed66942461fb52814345a238e18fd6ea8b6cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.32995; amd64

### `openjdk:27-ea-30-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.32995; amd64

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
