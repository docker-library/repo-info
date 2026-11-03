## `openjdk:28-ea-22-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:84ddd3c79606d56da95446150a27aee8260e91df3ea58f15b3fca20b9f88b119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `openjdk:28-ea-22-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull openjdk@sha256:e88f621c5f2651d1298ac33ccd9c18d31ff6289168e07f080556d47d9fa723f3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.7 MB (439722376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e454aa3e9face0a8f32b43650ce0255cc4c32250719269af48ce7974705b011`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 03 Nov 2026 02:13:42 GMT
SHELL [cmd /s /c]
# Tue, 03 Nov 2026 02:13:46 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 03 Nov 2026 02:13:47 GMT
USER ContainerAdministrator
# Tue, 03 Nov 2026 02:14:09 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 03 Nov 2026 02:14:10 GMT
USER ContainerUser
# Tue, 03 Nov 2026 02:14:12 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 02:16:32 GMT
COPY dir:b8ebaabaceb5d7f497e1414cd733a0f8f504f19c1c09b1099f5421fd7b41607a in C:\openjdk-28 
# Tue, 03 Nov 2026 02:16:46 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 03 Nov 2026 02:16:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4babb3dd6b89489420e50b757ce2a7c67209c39ad5b19ba992bb8a0f252b5be2`  
		Last Modified: Tue, 03 Nov 2026 02:16:55 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40dfe97896da1edd6cb85c5a0519a0eba5666d9adb035fc3bb5d1ee9848453e`  
		Last Modified: Tue, 03 Nov 2026 02:16:54 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b14e6b2a1166e8fbaa2227674118e86113683c2ccf89cf4daf03b72a21101dd`  
		Last Modified: Tue, 03 Nov 2026 02:16:54 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b713053bdc300a059367ad1685234dfcf3cb49cc60b225fd33ef5c0c73436e`  
		Last Modified: Tue, 03 Nov 2026 02:16:54 GMT  
		Size: 72.6 KB (72641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094a738f3a040c4180758b63bebd8ab8b21634edfecb846e3558cda4ab6ffd96`  
		Last Modified: Tue, 03 Nov 2026 02:16:53 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d8e65d2f8758c304342d8fe8a8f210508abe70753442ebc73ba115aefb336`  
		Last Modified: Tue, 03 Nov 2026 02:16:53 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19d38fd735af0f3910528ae2685895133270104f418e4d7bd339e5d0399b253`  
		Last Modified: Tue, 03 Nov 2026 02:17:08 GMT  
		Size: 239.6 MB (239581524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403177e170c15b81a4e9cb80b073ca6c26088d0129e6751eeb7acf0747c647fd`  
		Last Modified: Tue, 03 Nov 2026 02:16:53 GMT  
		Size: 102.8 KB (102813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90605c0b36ba4e3870a76c0badc1161b3ab3efdd12b956ba27e1b5bffccaa2f`  
		Last Modified: Tue, 03 Nov 2026 02:16:53 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
