## `eclipse-temurin:17-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:1e8dca821eede3e7ed5d4a9074a26d1c66aa31c65d63c3d8f47cbdb9e90d9cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:17-jre-nanoserver` - windows version 10.0.26100.33828; amd64

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

### `eclipse-temurin:17-jre-nanoserver` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:43aeb192de6b51213d465607353e630da3c9f0b5cc59ce5eb6a8ead0d264970c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170384999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059fe9f50d0e509da6c3289d43091d3e56fd494357dc0ac0d2e975e5bd2daf26`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 20:35:10 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:35:10 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Mon, 16 Nov 2026 20:35:11 GMT
ENV JAVA_HOME=C:\openjdk-17
# Mon, 16 Nov 2026 20:35:11 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:35:13 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:35:14 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:35:26 GMT
COPY dir:fe16e239a1cfb8e15b42e2adfbd36810f92b5ff8a1df876112d880bf633c6974 in C:\openjdk-17 
# Mon, 16 Nov 2026 20:35:29 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea961ea83833b6c13386b25ad7a87d3dde337695b8ac88578602607985d16a2c`  
		Last Modified: Mon, 16 Nov 2026 20:35:35 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7130484e8f697b52cc0d0adf4118dd0205f6c943a3b39a6cc650c1a1842deb`  
		Last Modified: Mon, 16 Nov 2026 20:35:35 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a962aca6790bc1bacf8228011cbf0dd5e20b929a4062f53db4a442bf63d9c14c`  
		Last Modified: Mon, 16 Nov 2026 20:35:35 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a620d4eca3dee2e6ee435906fbc9142fa5b237e8687980c007cd7e6c13fd1c`  
		Last Modified: Mon, 16 Nov 2026 20:35:33 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8b3b92b2dc3b0c52f38e636e21f2f1bffcdf02b9fb35018f55d4387d046482`  
		Last Modified: Mon, 16 Nov 2026 20:35:33 GMT  
		Size: 79.2 KB (79231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6f6bdcab795326439540ffa36d9be0302752d3bda71a03294860753806fde4`  
		Last Modified: Mon, 16 Nov 2026 20:35:33 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28058b1300e64a7b95a5d8ed1ea4dd9fc7adf8a6f7d4a8befa90e59cb90da20e`  
		Last Modified: Mon, 16 Nov 2026 20:35:38 GMT  
		Size: 43.9 MB (43926352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f04bdc1aa29809a995fe36aa1c4aa91e8bbcde4950b002442866cab11b1ad7`  
		Last Modified: Mon, 16 Nov 2026 20:35:33 GMT  
		Size: 100.2 KB (100178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
