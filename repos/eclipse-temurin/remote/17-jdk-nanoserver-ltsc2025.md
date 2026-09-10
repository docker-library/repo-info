## `eclipse-temurin:17-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:16911f78e2b20830ced2bca5e95b8948ceb737e36329c0fbf3bcd8c91dd4cafc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:17-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:4eb6eaee75c3ac33bb4a60571643fdc295124d662c8550cb64c356422316cf55
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.5 MB (385482553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6dfa08ba43412ca8e3330f651fe417229e082be5c9e12ce4285cdd3b2940a1`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Wed, 09 Sep 2026 23:23:06 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:23:06 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 23:23:07 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 09 Sep 2026 23:23:08 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:23:13 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:23:14 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:23:51 GMT
COPY dir:2efdbec36c0747edfcd3701d361069b5b5efc5358da080c276b68df862639cb1 in C:\openjdk-17 
# Wed, 09 Sep 2026 23:23:57 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 09 Sep 2026 23:23:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35223d348d409cc1b1cf25e756182638e013e46f31bc466d382333cdacb94dd4`  
		Last Modified: Wed, 09 Sep 2026 23:24:03 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866bde661c8afcc9b03ad95e96369557cc4bb9f8eff2972cd3dd16c6c71d82a4`  
		Last Modified: Wed, 09 Sep 2026 23:24:03 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b346c6bc5adc9f6ad4467b9006835258ff9119bc1ddb8fd59c5b8dad7af56e3`  
		Last Modified: Wed, 09 Sep 2026 23:24:03 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4170f95270a3dcbd62c8843b461722193a1b5052d0ab98a7b371e50dd2db4c37`  
		Last Modified: Wed, 09 Sep 2026 23:24:03 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88651802ba3587beacb728907e43e0044dfb71fe78674d1878b6a6bddf3cb68`  
		Last Modified: Wed, 09 Sep 2026 23:24:01 GMT  
		Size: 71.9 KB (71881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9951088413276c456d896a17d687f0695c828e998eda66a60ac3741cc92686de`  
		Last Modified: Wed, 09 Sep 2026 23:24:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728e3ed4c5e61e1e884208a6b75c36641b4726aa7238546738acd2271a17833e`  
		Last Modified: Wed, 09 Sep 2026 23:24:13 GMT  
		Size: 187.6 MB (187641970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b413b2ab97a8b6cd0dcde727e754edc53df6c7222c8bfc491514b1dbc3dda7ee`  
		Last Modified: Wed, 09 Sep 2026 23:24:02 GMT  
		Size: 112.0 KB (111955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdebf7158e07a1412ffa2a548af72b9055c8aee6d3292465b9fc41d641bf99c4`  
		Last Modified: Wed, 09 Sep 2026 23:24:01 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
