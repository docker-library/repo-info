## `openjdk:28-ea-nanoserver`

```console
$ docker pull openjdk@sha256:d6e0b6bc6d1d12e9118d6889cdb4df382e2ba6bc7c297e3357f10de25440088c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-nanoserver` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:0fbdde353e59276bcd92d58ef0dec263fdff4b171917dd5acd3746a1c940c470
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.8 MB (436759816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a52755252d9475027748713c3361fc73f7ed591317aeaef7d9c6ff6e5505ad`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 18:20:40 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 18:23:19 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 12 Aug 2026 18:23:19 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:23:21 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 12 Aug 2026 18:23:21 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:23:22 GMT
ENV JAVA_VERSION=28-ea+10
# Wed, 12 Aug 2026 18:24:37 GMT
COPY dir:f5d65859e5db07be3accfca92651eed424ef29ce08cf756d53ee7a8d187d1d07 in C:\openjdk-28 
# Wed, 12 Aug 2026 18:24:43 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 12 Aug 2026 18:24:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768dcd2d7e1385bd9300424b0fd0dc50576a98047600c4a5731c18637c608e48`  
		Last Modified: Wed, 12 Aug 2026 18:21:24 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f520775704963b6ec3cfda501f199384357daaf9da919087794dcbf1942f3bd`  
		Last Modified: Wed, 12 Aug 2026 18:24:49 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedd8965d72fb4c0d76ad231ae0da3212d3a28761cdf4aac0cb147e0cd907be4`  
		Last Modified: Wed, 12 Aug 2026 18:24:49 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9a1f1de758b9b40965db9649e5ca57026e961976611de4b4ebba3ca2888d2a`  
		Last Modified: Wed, 12 Aug 2026 18:24:49 GMT  
		Size: 71.9 KB (71914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfe75b3c5b4aa1a9ae2d39c5c5bd7a98892cfebcf506c2bd19292d8b8ede270`  
		Last Modified: Wed, 12 Aug 2026 18:24:47 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ef87d9362aacc8e37624d6cc3e6dfd7a86211307c776d4989f19eca1cde1ea`  
		Last Modified: Wed, 12 Aug 2026 18:24:47 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022f359761a54f8219e27f66ebb52df86c10199978db5fa91748ccfc8271e421`  
		Last Modified: Wed, 12 Aug 2026 18:25:05 GMT  
		Size: 239.1 MB (239086610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc66ccfa5ea64ddf71c86ec1d49bd7363cdb00b2ec8f4f64a81a7c6a46ef90b4`  
		Last Modified: Wed, 12 Aug 2026 18:24:48 GMT  
		Size: 112.9 KB (112891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48dbd5acb576f6fa60a78c47d395d2c7b6beb461723e424e62712223850ff8a`  
		Last Modified: Wed, 12 Aug 2026 18:24:48 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:17654ab63cc1de20c99e3fd5478794480c11678219b2bb3daa47b1e145017fff
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.6 MB (363568278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb641fe37d08451b925e32fb1573179336b30bbfe9b0e964d272b709eca03f5b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 19:16:07 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 19:18:20 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 12 Aug 2026 19:18:21 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 19:18:23 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 12 Aug 2026 19:18:24 GMT
USER ContainerUser
# Wed, 12 Aug 2026 19:18:25 GMT
ENV JAVA_VERSION=28-ea+10
# Wed, 12 Aug 2026 19:19:16 GMT
COPY dir:f5d65859e5db07be3accfca92651eed424ef29ce08cf756d53ee7a8d187d1d07 in C:\openjdk-28 
# Wed, 12 Aug 2026 19:19:23 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 12 Aug 2026 19:19:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599f4e76ba358aa7244b2fc085df288972c7c2a0da1b918e05c36be3bdc641d0`  
		Last Modified: Wed, 12 Aug 2026 19:16:49 GMT  
		Size: 1.1 KB (1085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655a1afb1523ad38d27643fc66e1f442b069aa4b2d244a38558d77b398eb5564`  
		Last Modified: Wed, 12 Aug 2026 19:19:30 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd355e70dd5623f5c4b0fd7727c870cd5a0977ab0bac4bbecd95a2dd4b5f098`  
		Last Modified: Wed, 12 Aug 2026 19:19:30 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2e13ec92fad82afb91b2f246ab2af2bbc6d02ce4e49dcf46c4211472e96b58`  
		Last Modified: Wed, 12 Aug 2026 19:19:30 GMT  
		Size: 76.7 KB (76732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8f81cb0807024764ebe6c589d6b10bb94cab9c717a565a75567afa6f2ca2e1`  
		Last Modified: Wed, 12 Aug 2026 19:19:28 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7f044c7ae4f6cbd99f6e608235f3a8de0f0860b6a16b6d66e8bcf1306bef83`  
		Last Modified: Wed, 12 Aug 2026 19:19:28 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a12c9e433d8ff9b80cf7ceff1c3d4ce2278a84aa1c70f5b592228aa7becb2b`  
		Last Modified: Wed, 12 Aug 2026 19:19:45 GMT  
		Size: 239.1 MB (239086849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10082817bf5e8c36aed36ed8c0c0842281abba04c1a6ef7c26b720b593969f38`  
		Last Modified: Wed, 12 Aug 2026 19:19:28 GMT  
		Size: 140.4 KB (140366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045e20a70fd93caa5196393c41e003b6ce83eac06553a8ab3e1bdd10a5f53e96`  
		Last Modified: Wed, 12 Aug 2026 19:19:28 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
