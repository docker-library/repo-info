## `eclipse-temurin:26-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:d7f662ad63db46718d127c76df261229eccd846b4585cdd57c945bb5ec1133e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:26-jre-nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:1447edc9257c7c053e271c39b67e5ea152c8ff264c4286b2319435931d63577d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258077759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e08b5101ea4e9dab0ff54310d3f8bb3ebabfb56d8b11a8c2c88aff66ee17197b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Wed, 09 Sep 2026 23:22:56 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:25:03 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 23:25:04 GMT
ENV JAVA_HOME=C:\openjdk-26
# Wed, 09 Sep 2026 23:25:04 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:25:06 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:25:06 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:25:25 GMT
COPY dir:75cac0e3d3f7e04546a46f2d73944f1fd04849a83636454c9d766ff12f7bd02c in C:\openjdk-26 
# Wed, 09 Sep 2026 23:25:29 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a599efcbe60ec5836910aba8c432bc0aa4e4f98cc67776646f8d78cd631b1537`  
		Last Modified: Wed, 09 Sep 2026 23:23:32 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778bc571402ae267ff7a1d39a383101bb58919fdfabd3623241b008a96f3d445`  
		Last Modified: Wed, 09 Sep 2026 23:25:34 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce93efd3123f2a63d9c9a42527887dbe6cbd7d2176b1d8f481335b007f34d074`  
		Last Modified: Wed, 09 Sep 2026 23:25:34 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47483463fb285ee81a4e31b52f697ab56b2c790eee907f9269d5f79df86a6fe`  
		Last Modified: Wed, 09 Sep 2026 23:25:33 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb7d3241e1f4a1082120d09ee0f4badab919fc45d59cf74480bd53e4783f4b2`  
		Last Modified: Wed, 09 Sep 2026 23:25:33 GMT  
		Size: 72.8 KB (72785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335698123bff1070b8916dbca5d19b328d0b67cad350787e01f9521f520db03f`  
		Last Modified: Wed, 09 Sep 2026 23:25:33 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730d51374b73b8249198a925b50a0477020bf40bcbb6977899a485634a912702`  
		Last Modified: Wed, 09 Sep 2026 23:25:40 GMT  
		Size: 60.2 MB (60245060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d8998c035e642d2f02bf16d57df3399603d2d983da7e95c2e5f5024816442e`  
		Last Modified: Wed, 09 Sep 2026 23:25:33 GMT  
		Size: 104.2 KB (104249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:26-jre-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:cc871282d76f2ff30164f4e992b34a8ee1a6db887d5fb8490ed7a9a69412e93c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185054690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e930d20aeb69b354c01a3f801041dedf72257c08d53dfaa7d1f00a4c442831`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:21:00 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:22:49 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 23:22:49 GMT
ENV JAVA_HOME=C:\openjdk-26
# Wed, 09 Sep 2026 23:22:50 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:22:51 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:22:52 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:22:56 GMT
COPY dir:75cac0e3d3f7e04546a46f2d73944f1fd04849a83636454c9d766ff12f7bd02c in C:\openjdk-26 
# Wed, 09 Sep 2026 23:22:59 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bf4bbc6d3d57d9e2d4bf255e66a33386c44201e91ea9b28f1fc9d549d9a882`  
		Last Modified: Wed, 09 Sep 2026 23:21:16 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a5991341b84147e729e966c2d85135c36896f06f3946dfd73a5d90bf9bc53d`  
		Last Modified: Wed, 09 Sep 2026 23:23:04 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5594b1390677e952e5a234686deb192517a963fbe18489f7c18cc6aa7a4d3408`  
		Last Modified: Wed, 09 Sep 2026 23:23:04 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7e22bd4eb8bcf42a7b9cc69748b80863db6c64a47307ec471b294a25b5a2cf`  
		Last Modified: Wed, 09 Sep 2026 23:23:02 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80d68f773ce125a0233e920d3186e970dd57a22063424294ad52c90ff3fa8f`  
		Last Modified: Wed, 09 Sep 2026 23:23:03 GMT  
		Size: 76.8 KB (76780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82704dc1e5c63f1224f9eb68b23acb181b7065c955143c39e5b0f4ad9e9601e9`  
		Last Modified: Wed, 09 Sep 2026 23:23:02 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7a26308d41b64ed0b5a835c7d5480a919e5a940b1a080a5f07bcc730bef9db`  
		Last Modified: Wed, 09 Sep 2026 23:23:10 GMT  
		Size: 60.2 MB (60244878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ee7975d2fc9a962957d78342b91757788de92644707420984ba1e3f24b0f92`  
		Last Modified: Wed, 09 Sep 2026 23:23:03 GMT  
		Size: 90.3 KB (90281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
