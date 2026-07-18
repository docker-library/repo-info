## `openjdk:28-ea-7-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:17b8033a82e8ae9c57515a4a14e368d7bcd1126faa75abed80b2a9cb20763f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:28-ea-7-nanoserver-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:2820b9cfb14d73efd4cbfc2e7b2bba7d2f272a04b57b44fe541622406a0430a9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.5 MB (421497075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4fcb3c710dd1eee398eb74274b3880a9d787dd835763d1a332aee75043acb0a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Fri, 17 Jul 2026 23:17:56 GMT
SHELL [cmd /s /c]
# Fri, 17 Jul 2026 23:18:00 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 17 Jul 2026 23:18:01 GMT
USER ContainerAdministrator
# Fri, 17 Jul 2026 23:18:17 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 17 Jul 2026 23:18:19 GMT
USER ContainerUser
# Fri, 17 Jul 2026 23:18:20 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 23:19:59 GMT
COPY dir:815a6f18c1367b836c8b4b9d332970c5951580e500a023d49b9874b68d6eaaff in C:\openjdk-28 
# Fri, 17 Jul 2026 23:20:12 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 17 Jul 2026 23:20:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c33d805559b2f34927cf730fb418618ce8fe51ff4f4b13e0999f27c2bf9ff7`  
		Last Modified: Fri, 17 Jul 2026 23:20:18 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b108e4e8d1556a5c36fe9f779e1190fea8fda14a041607400bc358e831ddaa5`  
		Last Modified: Fri, 17 Jul 2026 23:20:18 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7219b2008bfc6aa558973a0d86fb4ebeb7c307dc9c4ed587ad3e6a5122640d09`  
		Last Modified: Fri, 17 Jul 2026 23:20:18 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d740b018361b7a4d30f09e3ce6449405de34fceac216e170bba4cd20a1cc7d7`  
		Last Modified: Fri, 17 Jul 2026 23:20:18 GMT  
		Size: 76.7 KB (76653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802a79682c322365ee0187ddff2798071f605cc63304b491d7dd8d10950f2b24`  
		Last Modified: Fri, 17 Jul 2026 23:20:16 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f166fbf364adaf0cf285d8c36194b2f3d27b9526812e2488229e8f836e20cb`  
		Last Modified: Fri, 17 Jul 2026 23:20:16 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce96630dc74c601870dbe249db805f6876c4435610eb7c9dc3134caa35abc883`  
		Last Modified: Fri, 17 Jul 2026 23:20:30 GMT  
		Size: 224.1 MB (224081488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a789d215f061ca86a4177ef7f3b3190135f48c961aa2f1b9a3b0b5dd3d7f89`  
		Last Modified: Fri, 17 Jul 2026 23:20:17 GMT  
		Size: 113.4 KB (113366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d49685f9d07254d7012ff804f9ad955fad4727c02f99ae8f68e265e24c328`  
		Last Modified: Fri, 17 Jul 2026 23:20:16 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
