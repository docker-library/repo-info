## `openjdk:28-ea-jdk-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:aeb4597c68149b7306a337c06a40b79dac3a91c463c01bc58d3a60ac2ad0ddbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:1498c5fac75e29e4dd958d10637a9511ef0a276191212e3d8f82b5a83aacec3b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.4 MB (348418287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6add4138c64bff075765d1948c96faa7048e1a8b79f10fd225bb96630b8f2f59`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Mon, 27 Jul 2026 23:12:36 GMT
SHELL [cmd /s /c]
# Mon, 27 Jul 2026 23:14:28 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 27 Jul 2026 23:14:28 GMT
USER ContainerAdministrator
# Mon, 27 Jul 2026 23:14:30 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 27 Jul 2026 23:14:30 GMT
USER ContainerUser
# Mon, 27 Jul 2026 23:14:31 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 23:14:59 GMT
COPY dir:3c840a56791b65a6eea21b2906c70d44ba0006ccb593edc6e1627c9f7723d925 in C:\openjdk-28 
# Mon, 27 Jul 2026 23:15:04 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 27 Jul 2026 23:15:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52271c69be3656efa12ee56496b4ec90837d7c1976621da3a5f0ab86f76bfe58`  
		Last Modified: Mon, 27 Jul 2026 23:13:48 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414cec5da846e244938226124b671950c656b57eb09ab992df154a365d350bf6`  
		Last Modified: Mon, 27 Jul 2026 23:15:10 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cebc696994b99765f27f6b208fcab113e823950b5b5ee8fff01b9465e0b560`  
		Last Modified: Mon, 27 Jul 2026 23:15:10 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99840e6e930446b1d35d4ffbd4c2ec27dbdfbbca5032afc152aec20f276586f2`  
		Last Modified: Mon, 27 Jul 2026 23:15:10 GMT  
		Size: 76.3 KB (76315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d208ad35da639c03e070fc9f4a7f2f5f253706fddf81f0cebe35d35455525e64`  
		Last Modified: Mon, 27 Jul 2026 23:15:08 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413682ea40038990de53d5d56b3113547a7d46cd4b934c3dffde6b5ea91a7684`  
		Last Modified: Mon, 27 Jul 2026 23:15:08 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f192d93d10bc7f77eb7c305ef38ac474b62a7f47d9e26d61e3551ca0870e17`  
		Last Modified: Mon, 27 Jul 2026 23:15:21 GMT  
		Size: 224.1 MB (224135354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a3794c72dad7e25411b6054e231945142b8aabd23d9dc5220bc8b08c510ac0`  
		Last Modified: Mon, 27 Jul 2026 23:15:08 GMT  
		Size: 97.1 KB (97149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00678f7dcc86895d5b0fb3266ff01ea9b449473402bbee128e8dc92885b27c2a`  
		Last Modified: Mon, 27 Jul 2026 23:15:08 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
