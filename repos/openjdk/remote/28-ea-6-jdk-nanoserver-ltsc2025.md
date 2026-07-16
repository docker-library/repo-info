## `openjdk:28-ea-6-jdk-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:eff0a1748ab8fd3257945ac599531368e83770f9f79668e3d285aafbbfe442e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:28-ea-6-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:d393e6dda791967ab8e094bb9e898d006d84c5bd0d40b6c42c8ac66841d1532d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.5 MB (421460153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144a1f40c77c63cb63fdad7b483f3e057ac50a4cea4391c47d6b1c27d25870f1`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Wed, 15 Jul 2026 23:57:20 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:57:22 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 15 Jul 2026 23:57:22 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:57:28 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 15 Jul 2026 23:57:28 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:57:29 GMT
ENV JAVA_VERSION=28-ea+6
# Wed, 15 Jul 2026 23:58:12 GMT
COPY dir:3e5a4f6eb880dd82d06d57e8551c032af1385b632bb66c65dd911af65bfb3b33 in C:\openjdk-28 
# Wed, 15 Jul 2026 23:58:19 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 15 Jul 2026 23:58:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db7a0e2681b48107892d6588f441ed522bf0573c5d4f52043b50c77ae694590`  
		Last Modified: Wed, 15 Jul 2026 23:58:25 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250098a3f8f001764d0d0581712ac956ef7bb9c3ccd748b2622b2bf627803a4d`  
		Last Modified: Wed, 15 Jul 2026 23:58:25 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202631c0b1ea3fbd0489079f57a260e3779fa5022204a050e4348457e1eb45a6`  
		Last Modified: Wed, 15 Jul 2026 23:58:25 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a2ecfa9d3da5adf025a952ebeaa33a7d2856a5458dcf8d719b7cd4b03a45ba`  
		Last Modified: Wed, 15 Jul 2026 23:58:25 GMT  
		Size: 69.9 KB (69921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d87d736cb5ead40bf0f9fafdf0091e215d651d4ee48650d6cd6431a3824c107`  
		Last Modified: Wed, 15 Jul 2026 23:58:23 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98b13d704212db604e265e73168c745d217219a11698b320e203134b31e435`  
		Last Modified: Wed, 15 Jul 2026 23:58:23 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f8326c55585d6a97ef11163ab77c88034c242021ac16578ed592a9bcc00fd1`  
		Last Modified: Wed, 15 Jul 2026 23:58:38 GMT  
		Size: 224.1 MB (224062331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce68870f3c8d419d48c812742fd3c9610ee4c46d9bc28fbba31d20d1ffbc99f6`  
		Last Modified: Wed, 15 Jul 2026 23:58:23 GMT  
		Size: 102.3 KB (102293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c667c95f5d6c7da395a5084ad1177380d3c5f10200f39ebb11e58f1a55561e4a`  
		Last Modified: Wed, 15 Jul 2026 23:58:23 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
