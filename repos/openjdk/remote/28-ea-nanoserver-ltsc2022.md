## `openjdk:28-ea-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:2bf1ccd21e5c65442146eb18ee8b6b14c4112a59faed7ab866ad5c665d59bccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

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
