## `openjdk:28-ea-7-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:68ae2d3fb8e15ae3db3ef709dcb864eae35a9cb570eacc0b82cf5b516e41bb13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-7-jdk-nanoserver` - windows version 10.0.26100.33158; amd64

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

### `openjdk:28-ea-7-jdk-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:14b81b287f69a32069bfc7f0e6d94ade40fd1d0d81407334f4bcd8bb043cf386
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.4 MB (348416726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:944493caa92d8544c48be9fabddc589219dde19c6dd88bcc8015cc96706e69a8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Fri, 17 Jul 2026 23:38:16 GMT
SHELL [cmd /s /c]
# Fri, 17 Jul 2026 23:43:39 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 17 Jul 2026 23:43:41 GMT
USER ContainerAdministrator
# Fri, 17 Jul 2026 23:43:45 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 17 Jul 2026 23:43:46 GMT
USER ContainerUser
# Fri, 17 Jul 2026 23:43:47 GMT
ENV JAVA_VERSION=28-ea+7
# Fri, 17 Jul 2026 23:45:04 GMT
COPY dir:815a6f18c1367b836c8b4b9d332970c5951580e500a023d49b9874b68d6eaaff in C:\openjdk-28 
# Fri, 17 Jul 2026 23:45:15 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 17 Jul 2026 23:45:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddae224543b8e7e7be0037f699010af1b1786a892158384b986af925e8fd9dfa`  
		Last Modified: Fri, 17 Jul 2026 23:40:45 GMT  
		Size: 1.1 KB (1091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d287c372396660275c67bedf444f81a8d11a10d0770d6e5294aa1160f1ed39bc`  
		Last Modified: Fri, 17 Jul 2026 23:45:21 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea55b6d3123f7281c4cca45c7a157fb42e9fe8355a4732f91571b083e11b6a52`  
		Last Modified: Fri, 17 Jul 2026 23:45:21 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f68f4ef76f62938c25a487cafb2584f6d9de8e571515d58546206c07d78255`  
		Last Modified: Fri, 17 Jul 2026 23:45:21 GMT  
		Size: 89.1 KB (89121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc857be59edb01936e37e2de2fdea9fd7d7e2bf3d5135664e12a67bc12d58ac`  
		Last Modified: Fri, 17 Jul 2026 23:45:19 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5324a04d89fd33c54239c6f693b5b9aafbc20ddf397226ea4240d7483327921`  
		Last Modified: Fri, 17 Jul 2026 23:45:19 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7012ff4a3a4d998e2e42c94f45b298f9a4e2b2e136055b8eed831d9fbbc7441`  
		Last Modified: Fri, 17 Jul 2026 23:45:35 GMT  
		Size: 224.1 MB (224081527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000766d3a93b2f188afaade7ce7acd542f8da4a3f1c96b2b97bc5ad3dd9a266b`  
		Last Modified: Fri, 17 Jul 2026 23:45:19 GMT  
		Size: 136.5 KB (136489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dbb3ca8366da0989371137abb52e49f3966f7f233aa168bebe0200ac9b6ae1`  
		Last Modified: Fri, 17 Jul 2026 23:45:19 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
