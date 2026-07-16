## `eclipse-temurin:17-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:8620f0482c9b40f494bce40ce32d86fa5d1c5506a42109c3b73593ceab0c55e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `eclipse-temurin:17-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:42790a964f15341dc30583fd0306c670b6445e1466cf6c8f7c87f34f4d88aa2c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241232533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a418da175ca70cb1c04d3dfb492b63af759fbb5073e767d9aac67b21a44246f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Thu, 16 Jul 2026 00:17:39 GMT
SHELL [cmd /s /c]
# Thu, 16 Jul 2026 00:17:40 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Thu, 16 Jul 2026 00:17:41 GMT
ENV JAVA_HOME=C:\openjdk-17
# Thu, 16 Jul 2026 00:17:41 GMT
USER ContainerAdministrator
# Thu, 16 Jul 2026 00:17:49 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Thu, 16 Jul 2026 00:17:49 GMT
USER ContainerUser
# Thu, 16 Jul 2026 00:18:03 GMT
COPY dir:2f70d7e82fbe25185baf6a6b1e05b870cb38c3ad05aac5b5932c695a93320f91 in C:\openjdk-17 
# Thu, 16 Jul 2026 00:18:08 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecac368158dcb28c7ec6a9e961932efae9281f0ed176035c1a13ad47999ce04e`  
		Last Modified: Thu, 16 Jul 2026 00:18:14 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46148262bc99db69cb0332d9091147966a5ccfb289011f84a9752ced721a0524`  
		Last Modified: Thu, 16 Jul 2026 00:18:14 GMT  
		Size: 1.0 KB (1004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cfbed04a3620894f883bb648fd653a17bad99beec27139568cd3d788a3a971`  
		Last Modified: Thu, 16 Jul 2026 00:18:14 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330b38a675e987b13ce067f01b914a08c300263af14d1b63239e76c44046c7c3`  
		Last Modified: Thu, 16 Jul 2026 00:18:12 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdadead9f46253af5c1ce9c0144fc91ec6cb729b5d3e82909fa255c299bc418a`  
		Last Modified: Thu, 16 Jul 2026 00:18:12 GMT  
		Size: 70.5 KB (70547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8128112ad2b985bc15763cc7edd3068e91c4e3313be9373917d2ebc4c5ecab78`  
		Last Modified: Thu, 16 Jul 2026 00:18:12 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73935b8c5779cb9d86db312f29b445f55225e6891881d52976474bb3ba8784a8`  
		Last Modified: Thu, 16 Jul 2026 00:18:18 GMT  
		Size: 43.8 MB (43834179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da01c5fa1fb2fd8e3f7be0425fdf003038ff43e81e89f6251e4e1d72a649d15a`  
		Last Modified: Thu, 16 Jul 2026 00:18:12 GMT  
		Size: 103.3 KB (103260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
