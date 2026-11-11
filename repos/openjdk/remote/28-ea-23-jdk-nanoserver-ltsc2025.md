## `openjdk:28-ea-23-jdk-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:3e90224e17b867f97492c4cf45a4f5912df9e71621c540c10637d12ca47160a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `openjdk:28-ea-23-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull openjdk@sha256:3f7bdcfed1a2ff55a6030454e1f2485262ec5d2e2e773a2ca796d381ae86d018
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.7 MB (439749702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0cf00f1fc55be369434d61dc28ba2ffd6e144793dc446facab1407f89923c6d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 10 Nov 2026 23:50:49 GMT
SHELL [cmd /s /c]
# Tue, 10 Nov 2026 23:50:50 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 10 Nov 2026 23:50:51 GMT
USER ContainerAdministrator
# Tue, 10 Nov 2026 23:51:04 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 10 Nov 2026 23:51:04 GMT
USER ContainerUser
# Tue, 10 Nov 2026 23:51:05 GMT
ENV JAVA_VERSION=28-ea+23
# Tue, 10 Nov 2026 23:52:14 GMT
COPY dir:eccb7be0a9f8eaa58f5562ed94140b38f060cdd923e40d7690403e8044ef352a in C:\openjdk-28 
# Tue, 10 Nov 2026 23:52:24 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 10 Nov 2026 23:52:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f06546eb0b021439584ed9bd39f934329a4c5572a2153a125777eaa570fe99a`  
		Last Modified: Tue, 10 Nov 2026 23:52:32 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cf76895c921c400b6fdb09c90e6e4a77e28f75c3ac8370f9651ac3ec2894ee`  
		Last Modified: Tue, 10 Nov 2026 23:52:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1b61d1d83fa8edc0c3ebb75ca6045ce863d83ae146d1d37cb7ebf20b6cc18f`  
		Last Modified: Tue, 10 Nov 2026 23:52:32 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b2d468ba1c8936e2ad6bc6e3dd500504392b837a39cd3fa23955448dd0e87d`  
		Last Modified: Tue, 10 Nov 2026 23:52:32 GMT  
		Size: 69.7 KB (69673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772c7df7f535de8b06a9e828583db52ac9d8aa308e1b84bfaa9d4aa58041d0ab`  
		Last Modified: Tue, 10 Nov 2026 23:52:30 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6011e1d91707b02480d6fd7bdd68c504535825574b1aac53fd3455cee32e6c64`  
		Last Modified: Tue, 10 Nov 2026 23:52:30 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef5959daec3790625e393e8103108428ee99122e60830bd25b74a2fe84244f6`  
		Last Modified: Tue, 10 Nov 2026 23:52:45 GMT  
		Size: 239.6 MB (239612368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f08eabf57d33b20d8c008daa3d88469cb60a3afa8a8dfd1533b6d67c3314066`  
		Last Modified: Tue, 10 Nov 2026 23:52:30 GMT  
		Size: 102.3 KB (102331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032a8fa6950dd6e5a72f4092cb46b994ea585bcd03e1b5bd73a47ff026078b30`  
		Last Modified: Tue, 10 Nov 2026 23:52:30 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
