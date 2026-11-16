## `eclipse-temurin:17-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:63d7c891c928e00628959bbc9c2c7c2c54f9bdade4a26f7b7a150137416ca4b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:17-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:ef629242c2ed4071b0fc6f261aeef46050aa1d115cfe85f5e8f5784974465343
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244344944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729e9c08172ecaad2e4592848d7208b4a49228defee1fa28e8d339eb599f6d59`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:42:59 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:43:00 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Mon, 16 Nov 2026 20:43:01 GMT
ENV JAVA_HOME=C:\openjdk-17
# Mon, 16 Nov 2026 20:43:02 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:43:10 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:43:11 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:43:27 GMT
COPY dir:fe16e239a1cfb8e15b42e2adfbd36810f92b5ff8a1df876112d880bf633c6974 in C:\openjdk-17 
# Mon, 16 Nov 2026 20:43:32 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5aa8c692d5f0766ed98a558caa57abf0bad3a8694582c83353e3d7e79cc173`  
		Last Modified: Mon, 16 Nov 2026 20:43:38 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53eca401a19e94f4d21808f16e25a57fa7da9093e1fe5a7e7ab8cf42e786bbbf`  
		Last Modified: Mon, 16 Nov 2026 20:43:37 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9fc47fd09448aa01d8a9e310c0a23aab8b373bccfbe8abce8d4aae7b9702fa`  
		Last Modified: Mon, 16 Nov 2026 20:43:37 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2e7726f9c66873799fdb6d004958c01a7e32a3765e049eaca22ef7fe94a41d`  
		Last Modified: Mon, 16 Nov 2026 20:43:36 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49724ad574c6f6623273a122d2a47541ed9c77d663855e80785d9837f1dc3a55`  
		Last Modified: Mon, 16 Nov 2026 20:43:36 GMT  
		Size: 71.1 KB (71113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb953c71483345de2189c0df9f603b8c65dea80fd08ad76928d046470cedeaf`  
		Last Modified: Mon, 16 Nov 2026 20:43:36 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db59b8622bcc763978b14ae4ac566eccddcae56d9845fc69472a7bbe94597450`  
		Last Modified: Mon, 16 Nov 2026 20:43:41 GMT  
		Size: 43.9 MB (43926353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6f6b5ff08a8a6b131502e5e14d27abf93d6e21cf7feba2271573c3ce22ce28`  
		Last Modified: Mon, 16 Nov 2026 20:43:36 GMT  
		Size: 102.4 KB (102397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
