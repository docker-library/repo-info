## `eclipse-temurin:27-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:6a986e193a26e6e745b3efe9b540cc56d31ffe59f43b4e206d4aca572e38bef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:27-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:6952144f15c0b6e5b8f449a423334f868281e8f591657d60a80cc7ef6c2df364
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264538221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2adad97b882ee1c73e9c1716e5102795618cc8ed50c8e0ff017ae7e4ad0eb0c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Sat, 03 Oct 2026 01:08:15 GMT
SHELL [cmd /s /c]
# Sat, 03 Oct 2026 01:08:16 GMT
ENV JAVA_VERSION=jdk-27+35
# Sat, 03 Oct 2026 01:08:16 GMT
ENV JAVA_HOME=C:\openjdk-27
# Sat, 03 Oct 2026 01:08:17 GMT
USER ContainerAdministrator
# Sat, 03 Oct 2026 01:08:28 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Sat, 03 Oct 2026 01:08:28 GMT
USER ContainerUser
# Sat, 03 Oct 2026 01:09:01 GMT
COPY dir:a598b5fc3a93568869369eaabdea66c3c2b0ecde9417552cff3c1df8963b51f7 in C:\openjdk-27 
# Sat, 03 Oct 2026 01:09:05 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Sat, 03 Oct 2026 01:09:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6078d2221d30a73e888e5e4465330851a2ab63a631e7e827c6d675f1256d665e`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdf231543ae86564c553482f2ae6dbaea17c1f3a84fce73aa6a91cfd4fb7cb4`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282de4c7abeec4a42300046f43a528f20eb071418df9ed404ff61f81a21dbdb1`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19423acb12468825fe5f810bcf7475529f67184c21427d721121f9a291ca2c6a`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf41106202cb29c0c1a8ee290f69cfbc5c90c85447ef688601f86aa538efd1b`  
		Last Modified: Sat, 03 Oct 2026 01:09:11 GMT  
		Size: 81.5 KB (81550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc4b4b29ca36b1007d0c09d8c23094eb65baeb2d3e0546b8f0b96c1000eeb30`  
		Last Modified: Sat, 03 Oct 2026 01:09:11 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f62753debee2751c6f4ce6fb6060f83dd8a0cef86b034ce4e7e50117002cc2`  
		Last Modified: Sat, 03 Oct 2026 01:09:22 GMT  
		Size: 139.7 MB (139716155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764bf63c618d4a9cef398e5bfab09bc745d135c154d0374a9e4b985a038ade2d`  
		Last Modified: Sat, 03 Oct 2026 01:09:11 GMT  
		Size: 96.8 KB (96821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a09ee6a5379f8f28d74c394d51c1bd7d573a438081f2f0161f988b2d1ca996f`  
		Last Modified: Sat, 03 Oct 2026 01:09:11 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
