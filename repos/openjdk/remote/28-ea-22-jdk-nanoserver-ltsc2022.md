## `openjdk:28-ea-22-jdk-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:6c76f542c11b276960d0a5585861f62384d5103c4ad6f1a7111914eb29822429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `openjdk:28-ea-22-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull openjdk@sha256:f78adfcd3e5077870f9a53c16f2436d41ef14757a1411bcc1e51b0f870374e3f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.7 MB (365729913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0874a2060d48446151d266f4a33003b2eadaff347830b17b85c85a6d696d5a4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 03 Nov 2026 02:14:03 GMT
SHELL [cmd /s /c]
# Tue, 03 Nov 2026 02:14:07 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 03 Nov 2026 02:14:09 GMT
USER ContainerAdministrator
# Tue, 03 Nov 2026 02:14:32 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 03 Nov 2026 02:14:34 GMT
USER ContainerUser
# Tue, 03 Nov 2026 02:14:35 GMT
ENV JAVA_VERSION=28-ea+22
# Tue, 03 Nov 2026 02:17:19 GMT
COPY dir:b8ebaabaceb5d7f497e1414cd733a0f8f504f19c1c09b1099f5421fd7b41607a in C:\openjdk-28 
# Tue, 03 Nov 2026 02:17:33 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 03 Nov 2026 02:17:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04544f6d15ea70ad19e70bc16734f895688d6c80335784e15bb481d9442df5a`  
		Last Modified: Tue, 03 Nov 2026 02:17:40 GMT  
		Size: 1.1 KB (1094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5eba54dda7c26de47b375058d8481fd2807e8367872ab38cebb4223c373f15`  
		Last Modified: Tue, 03 Nov 2026 02:17:40 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514638ff2a79c5cfb3b5d057b1ac813dc552257b308d05f047189eba9e22a240`  
		Last Modified: Tue, 03 Nov 2026 02:17:40 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca8f1702f747e9150c871afb1da34b7f6cc9cd4e020757ca04aabc033938e15`  
		Last Modified: Tue, 03 Nov 2026 02:17:40 GMT  
		Size: 86.2 KB (86226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44e2de68d6dbd71997e95911ee9adb4de115e7621b89f3da0c789b7c598f157`  
		Last Modified: Tue, 03 Nov 2026 02:17:38 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8fd0ac7599e3164d64a5fb2912cd172f1ec1063996140d095ae00713658cc48`  
		Last Modified: Tue, 03 Nov 2026 02:17:38 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d422c3db13e6829db22c9d68975e77f211fb85f3a81dbe100278e251de76174`  
		Last Modified: Tue, 03 Nov 2026 02:17:54 GMT  
		Size: 239.6 MB (239581589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeaafe851c954a06c19561d3c5d8c116628fe0d0520adb4d5151e519d76891c`  
		Last Modified: Tue, 03 Nov 2026 02:17:38 GMT  
		Size: 129.1 KB (129093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807a48a987b73c6919789eec676d176c03b35a1a639cc81e3e0b2cd478e7ffa3`  
		Last Modified: Tue, 03 Nov 2026 02:17:38 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
