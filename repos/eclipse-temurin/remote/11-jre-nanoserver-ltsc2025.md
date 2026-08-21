## `eclipse-temurin:11-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:ebec51cc535200c9c89cd5fe760f6ba5cc26de64a3be378cd9551f90d242eefc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:11-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:f3686e63f50def8aa3948a0816e4b89a517b24ee350e94c85590d4971bb82684
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.4 MB (241382577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c056baae169afbdc2b425e8b4a23fea6648eae9a8068c9d937b9e1360ac509a8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Fri, 21 Aug 2026 18:35:58 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:35:59 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:36:00 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 21 Aug 2026 18:36:00 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:36:08 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:36:09 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:36:18 GMT
COPY dir:bfc80568a37b5fa62f5d6490514e0af3c53913d0d5e6afe3ddc66999cde9b07d in C:\openjdk-11 
# Fri, 21 Aug 2026 18:36:23 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110417b13e93aedf1ee27c872480ade5b1e0318115849ef4d2a3729fba3ea8c`  
		Last Modified: Fri, 21 Aug 2026 18:36:30 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d2f6f00b5a7b02228c0738c4fadf00a3c4ff0aa9f03e9d0d0055d0b34043f4`  
		Last Modified: Fri, 21 Aug 2026 18:36:30 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1981341a320e755490baf02d5547ce0837fa601b918cce48ae8675cef067d17`  
		Last Modified: Fri, 21 Aug 2026 18:36:30 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c6a61a04a100da70655039a45007a372c6e7c6f4fcaf7e867314d52b59fd0`  
		Last Modified: Fri, 21 Aug 2026 18:36:28 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f83312e5f26df801fc09d96ad02daf6a725b41ddb768fa1b73a92d95023787a`  
		Last Modified: Fri, 21 Aug 2026 18:36:28 GMT  
		Size: 71.4 KB (71418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d49bd769a4068c2ea191df108b8d2a1f865422d852f9b2975c5da407238727f`  
		Last Modified: Fri, 21 Aug 2026 18:36:28 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2829d8a40587b549d7c047aa83dcfca954216c268d045138d93d6e30b53989d0`  
		Last Modified: Fri, 21 Aug 2026 18:36:33 GMT  
		Size: 43.7 MB (43720913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beddd1ac249855ee086a689af10f9583dfd373270598d57cfae60ecf8d5b88e`  
		Last Modified: Fri, 21 Aug 2026 18:36:28 GMT  
		Size: 102.9 KB (102857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
