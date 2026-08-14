## `openjdk:28-ea-nanoserver`

```console
$ docker pull openjdk@sha256:2ca140ba0e6255051f4ac3481652271164dda9610478a07caa6412e3478a90aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-nanoserver` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:14dc3bac5defa73a449c7c473436ebd1ee91609fec4f57c218788564f30f4eba
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.8 MB (436785007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae5474694d99fbda43b1b65c89931fa292d9b4154c96351c334e48f68f32db8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Fri, 14 Aug 2026 18:26:09 GMT
SHELL [cmd /s /c]
# Fri, 14 Aug 2026 18:26:09 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 14 Aug 2026 18:26:10 GMT
USER ContainerAdministrator
# Fri, 14 Aug 2026 18:26:20 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 14 Aug 2026 18:26:20 GMT
USER ContainerUser
# Fri, 14 Aug 2026 18:26:21 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 18:27:06 GMT
COPY dir:8d4ac5244d472cca78ebc678a9c6db4675c3542ace53842a565e5897508bd700 in C:\openjdk-28 
# Fri, 14 Aug 2026 18:27:17 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 14 Aug 2026 18:27:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205f31ef131db21cd18fb993db1ebc6c245dcef3de1309d418c32ee04e248411`  
		Last Modified: Fri, 14 Aug 2026 18:27:23 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a01c4f70e9ef4dd2e884883331079c0b17c77041c2cb5f55d1f32f7c5dba38`  
		Last Modified: Fri, 14 Aug 2026 18:27:23 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cdbc2193e77ca1b59a9736f88f71d8bc5fa7dca67a7fe5622ffbcff03b493e`  
		Last Modified: Fri, 14 Aug 2026 18:27:23 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adacc8202b7b9d3d1bde33afaa12921363dd76e684397b4529260226b4b78a8c`  
		Last Modified: Fri, 14 Aug 2026 18:27:23 GMT  
		Size: 70.6 KB (70559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911559cd8f01cf53069907ec32a685880edd22197df5b660ca8132d30e7d6ad2`  
		Last Modified: Fri, 14 Aug 2026 18:27:22 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e56cdb95f12e7a468d691893fe339d1db5eb4ae2ec16c2f2e2c99e737220422`  
		Last Modified: Fri, 14 Aug 2026 18:27:21 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e479982afeb515a210a0ecf0795e40e885a484102857d5f7032e3a60ca78e79b`  
		Last Modified: Fri, 14 Aug 2026 18:27:37 GMT  
		Size: 239.1 MB (239091968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29dd60139121ff7525a5c7fdbd5be832eccabd8a81e94e64845270139637d88`  
		Last Modified: Fri, 14 Aug 2026 18:27:22 GMT  
		Size: 134.1 KB (134105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf18c1620aae8c8261756c659845b9920162dc784e3a720d36df070138146c`  
		Last Modified: Fri, 14 Aug 2026 18:27:21 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:ea3c40a18d0240553fecd16ac39d505754bdbcdadc002f36af2b251a749d95ae
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.5 MB (363537277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a52748a0dc0396407799987a9572101440c5b3ee510b44dc77573015056295c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Fri, 14 Aug 2026 18:26:13 GMT
SHELL [cmd /s /c]
# Fri, 14 Aug 2026 18:26:14 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 14 Aug 2026 18:26:14 GMT
USER ContainerAdministrator
# Fri, 14 Aug 2026 18:26:26 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 14 Aug 2026 18:26:27 GMT
USER ContainerUser
# Fri, 14 Aug 2026 18:26:27 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 18:27:09 GMT
COPY dir:8d4ac5244d472cca78ebc678a9c6db4675c3542ace53842a565e5897508bd700 in C:\openjdk-28 
# Fri, 14 Aug 2026 18:27:14 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 14 Aug 2026 18:27:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858a2ab3e0d41a1d4a5e61a60c4b8f664c48df0abbc80634f078a1354c7acfc3`  
		Last Modified: Fri, 14 Aug 2026 18:27:21 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acfeafe5ef6936005d42468e363da6d86ec8528e2d6a5ec92613ae07784a32f`  
		Last Modified: Fri, 14 Aug 2026 18:27:21 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b9c65850a58ad1c7c066477fbf1ca4fd05368ee18b3c366d435cf5e4060337`  
		Last Modified: Fri, 14 Aug 2026 18:27:21 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1c0742497f3680780373c6cf10ef71598a9607759d1cb03e216dc8febe9bfa`  
		Last Modified: Fri, 14 Aug 2026 18:27:21 GMT  
		Size: 88.3 KB (88269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854d77db263c91047ebea37c8654360b71a3878618667dc424d4ccc3decea025`  
		Last Modified: Fri, 14 Aug 2026 18:27:19 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7775e68b18102b93b6b826b2f2d6e367d6af1ed105e316828d460465fdfcad0c`  
		Last Modified: Fri, 14 Aug 2026 18:27:19 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da4d0f041f65030c0f59979607b9ac705dd80c15fe40168e826dfc2a00e4772`  
		Last Modified: Fri, 14 Aug 2026 18:27:36 GMT  
		Size: 239.1 MB (239091981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03087baf77f2270c943f74dac76c34eb09a3aca3a05aff40a0552486024be38`  
		Last Modified: Fri, 14 Aug 2026 18:27:19 GMT  
		Size: 92.7 KB (92702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7afa9a66fc710590ceff1c7716a7aad816a2c280e928b4e0fc26ac82742f748`  
		Last Modified: Fri, 14 Aug 2026 18:27:19 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
