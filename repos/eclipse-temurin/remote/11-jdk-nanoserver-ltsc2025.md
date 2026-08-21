## `eclipse-temurin:11-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:3747cd5cf998ae146ff85cef02c0121779a6d126753f11c66293d16a345d701b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:11-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:a141b8c37708f91346567c25c94d32c1002ced585c63544d29cec100383eb6b1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.4 MB (392407854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6651958753f8409092d2510497afc7582fea1044213f24431922fcc53cf5f91`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Fri, 21 Aug 2026 18:35:35 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:35:36 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:35:37 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 21 Aug 2026 18:35:38 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:35:50 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:35:50 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:36:17 GMT
COPY dir:5ff188efaadde1fc6eeed6540b26284c62d353d715b239adcd53bf550ccdbc2b in C:\openjdk-11 
# Fri, 21 Aug 2026 18:36:21 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 21 Aug 2026 18:36:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a807cc0701b3a4fffbe325ed2e341d4c1235a688a0dca04762f4798c5304ceff`  
		Last Modified: Fri, 21 Aug 2026 18:36:28 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f1ac1236b882af4d9b99e0679064ed9f092031f0a6b6de5f53876b25440bd6`  
		Last Modified: Fri, 21 Aug 2026 18:36:28 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a7276cc06a1f2f26c12ae40a4531c34dd384a4cc5907778c5c8a440bfd4dcd`  
		Last Modified: Fri, 21 Aug 2026 18:36:28 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c627d31eac2f7c570b203118f5bfa5afc908abac6ab8cb1090d05cfc671a719c`  
		Last Modified: Fri, 21 Aug 2026 18:36:28 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c5282e1b8892028b451fd767fb696f1ba1a1a8f484a49cd94475862b767658`  
		Last Modified: Fri, 21 Aug 2026 18:36:26 GMT  
		Size: 70.7 KB (70650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c98fb9db74bae380afe998da0feb3f398284828bb9cd88db0e9ead0ad59795`  
		Last Modified: Fri, 21 Aug 2026 18:36:26 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad34fb740cb9de7ae78c1d06d210729f7ad2886bbc256c0673248a15e24356`  
		Last Modified: Fri, 21 Aug 2026 18:36:36 GMT  
		Size: 194.8 MB (194766389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3131023233d682c8aba485ab69e01608f94ccab805ae15a7f1655993397b7b6e`  
		Last Modified: Fri, 21 Aug 2026 18:36:26 GMT  
		Size: 82.4 KB (82445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13dd4ad80be622e1197b2060b0589ca4a19f7e7ef8ed3f688e7263b0bf81e9be`  
		Last Modified: Fri, 21 Aug 2026 18:36:26 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
