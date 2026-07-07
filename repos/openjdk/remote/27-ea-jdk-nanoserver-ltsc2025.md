## `openjdk:27-ea-jdk-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:25de08116487b61bebd136adfbd2ce213b6f1d9a548014bda253f5757123e802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.32995; amd64

### `openjdk:27-ea-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.32995; amd64

```console
$ docker pull openjdk@sha256:d3d49ee35a9695d7d68262631fdd00b3bb1cc6b7c2a8abadc446b297190d37ef
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.0 MB (419973642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae49116649212031d2f35a36428b381aa2185aa12107f35c25cd7d84ccc264a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 07 Jun 2026 07:06:15 GMT
RUN Apply image 10.0.26100.32995
# Mon, 06 Jul 2026 22:14:14 GMT
SHELL [cmd /s /c]
# Mon, 06 Jul 2026 22:14:15 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 06 Jul 2026 22:14:15 GMT
USER ContainerAdministrator
# Mon, 06 Jul 2026 22:14:22 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 06 Jul 2026 22:14:23 GMT
USER ContainerUser
# Mon, 06 Jul 2026 22:14:23 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 22:15:09 GMT
COPY dir:f678f389962fdbe2068b3f9089fca1e2304ca1cddf7e4f14f4cd4f39a5e37cba in C:\openjdk-27 
# Mon, 06 Jul 2026 22:15:14 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 06 Jul 2026 22:15:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:64f5cd94d3bcd0fae94830b1fad0f8b3dc33677f8d7dc15c5219b56fe2a6584e`  
		Last Modified: Tue, 09 Jun 2026 22:11:30 GMT  
		Size: 196.7 MB (196668131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1b94a4148455ca7034fd7f79c4f374d100afb9e19206c78e807aa97d47b4a1`  
		Last Modified: Mon, 06 Jul 2026 22:15:26 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3406be3b43a0fe91a731429889ff3a65b025ca106333be9aebd4fc39e8846d52`  
		Last Modified: Mon, 06 Jul 2026 22:15:26 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed558f201a13cd4a02a8a3df9ccd681c65740868aaadd45915d4b11adff4ca14`  
		Last Modified: Mon, 06 Jul 2026 22:15:25 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac74b4ff6ae7e6792abe2923661f01f71926493da65faabb3b709174bb45598`  
		Last Modified: Mon, 06 Jul 2026 22:15:25 GMT  
		Size: 69.2 KB (69195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b39c82b1dba486812d5151df17e6c031419ddbff5f24d4718a1e73e231701e`  
		Last Modified: Mon, 06 Jul 2026 22:15:24 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2e521e3c383faa3bfa8a0898c777bdb9ac63097a10271a99f04641bf0dad9e`  
		Last Modified: Mon, 06 Jul 2026 22:15:24 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1fe01ff272ca3d6de91a70c7a73b02075519c9f502b621a4c0ee03ae471f1bd`  
		Last Modified: Mon, 06 Jul 2026 22:15:38 GMT  
		Size: 223.1 MB (223120690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f643b21d03fb975a30952439260fe5cb51798b18a3191128a3bb72b0af1dfc`  
		Last Modified: Mon, 06 Jul 2026 22:15:24 GMT  
		Size: 109.4 KB (109427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610792eaf66a9e074cf862d2ac0c2ce85f64d161a4124e818fa8c60915030b87`  
		Last Modified: Mon, 06 Jul 2026 22:15:24 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
