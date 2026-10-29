## `eclipse-temurin:21-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:78f4d6c654ae3e66b165ffc7c9726b01b9c2e5c9f08eb2e513c40400ff88ed69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:21-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:b02560dc9131df33d4c4ad476d07d380ad4bf6e2bff785dd919f84aee1464316
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.4 MB (402357745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a439b17eefd4862e611a4205b454200d56537defde5c6e6f3231df4a6001d0a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Thu, 29 Oct 2026 19:48:17 GMT
SHELL [cmd /s /c]
# Thu, 29 Oct 2026 19:48:17 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:48:18 GMT
ENV JAVA_HOME=C:\openjdk-21
# Thu, 29 Oct 2026 19:48:19 GMT
USER ContainerAdministrator
# Thu, 29 Oct 2026 19:48:27 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Thu, 29 Oct 2026 19:48:28 GMT
USER ContainerUser
# Thu, 29 Oct 2026 19:48:54 GMT
COPY dir:3c69d8edc03ef6b3f984ec479ade8010e93305a20601dbd14a3ed88be7a27183 in C:\openjdk-21 
# Thu, 29 Oct 2026 19:49:01 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Thu, 29 Oct 2026 19:49:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1ed43b7dc0b9bc9e594519af56e99314d4d2ad9f33faba52c529335ba80516`  
		Last Modified: Thu, 29 Oct 2026 19:49:08 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b640e5a992a760e5d49f13bc551eb6d5fe125d64011910dfa4e295d883789cb9`  
		Last Modified: Thu, 29 Oct 2026 19:49:08 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7604f7fa32422b57d819829f8c719892390282aaf205bf5655dc87f3ca36a90e`  
		Last Modified: Thu, 29 Oct 2026 19:49:07 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b27c4a7e5489d070d28a012bcc035929fa1685813c71c3172d152a2090414e`  
		Last Modified: Thu, 29 Oct 2026 19:49:07 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adad3a7b580b62612537d7bef8d35630ce48a7c5971f7a0b1c2d5bbe491f5ecc`  
		Last Modified: Thu, 29 Oct 2026 19:49:06 GMT  
		Size: 70.9 KB (70902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e2742e49c03d32f733552967a2f4c8a7b7339e4f164b0fe64c73f886e44597`  
		Last Modified: Thu, 29 Oct 2026 19:49:06 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f365257495486119901aa8c89f890343f54432a9a154bb4a79a74605ba3d03fd`  
		Last Modified: Thu, 29 Oct 2026 19:49:18 GMT  
		Size: 202.2 MB (202218548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff29c3b193b8fce9fce6c8f637f9c89417ff87fe4e36229f424f4c455015a85`  
		Last Modified: Thu, 29 Oct 2026 19:49:06 GMT  
		Size: 103.0 KB (102967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e21fe75a88f83f553779d7b3b091105914818729230e0b851044d1eb3a5af36`  
		Last Modified: Thu, 29 Oct 2026 19:49:06 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
