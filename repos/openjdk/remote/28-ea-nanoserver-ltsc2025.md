## `openjdk:28-ea-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:9d727e802d125e7b6eeb29959cfacb2cf94d2f97e639b5de48b8fec8b0a77bfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:28-ea-nanoserver-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:c94e8dbe75e99d24dc49652b94e9d87abec0f50f6b9bb4a7aa55f97f23cae8e9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.3 MB (415293593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b392c3619dec75196b15068fe90432222d8325d7bdd0d37fab1ee67ce8bea2bc`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Tue, 04 Aug 2026 02:22:00 GMT
SHELL [cmd /s /c]
# Tue, 04 Aug 2026 02:22:01 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 04 Aug 2026 02:22:01 GMT
USER ContainerAdministrator
# Tue, 04 Aug 2026 02:22:14 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 04 Aug 2026 02:22:15 GMT
USER ContainerUser
# Tue, 04 Aug 2026 02:22:15 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 02:22:47 GMT
COPY dir:ade7d8306458484ee4d1acd9a3b62fee8765b7626e6acd0d064062c8811f54c4 in C:\openjdk-28 
# Tue, 04 Aug 2026 02:22:53 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 04 Aug 2026 02:22:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b1ee1e93be2df679edbeb27f1863bbdff77ec47d5d422729cc4676fb0b7cb7`  
		Last Modified: Tue, 04 Aug 2026 02:23:00 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ce9ed8c1b155ae681fbac6c94080da421a99f9b9d5e85cd7f5b8de72ea6629`  
		Last Modified: Tue, 04 Aug 2026 02:23:00 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1bde780cb3afbe779b6ed80db05f561adb38b73521184b6a5b99dea000e7c8`  
		Last Modified: Tue, 04 Aug 2026 02:23:00 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce587c906ddaa5fca39cf01da1035463be872f4a6ce14964b64e7e22fdf5b911`  
		Last Modified: Tue, 04 Aug 2026 02:23:00 GMT  
		Size: 70.7 KB (70724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf30a917d6f60f0e471048fb92863d46d6627bf1fb49c6410976f2203f3c9`  
		Last Modified: Tue, 04 Aug 2026 02:22:58 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa28ffce9b12ab18a9480cc8e8bb486611e3d44042cdc5ad443c6a1805c169d`  
		Last Modified: Tue, 04 Aug 2026 02:22:58 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1720697720a4f9fb8458c70345d0ea526065a0219d920a4c1d05fdcf3a0377c3`  
		Last Modified: Tue, 04 Aug 2026 02:23:10 GMT  
		Size: 217.9 MB (217914059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde90035917807d9c0564b2d83e8e7a4bee6429c14765d2baee5b6c9f043c2ab`  
		Last Modified: Tue, 04 Aug 2026 02:22:58 GMT  
		Size: 83.2 KB (83201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ae093d77f57aa7b9e5eb10cf4212f0eb87ca63eaf8ab5cca24cfbb60c8a393`  
		Last Modified: Tue, 04 Aug 2026 02:22:58 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
