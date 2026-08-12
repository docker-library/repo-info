## `openjdk:27-ea-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:227ec5b333fa2f32f025ce8d2772f9a29ef605dc1d377279c0916946a27bb5d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `openjdk:27-ea-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:eaceddb12361577756e4237f58ac550444fd8bfe4e1b51c1f267bb302991a64f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.8 MB (420818743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d40266c30041d531138257a053d10fbc0cf8bb1c3b6ddc339a1d705c21dfa6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 18:20:24 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 18:23:05 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 12 Aug 2026 18:23:06 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:23:08 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 12 Aug 2026 18:23:08 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:23:08 GMT
ENV JAVA_VERSION=27-ea+34
# Wed, 12 Aug 2026 18:23:43 GMT
COPY dir:eebf7e7be2a62881c3e9485abbaedba33c046addf3a728d1f7dabab93427d223 in C:\openjdk-27 
# Wed, 12 Aug 2026 18:23:48 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 12 Aug 2026 18:23:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdd9d4b248b2935df3655c2c99dd349ca3751903bb334c42b654541f14aede5`  
		Last Modified: Wed, 12 Aug 2026 18:21:30 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da5b24b3cf24d5b996fe5d6b6a1848faf8e159a505dc1ced16b409f94c037dc`  
		Last Modified: Wed, 12 Aug 2026 18:23:54 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d44c1ae01be1e0a68f1e47df9867d3887606864f547efb1d5ce28a8ac14d66`  
		Last Modified: Wed, 12 Aug 2026 18:23:53 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2f7987a47344c1ee588facac6e430e792319255801d7eabd1dc4a5a881368f`  
		Last Modified: Wed, 12 Aug 2026 18:23:54 GMT  
		Size: 72.2 KB (72225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2eb248ac05d2ee7e22ab5a21b30812dae8e1d3f3c16fc5feb81c9502aea6cd5`  
		Last Modified: Wed, 12 Aug 2026 18:23:52 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5a82320e936da5791844ea4c806fa8dbebd93ff790a3e6b2575d377ba45c00`  
		Last Modified: Wed, 12 Aug 2026 18:23:52 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5ccf44f40def7d337933d7b9840e0c10ecaa0355b0b05cad581895945be88`  
		Last Modified: Wed, 12 Aug 2026 18:24:06 GMT  
		Size: 223.1 MB (223144206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deee44244273409b9f32e33f2fbf493f5e92ce69eeab95c94ac701232f270f7e`  
		Last Modified: Wed, 12 Aug 2026 18:23:52 GMT  
		Size: 113.9 KB (113887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e57ab10d449c5fdc5b5efb113e8c82bd6f91329ca81e3b3c7ff06aa01d7a14`  
		Last Modified: Wed, 12 Aug 2026 18:23:52 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
