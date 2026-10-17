## `openjdk:28-ea-jdk-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:66f1bf63cd4a2043db9370d86de14731f8bbfc40bb3e74e0c9d5610b7a323240
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `openjdk:28-ea-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull openjdk@sha256:686392e9a057ba6ea4c634ba3e05bfa55c87b5c677e83d50feedcdb533a55ea8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.5 MB (439477386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe646f463cb7d44f8fcb993c8f8a6b2acb2409825627ed582d025e1c1b93af5`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Fri, 16 Oct 2026 21:08:51 GMT
SHELL [cmd /s /c]
# Fri, 16 Oct 2026 21:08:52 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 16 Oct 2026 21:08:52 GMT
USER ContainerAdministrator
# Fri, 16 Oct 2026 21:09:05 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 16 Oct 2026 21:09:05 GMT
USER ContainerUser
# Fri, 16 Oct 2026 21:09:06 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 21:10:09 GMT
COPY dir:4bba7de6503d0e36d90ffb0add4842884075965796326edf4413e7dd76b26d67 in C:\openjdk-28 
# Fri, 16 Oct 2026 21:10:18 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 16 Oct 2026 21:10:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472c4c5e519a520bf207322ce3a2ec82e18862d1ef6290182bc1f0b5f69770e8`  
		Last Modified: Fri, 16 Oct 2026 21:10:25 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533fdc2ded2dc3a57a0d5d945ad95dfc3a02ffdc1924190b2ace86fd652a599b`  
		Last Modified: Fri, 16 Oct 2026 21:10:25 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d34247edf6f14b634b1cf3f237da05ef7df9d2e67ecb46bff20280d87d49b91`  
		Last Modified: Fri, 16 Oct 2026 21:10:24 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde0136e582939ab0289b3ff1ec04cc32e9ae1ecce27a2ef540d22852cd33d57`  
		Last Modified: Fri, 16 Oct 2026 21:10:25 GMT  
		Size: 79.4 KB (79398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91151d357bfa717e524c198472b5042d73dea220bb4adc14379ee3911e167489`  
		Last Modified: Fri, 16 Oct 2026 21:10:23 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e4788b140d94cab044dc545b3c756744baa53f30e544ebcfa0387ba0f2cd3f`  
		Last Modified: Fri, 16 Oct 2026 21:10:23 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab373beb562326aeeeda767334731f48828190a914de9b0126d96c953fb72c0`  
		Last Modified: Fri, 16 Oct 2026 21:10:40 GMT  
		Size: 239.4 MB (239423874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87cbe09379d35051b716c783e5fd1a5bef0e229d90589a581d5077bc8529990`  
		Last Modified: Fri, 16 Oct 2026 21:10:23 GMT  
		Size: 96.8 KB (96787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a7b414f270ec36f989856fdd401573db69bb767954ede79786cf1d4dc4773d`  
		Last Modified: Fri, 16 Oct 2026 21:10:23 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
