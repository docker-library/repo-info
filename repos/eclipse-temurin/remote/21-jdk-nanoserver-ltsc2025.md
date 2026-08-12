## `eclipse-temurin:21-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:ed6eb4b2b6d296362aafe02f748c8b2ada696fafef28042f7fe725de78f53eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:21-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:e9442b54a078506132821ab8d6ededa8af6973a453d54b61ce2d3f0f4c088c40
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.5 MB (399536699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a3d98b2c8906fd5b693c74c2e23d0b8c97f6d73e102afddf54daf8e2903fab9`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 18:20:45 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 18:20:46 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 12 Aug 2026 18:20:47 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 12 Aug 2026 18:20:47 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:20:55 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 18:20:55 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:21:42 GMT
COPY dir:be4fce80d476aa164b4bdafca77eddb646da4c27d929101014e2067a583f974e in C:\openjdk-21 
# Wed, 12 Aug 2026 18:21:49 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 12 Aug 2026 18:21:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c9f34e6c076b3f7a5883938f1d7b0e01d17d320fe05b1cc91e310012b6e5a3`  
		Last Modified: Wed, 12 Aug 2026 18:21:58 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33b0827726da07722dbc7671a6d49adeb522abcff917f89d5c0b9aeb30a271a`  
		Last Modified: Wed, 12 Aug 2026 18:21:57 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e3d34dbfaa98627f9bb0a3a9d6771e018080219ae81ac75e2fee0b70cf19af`  
		Last Modified: Wed, 12 Aug 2026 18:21:57 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2141a012aa6a1f4d716b8e0906278a979322a3e9ef3cbf25a8af7241700f584e`  
		Last Modified: Wed, 12 Aug 2026 18:21:57 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4560c5a7b2e7cc013151d063858827b70187e8ea523499c5f5bcc34e4c5f244`  
		Last Modified: Wed, 12 Aug 2026 18:21:56 GMT  
		Size: 70.6 KB (70597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb44fde729b77ea336e8f6cbcb2c07dd0805b9c596691425bfa5618467b5d2fd`  
		Last Modified: Wed, 12 Aug 2026 18:21:56 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1960f418bf7d588c8e376b72d0fa4fb97e252e2ccfb12b0b0b3e334403d0b35`  
		Last Modified: Wed, 12 Aug 2026 18:22:07 GMT  
		Size: 201.9 MB (201874993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042cee8f08935c86b5456b026f82b0adf388793ca09766cb8fa7455ad60fcc09`  
		Last Modified: Wed, 12 Aug 2026 18:21:56 GMT  
		Size: 102.8 KB (102753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7978ffc24bc9f4b5b1952f175e534cba32f1eab46ad0394668ab2bffc317659c`  
		Last Modified: Wed, 12 Aug 2026 18:21:56 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
