## `openjdk:28-ea-16-jdk-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:4ab509c0a0f192d687a73aedb463d2ca90c30cf203442f59c4a04b75898fa521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `openjdk:28-ea-16-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:ea5dce3a01d1f5c51b27fa49cd632b7299609868b4a2909a1bed617063bcf297
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.1 MB (437113103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb18b649fee46d32669f903d082e8cf37fcedb8aba40f89e189250b96824d15`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Fri, 18 Sep 2026 23:18:49 GMT
SHELL [cmd /s /c]
# Fri, 18 Sep 2026 23:18:50 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 18 Sep 2026 23:18:50 GMT
USER ContainerAdministrator
# Fri, 18 Sep 2026 23:19:01 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 18 Sep 2026 23:19:02 GMT
USER ContainerUser
# Fri, 18 Sep 2026 23:19:02 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 23:19:59 GMT
COPY dir:51c64424afb4f45f7d86d3317fba018c6781d00e41327c893ad0f784c873179d in C:\openjdk-28 
# Fri, 18 Sep 2026 23:20:04 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 18 Sep 2026 23:20:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b062b4d03ec024be55668316a97004229ad16423c44bebe2777ed524e3f8e7`  
		Last Modified: Fri, 18 Sep 2026 23:20:16 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a67dccb4049ef61369c4a28a5e8e2627f353e62d9227579af4504ad73bba5c`  
		Last Modified: Fri, 18 Sep 2026 23:20:16 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:212f3d3fc70542bc37774caacb6f8f4a2a2fa3a1aad524cf0a8508e80512a168`  
		Last Modified: Fri, 18 Sep 2026 23:20:16 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee04010f4dcc66b2e1c0780755d23e15dd79d656ced96dbe3cc649b75e42fdf`  
		Last Modified: Fri, 18 Sep 2026 23:20:15 GMT  
		Size: 76.5 KB (76476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380286fdbb348db83d97b5cfe2aa43a2602d0d2cfa27aebe78116d1d1e462a52`  
		Last Modified: Fri, 18 Sep 2026 23:20:14 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7720e7940e1c6397b470d39bc3331ef4376872f92d23515fb7aad51a811f604d`  
		Last Modified: Fri, 18 Sep 2026 23:20:14 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85f57fd310b3f65bcc9fd0a92b0b62a930fb1013cba8f6a90c41751a1c4a409`  
		Last Modified: Fri, 18 Sep 2026 23:20:30 GMT  
		Size: 239.3 MB (239302169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d4ac7b618f41c5e4fd8cfa1b9e55f7fa2c01c0b798064a88def863d1eb5fa6`  
		Last Modified: Fri, 18 Sep 2026 23:20:14 GMT  
		Size: 77.7 KB (77723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181e8ca6255dd8128fefa8861926cb765c6dcf806aa003307c15101e61a48fea`  
		Last Modified: Fri, 18 Sep 2026 23:20:14 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
