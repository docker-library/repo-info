## `eclipse-temurin:11-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:022938f004ae679384852e4866c96cc95f18b90716330879ce80c058c0753a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:11-jre-nanoserver` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:a315f196bbe13612710dde458c2e0e20cc13eebc9e5312aff06d3af2c477e91d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241139570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6df4101f510295b2b3ae10597d9957d61dcd1e871b7b4c60e25c4513f953fb40`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Wed, 15 Jul 2026 23:56:22 GMT
SHELL [cmd /s /c]
# Thu, 16 Jul 2026 00:17:18 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Thu, 16 Jul 2026 00:17:19 GMT
ENV JAVA_HOME=C:\openjdk-11
# Thu, 16 Jul 2026 00:17:19 GMT
USER ContainerAdministrator
# Thu, 16 Jul 2026 00:17:21 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Thu, 16 Jul 2026 00:17:21 GMT
USER ContainerUser
# Thu, 16 Jul 2026 00:17:30 GMT
COPY dir:b48d35a79d584b4e6e30bd64a65514a5a8dd37c415c758cd9c300ebbad014bb0 in C:\openjdk-11 
# Thu, 16 Jul 2026 00:17:33 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f9d3fe91de185ebc31da497bb384d730f4dd26c0e63146d597be99a5fae63f`  
		Last Modified: Wed, 15 Jul 2026 23:57:00 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c71b7bad763a793227f568ea15a2156178d5d0356e8dd473532ce22b0876cb`  
		Last Modified: Thu, 16 Jul 2026 00:17:39 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d259d535036866bc0cd6cfa040728f0c1283a103d1e23e109b6cc3d71ade512`  
		Last Modified: Thu, 16 Jul 2026 00:17:39 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68690fecb04a138250096ccf2798a3d0342c7545638071fe1590fce2c5d7fab`  
		Last Modified: Thu, 16 Jul 2026 00:17:37 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281662fe4792741defa7e0f445475308c866b1b5775237f061b7b23811db44f0`  
		Last Modified: Thu, 16 Jul 2026 00:17:37 GMT  
		Size: 72.0 KB (72016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906244cc56e8cd6f40d2f7f3ec44f1ed5efa00f34016a829882731f049fd4c99`  
		Last Modified: Thu, 16 Jul 2026 00:17:37 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fdcbd6c060af5e9b2199e7aa26b1d9c9cdd6b219dfe80814d5990534f8d7a0`  
		Last Modified: Thu, 16 Jul 2026 00:17:42 GMT  
		Size: 43.7 MB (43738689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2516bf92a822d792f3792dde2d6746ec9b0babd7c9df558b682b11d7b860a1f7`  
		Last Modified: Thu, 16 Jul 2026 00:17:37 GMT  
		Size: 104.3 KB (104293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:11-jre-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:c4679e8e44f7569700d07c7a6f4725d8a7bd0da3bf96d95620868a040e21846d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168025096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0a15457653ca93316120d3811d66adf244e04407fd201d47f99f83db0d0295`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:52:52 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:52:52 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 15 Jul 2026 23:52:53 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 15 Jul 2026 23:52:53 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:52:55 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 15 Jul 2026 23:52:55 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:53:03 GMT
COPY dir:b48d35a79d584b4e6e30bd64a65514a5a8dd37c415c758cd9c300ebbad014bb0 in C:\openjdk-11 
# Wed, 15 Jul 2026 23:53:05 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f8682eccdb2ac7f1e9b17207fa9dfdc73150e8ae6490ac752d2c5126a47f4`  
		Last Modified: Wed, 15 Jul 2026 23:53:11 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34798cbcbc1d7f7faea18fb5173a45a8310fb9ba50d750392e404c53fce9a6d`  
		Last Modified: Wed, 15 Jul 2026 23:53:11 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44ff7eef96344ca9364bbda28cdd629c31ba404760a0b11847836168a851a10`  
		Last Modified: Wed, 15 Jul 2026 23:53:11 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6443efbe685468d1eb20e9f7b241ce3297a2c835c8409c7aaadf8c9ee92049`  
		Last Modified: Wed, 15 Jul 2026 23:53:09 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bfab35f69f70e23a03d3ad2a92f7cfe01e106a8bfa33f0d01c9315682505eb`  
		Last Modified: Wed, 15 Jul 2026 23:53:09 GMT  
		Size: 77.6 KB (77565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da2bcde29a7723bdcdb1ed9e8a421b5877abe4bff7e71c2d96fdf256c1c4fed`  
		Last Modified: Wed, 15 Jul 2026 23:53:09 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663a6b327edac0597ea5f98d1453b49279ecdf345ed9fd2ca678ea726210faad`  
		Last Modified: Wed, 15 Jul 2026 23:53:14 GMT  
		Size: 43.7 MB (43738887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa57ddd1f67fd5b1226c673de6a7a58350e7459f1add925ab9d084e5e4a7941`  
		Last Modified: Wed, 15 Jul 2026 23:53:09 GMT  
		Size: 100.2 KB (100239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
