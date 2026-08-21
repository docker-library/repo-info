## `eclipse-temurin:26-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:9bc548e5ec562a71c1159d989358fb6ac1bde367ef11463ab0213773cea96490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:26-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:d84566c472c3484320dc902c12aeb3d933a2ae2a7eda043700df7b02ac65c0b3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.0 MB (338990168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a47322db5a36ef466ecaf2db7f469ac0b2d23741c624c7bd90f9363d2fe5e9e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Fri, 21 Aug 2026 18:36:03 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:50:22 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:50:22 GMT
ENV JAVA_HOME=C:\openjdk-26
# Fri, 21 Aug 2026 18:50:22 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:50:23 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:50:24 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:50:39 GMT
COPY dir:41be7f046b6b23393a5a8f45ec96dd32a1839da8d4fa6cfdff0b408563d7d9a9 in C:\openjdk-26 
# Fri, 21 Aug 2026 18:50:43 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 21 Aug 2026 18:50:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42f1322452cf361a90653dd2200a87faf545d608f3d4bad48c82aa3c52b729b`  
		Last Modified: Fri, 21 Aug 2026 18:36:58 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309743d2f92e9d0bac7841d3cc8530961333ff6f716760e700a6a7596acf1609`  
		Last Modified: Fri, 21 Aug 2026 18:50:49 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a7953fbc4375dc1720b24eefa42aa2e4e08e3d99e0d5c5e56da19ab0de3e93`  
		Last Modified: Fri, 21 Aug 2026 18:50:49 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb84c1d6792d3c5cac8f52b89dbf69f14c64f5c1bd6d67b78f5f4c55817e1e1`  
		Last Modified: Fri, 21 Aug 2026 18:50:49 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d83a49539994adc6e080cfe9ba8a98546a20aab6cbd6cbe7f78b7f45275f72e`  
		Last Modified: Fri, 21 Aug 2026 18:50:48 GMT  
		Size: 71.8 KB (71767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a90e796367392c67b362c30e51990b7759f987caa07321f5465820c6d071ab`  
		Last Modified: Fri, 21 Aug 2026 18:50:48 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e663d7d45d4e6f2a68ec92be107d607656da957dc62055cdaf87614115456c7`  
		Last Modified: Fri, 21 Aug 2026 18:50:59 GMT  
		Size: 141.3 MB (141317573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60a8e3745868a48e386a3c588c44aa6f69b1260469ef30dcdd07a9ca6e25e5a`  
		Last Modified: Fri, 21 Aug 2026 18:50:48 GMT  
		Size: 112.4 KB (112403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bd3536e02abbd501ba4dcd9490d1467c039e879bfdb6d675a8d2f49ad47e8d`  
		Last Modified: Fri, 21 Aug 2026 18:50:48 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
