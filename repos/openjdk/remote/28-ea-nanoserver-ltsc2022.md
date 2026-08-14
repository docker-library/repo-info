## `openjdk:28-ea-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:02b74ac25ef3dd7f52919cb51b41a15e3f782c63b416d41d4645e53b9bc4f43f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

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
