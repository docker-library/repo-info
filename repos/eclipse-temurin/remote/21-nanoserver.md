## `eclipse-temurin:21-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:e684814ead8b7a9a35ecb76183c0ab9b17a8b94b67177993b01396de21b12157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:21-nanoserver` - windows version 10.0.26100.33674; amd64

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

### `eclipse-temurin:21-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:36fbe9463b56d80b147e226560dfa12244ce32ff8c4b3808b8ce357a060f61fd
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.4 MB (328366399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c0369f9e1d0991b4dc485e32340befcc2bc64545d745b2baaa4affcb69c078`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Thu, 29 Oct 2026 19:48:21 GMT
SHELL [cmd /s /c]
# Thu, 29 Oct 2026 19:48:22 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:48:23 GMT
ENV JAVA_HOME=C:\openjdk-21
# Thu, 29 Oct 2026 19:48:25 GMT
USER ContainerAdministrator
# Thu, 29 Oct 2026 19:48:36 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Thu, 29 Oct 2026 19:48:37 GMT
USER ContainerUser
# Thu, 29 Oct 2026 19:49:57 GMT
COPY dir:3c69d8edc03ef6b3f984ec479ade8010e93305a20601dbd14a3ed88be7a27183 in C:\openjdk-21 
# Thu, 29 Oct 2026 19:50:06 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Thu, 29 Oct 2026 19:50:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccc31e6c50173b94121055c5273e9fece43a2e370aeea5caefd0066f09b48b9`  
		Last Modified: Thu, 29 Oct 2026 19:50:13 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece04ba5b2424ffe3c50b1138ac46a97b1a6ac3510d0789d2bd44c30ce4cffbf`  
		Last Modified: Thu, 29 Oct 2026 19:50:13 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d187bf121ac67bf91d3b30b6f6ea714fac8076312843319728de3513a3a9a127`  
		Last Modified: Thu, 29 Oct 2026 19:50:13 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8561ceec5966e23eeb8daeffb653dc6e7c6e53f6ebcdef9ce7655dc1de32a2`  
		Last Modified: Thu, 29 Oct 2026 19:50:13 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33390c681497d1bcb7095314d446567cb9adc16b192dbe28de51bb29979ddf13`  
		Last Modified: Thu, 29 Oct 2026 19:50:11 GMT  
		Size: 85.9 KB (85946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f670899f9fcd0b12bb2b27a22d3fa377b2a8222bf1f85a8ae539cd4da8d9cdb7`  
		Last Modified: Thu, 29 Oct 2026 19:50:11 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3de5b17652b021a9fafc9126a343fe2424d2ac88638b6744a567d49f81cc79`  
		Last Modified: Thu, 29 Oct 2026 19:50:23 GMT  
		Size: 202.2 MB (202218377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73efceda3e4d770a3edbed7f5e2522a2192f7be989ab81598d92738a531e039d`  
		Last Modified: Thu, 29 Oct 2026 19:50:11 GMT  
		Size: 129.0 KB (128969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747480b01178b1d95b236436b8a4876749a8e55aba49c3ce9f9335dbbd5faec9`  
		Last Modified: Thu, 29 Oct 2026 19:50:11 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
