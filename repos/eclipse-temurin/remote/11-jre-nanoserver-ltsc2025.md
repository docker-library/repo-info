## `eclipse-temurin:11-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:0d2fe25bf0bbcb62ed471c0a38e43a8067c8990c418a851d62513ac57b0dafb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:11-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:63681c212a2d3255ce2c01e0bb897d01426b416e12d61e0fe76c5fbfeb681093
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.1 MB (244144491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86da998d93b6871bce545eafe580f3c19fbe49daa2441971f3a572185771c24b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:42:56 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:42:57 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 16 Nov 2026 20:42:57 GMT
ENV JAVA_HOME=C:\openjdk-11
# Mon, 16 Nov 2026 20:42:58 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:43:07 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:43:08 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:43:25 GMT
COPY dir:93737fc4001a1f9c02514d128bafe582bbc15be9632d55eacb345ae32db307ef in C:\openjdk-11 
# Mon, 16 Nov 2026 20:43:28 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748aefe6e7254bbf923065b05c454ebc61b2455cda96ebcbaefef8f1b4a966a4`  
		Last Modified: Mon, 16 Nov 2026 20:43:34 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a23c18057283c5db93524c83165f09331a99f4c613fe105dd62d4bc23c64ea`  
		Last Modified: Mon, 16 Nov 2026 20:43:34 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b443cf568763f9f9c3683184d5c38819c0a02f74a9e2a04305cf742be04cc793`  
		Last Modified: Mon, 16 Nov 2026 20:43:34 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c32d5fd889015b92d6478bd7693e25d94ddf53e56bb2f7fa934f48e97f61f`  
		Last Modified: Mon, 16 Nov 2026 20:43:33 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7995ce0bd13baabc2c047e7accc62ecdb30742fbfac91bf241351fa20052ce70`  
		Last Modified: Mon, 16 Nov 2026 20:43:33 GMT  
		Size: 70.9 KB (70933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef34f387c75f5d86ad9d6b1ffead6e0802fed56b999a58875199d19cfc6f7b4`  
		Last Modified: Mon, 16 Nov 2026 20:43:33 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb614ea4d0a3c50806b1971834441fc4e26602dd614bbc3f9695b771cee31a2`  
		Last Modified: Mon, 16 Nov 2026 20:43:38 GMT  
		Size: 43.7 MB (43744210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19c109359a409e3f4cfa27a7348be913f295d99ad59655914d37e811ea9e35d`  
		Last Modified: Mon, 16 Nov 2026 20:43:33 GMT  
		Size: 84.3 KB (84332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
