## `openjdk:28-ea-10-jdk-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:5e6001644d463de49cdffc106ef0166753ec62c07f8147632a70fb8660eebf6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-10-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

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
