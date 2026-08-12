## `eclipse-temurin:25-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:b02caba5805517ee393f50885610868ed835e85810106261e2d53e13e04bce2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:25-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:faccafd210ee3af4e169d2f1f62985b6afbb27b8124336d60d784ad0af971aab
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.7 MB (335683277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:131e0ab84bb32df387648f459d622c3427a94225c905fa91f03b033817d63228`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 18:20:50 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 18:21:48 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Wed, 12 Aug 2026 18:21:49 GMT
ENV JAVA_HOME=C:\openjdk-25
# Wed, 12 Aug 2026 18:21:50 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:21:52 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 18:21:52 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:22:14 GMT
COPY dir:93c9a33f6e3b7bf9a4cc6584352427179a8f4d1e9396155b43179dd1c4270396 in C:\openjdk-25 
# Wed, 12 Aug 2026 18:22:18 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 12 Aug 2026 18:22:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ec65832b9226c18d74fc001094a3604bef5f9b045a7a6bff76d0d812f9501`  
		Last Modified: Wed, 12 Aug 2026 18:21:14 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd32f6f50d9070a1c989ab09dc6a8cd4607511e6a7f3b5a5aa4c3559f81781a`  
		Last Modified: Wed, 12 Aug 2026 18:22:25 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759bd86c0a8aa6b538ad505a5c4c33d5983cdf2907a0040ca1ca81db21a33d74`  
		Last Modified: Wed, 12 Aug 2026 18:22:25 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae32cf019aa8a68cb3632f21c807013689cdf2815c94ac8b18b60ccb71f8b5a`  
		Last Modified: Wed, 12 Aug 2026 18:22:25 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1603ee40b9c7cddd11a3abb31bddb121e0e98a7e236b59aafa173d3cd3cafdd`  
		Last Modified: Wed, 12 Aug 2026 18:22:23 GMT  
		Size: 71.8 KB (71841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65eed4822451008197f5e40e7beb3034a91ca8703bca905f7fa690f8fb66e99`  
		Last Modified: Wed, 12 Aug 2026 18:22:23 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b3cae5defe1b9f41e1e03f57ae7f0a07c5e4821db6f737c6fdab61c6dc05a8`  
		Last Modified: Wed, 12 Aug 2026 18:22:34 GMT  
		Size: 138.0 MB (138008464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45dd45cd6788de5e4e1fed6de0ca72066cfb1dcbabec3be03a312aaba003dd6c`  
		Last Modified: Wed, 12 Aug 2026 18:22:24 GMT  
		Size: 114.6 KB (114601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4fee819514c07968ca6b9e43e17c00748979a4cc0d38fdbafa9b3abd43455`  
		Last Modified: Wed, 12 Aug 2026 18:22:23 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
