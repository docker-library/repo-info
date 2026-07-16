## `eclipse-temurin:26-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:82ac526b6655377045cfb215657796e91857a346ab6c56a097bf8b78e34a1a9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:26-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:7f23627558f2f365e7fdfc4c9d1d71a4589a5444ba238ff0a2c827b9465e4aab
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265568479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cdf3f15fc8beb932bc30fe823032ae7ae2419484c462c5335966396471a4f34`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:52:11 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:53:45 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Wed, 15 Jul 2026 23:53:45 GMT
ENV JAVA_HOME=C:\openjdk-26
# Wed, 15 Jul 2026 23:53:46 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:53:47 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 15 Jul 2026 23:53:47 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:54:01 GMT
COPY dir:254440c2db85c674475ced33fb249e9ba634466f55592d23f645db2e3bf929d7 in C:\openjdk-26 
# Wed, 15 Jul 2026 23:54:06 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 15 Jul 2026 23:54:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce45b840362ee3d191b57646cd64cfcd28a645fae617e701e1264ccc6e0968fd`  
		Last Modified: Wed, 15 Jul 2026 23:52:39 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49b3a41498344d2f4979d007fec68e6986dbe26e917dc2e38bd81a37081135d`  
		Last Modified: Wed, 15 Jul 2026 23:54:12 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516d2714d2b6ae25ca8f1736adbf7a877f3d7c7f852b7d3d6782c345d7604239`  
		Last Modified: Wed, 15 Jul 2026 23:54:12 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5fa2b3d5fb430b647344c976911eca86c4df51ad2a151fa89a64cff0f996ffe`  
		Last Modified: Wed, 15 Jul 2026 23:54:12 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abb0411573418da101f8d7cab0f0e6558f02aee8e9971ad057820cb1f676343`  
		Last Modified: Wed, 15 Jul 2026 23:54:10 GMT  
		Size: 77.3 KB (77271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9218af0b3a5b16013172050a919b14785895397c11976ef00443ae29a383bcac`  
		Last Modified: Wed, 15 Jul 2026 23:54:10 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86ba296d2d1f285908cf706b4b8ca18fbca9877b8eb1a282f463d6c388fbe2f`  
		Last Modified: Wed, 15 Jul 2026 23:54:21 GMT  
		Size: 141.3 MB (141273302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf99481d48e587f9a7d19be704a510d7c38b8cdd6fe9302b752db118cc481e7`  
		Last Modified: Wed, 15 Jul 2026 23:54:10 GMT  
		Size: 108.5 KB (108466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647784c39f030eee4f4248f58115294c8d9ac7105479bcde392ce52ab25e52b3`  
		Last Modified: Wed, 15 Jul 2026 23:54:10 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
