## `eclipse-temurin:21-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:de655a45837bd6b1b13198a8e04561239bdc220bc75bf84cfa0bc0656d644838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:21-nanoserver` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:2ee96caacbe8cfb839cb2faca4a319e733f9c8514d21d70cca0c0f9c61afbae7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.6 MB (402648783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf296495b42a52592658b224e601ee2282d5747e34ad7c755af9ea6e8529bb3f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:47:04 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:47:05 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 22:47:05 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 11 Nov 2026 22:47:06 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:47:13 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:47:13 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:47:51 GMT
COPY dir:3c69d8edc03ef6b3f984ec479ade8010e93305a20601dbd14a3ed88be7a27183 in C:\openjdk-21 
# Wed, 11 Nov 2026 22:47:57 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 11 Nov 2026 22:47:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4328dd2e69ca531967c3da01c9c8c0a7b81befbe96aebc54bf3e065bb6d207`  
		Last Modified: Wed, 11 Nov 2026 22:48:06 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6f6ebd2a5e065cb4546820902186d4ef5bb6915b54f2db64917a7466ef77e6`  
		Last Modified: Wed, 11 Nov 2026 22:48:05 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a1db62c2522dfb78edccd06da062a0638ebdeb3a59f62928a2c4e6c3babaf1`  
		Last Modified: Wed, 11 Nov 2026 22:48:05 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2481eb0c157fb0c61da091b6b2c53f530d3dabc8f46c9472c63befd016ad9f9`  
		Last Modified: Wed, 11 Nov 2026 22:48:05 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4c7a13595f44bfa39abdaf49fe0cd50e99bd076c23d252291ba89d146f0163`  
		Last Modified: Wed, 11 Nov 2026 22:48:04 GMT  
		Size: 69.6 KB (69630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2223fac874ee9cb75e37d7e4f63af784f7c88d0015bb9ad3b12af21b40f247de`  
		Last Modified: Wed, 11 Nov 2026 22:48:04 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8c05c0574452f6ef8d26506c401571c5f2f723f715bf3439a57ba836d70e5a`  
		Last Modified: Wed, 11 Nov 2026 22:48:15 GMT  
		Size: 202.2 MB (202218410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdca90ce771b13cf3cbcaaaa5b795d9e4c0d1a3e7bf1b4b315ac6fd163b0d2b7`  
		Last Modified: Wed, 11 Nov 2026 22:48:04 GMT  
		Size: 112.2 KB (112193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1c7f4f40c007fa46fd43b0c5cd0c0f6131dcec13e3ec627821c011d8844a9e`  
		Last Modified: Wed, 11 Nov 2026 22:48:04 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:21-nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:ae3207c7f5ca904b41bed2bd098817718ba8a160a12687389aab86ba3f0bc859
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328694296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6c2aa24fd8594b0b6887cc73745237bc0c9785625f740998116296b19d98f2`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:43:34 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:44:29 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 22:44:30 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 11 Nov 2026 22:44:30 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:44:31 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:44:32 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:44:39 GMT
COPY dir:3c69d8edc03ef6b3f984ec479ade8010e93305a20601dbd14a3ed88be7a27183 in C:\openjdk-21 
# Wed, 11 Nov 2026 22:44:44 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 11 Nov 2026 22:44:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a628f93392bd1fa9aa32df95eddef1c784bade770901514dafc547aa2e9ffd94`  
		Last Modified: Wed, 11 Nov 2026 22:43:54 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c97135761d7f298921ff18152a9c616bb7751cdccbb3a25e30c734e20fca871`  
		Last Modified: Wed, 11 Nov 2026 22:44:51 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e996a467eae662e4a6629d26f43c3cd137a65b1cc958c9ddb2d2d926bc2a282e`  
		Last Modified: Wed, 11 Nov 2026 22:44:51 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c230eefbb654d6bb26dad399c9ec8022cbc33b266b5eb7c7e248cee9dd79ca`  
		Last Modified: Wed, 11 Nov 2026 22:44:50 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927d97d72a7e91a5a77c8a5909c18bd1ae745e004e588012b97a10d842d25e43`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 77.8 KB (77794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a444213e5000f2310eb00752a0354bffa703ed8925bec436ab69539c4540934`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147f7ffe54a20ccdf724cb2602ab6bab42e12eedf80163ce30779742e94c4c44`  
		Last Modified: Wed, 11 Nov 2026 22:45:00 GMT  
		Size: 202.2 MB (202218055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a379a1abb3a1ce2473f8f99f92c9f62aaf886f147b0eb2780f56edcf845dff`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 107.1 KB (107115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae42951dd1e0fa62f1ae21ac64edd8345eaf54003da8ee083658fbaf9582116`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
