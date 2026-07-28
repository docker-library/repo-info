## `openjdk:28-ea-8-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:a84372cf04263a97477f5f95653e4905a46a595e9b269677c5ff738931cd21ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-8-jdk-nanoserver` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:5194b60880a9cd5f68bc55eeb1bdba0e5281d516aa209a57592dc5a7e82cd55a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.5 MB (421514542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52151be0516dc009d069cfb43e0fc7e973836c4c01edcdf9df96268643369261`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Mon, 27 Jul 2026 23:15:21 GMT
SHELL [cmd /s /c]
# Mon, 27 Jul 2026 23:15:23 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 27 Jul 2026 23:15:23 GMT
USER ContainerAdministrator
# Mon, 27 Jul 2026 23:15:38 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 27 Jul 2026 23:15:38 GMT
USER ContainerUser
# Mon, 27 Jul 2026 23:15:38 GMT
ENV JAVA_VERSION=28-ea+8
# Mon, 27 Jul 2026 23:16:34 GMT
COPY dir:3c840a56791b65a6eea21b2906c70d44ba0006ccb593edc6e1627c9f7723d925 in C:\openjdk-28 
# Mon, 27 Jul 2026 23:16:41 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 27 Jul 2026 23:16:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9309d676f28347d6a2a48fe1ffe5cbaab794755caa8e85198f42901445db233`  
		Last Modified: Mon, 27 Jul 2026 23:16:52 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2052a204169380ed9654091c6b6694b3ad3804bdca2efe8e07be2e9ed1a162a`  
		Last Modified: Mon, 27 Jul 2026 23:16:52 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603de8b1f1d5f18889009be1cd88d4a97e44c5e3e612d5305773f71e54cda749`  
		Last Modified: Mon, 27 Jul 2026 23:16:52 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198cef24dbc478b20639c9ab19783698416348815f0e1ee3bfe798ba6835e56`  
		Last Modified: Mon, 27 Jul 2026 23:16:52 GMT  
		Size: 69.9 KB (69891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36656963047671617aa473ec18c61f70abfff81cb9037cc9290189a6654fd2a4`  
		Last Modified: Mon, 27 Jul 2026 23:16:50 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3b5bf7c9602b025863edd3299ab9d9b07d491e98082f9840e6d9c89bb701e7`  
		Last Modified: Mon, 27 Jul 2026 23:16:50 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2df16cf6f23f9237ed64e144a585221fa527d943ba9e99f6f60158c6ca669a6`  
		Last Modified: Mon, 27 Jul 2026 23:17:04 GMT  
		Size: 224.1 MB (224135431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fbdeff75872d18b076b6491feefa2c1a9f86f40a0c849f97c48c8360b40d91`  
		Last Modified: Mon, 27 Jul 2026 23:16:50 GMT  
		Size: 83.6 KB (83642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c806bb1f82899a9db18ece2178a9554f151d7139594807323c48afbae91e936`  
		Last Modified: Mon, 27 Jul 2026 23:16:50 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-8-jdk-nanoserver` - windows version 10.0.20348.5386; amd64

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
