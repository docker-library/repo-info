## `eclipse-temurin:26-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:92b9931e0bfc16e5935c31afe0ab10eca48ae68acc9301aa8d8401516f4fbf53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:26-nanoserver` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:8b7ad50b0c9409561167b93de73c28be67bd51f842fcc55fdefbf29349379826
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.4 MB (341383187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fe86a6e32a2dca4a46131f96e55540d5f193b32a2e9461b970febdee3888c9`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Wed, 14 Oct 2026 00:17:57 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:19:43 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 14 Oct 2026 00:19:43 GMT
ENV JAVA_HOME=C:\openjdk-26
# Wed, 14 Oct 2026 00:19:43 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:19:45 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:19:45 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:19:53 GMT
COPY dir:ccd67fcf3d45d4940fbcca3f3b377600053cf61ab5c19e3266e53dfa5c18d33b in C:\openjdk-26 
# Wed, 14 Oct 2026 00:19:57 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 14 Oct 2026 00:19:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a61f1004ed0441227f77c195822ae2c4189dbdc7037ad2ef3ca5b719d03c6c2`  
		Last Modified: Wed, 14 Oct 2026 00:18:24 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb5f419cb0e89c00c1ee9f1e6934f62f2b1bc53944b6eb8df74e9e68fce74e0`  
		Last Modified: Wed, 14 Oct 2026 00:20:04 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162ba30854226f2e9a0a4257f868c287c0c5d4108a113460f1fb50fc455044e8`  
		Last Modified: Wed, 14 Oct 2026 00:20:04 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db064e5ca3117048ab37085e2f7e9e1b2ce83186634b1487c98010d24f45d56`  
		Last Modified: Wed, 14 Oct 2026 00:20:04 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7127fd7ee299ec625e31e52b8d2ea4d8ed385cf401115d08c0563022752660`  
		Last Modified: Wed, 14 Oct 2026 00:20:02 GMT  
		Size: 71.8 KB (71770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab50ba4ac551c5b5688760e611e7448b5e24a40d64762e1626bfa1f30d44208c`  
		Last Modified: Wed, 14 Oct 2026 00:20:02 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1da5ecfe88433efbe3e6fa826cf2ff4f962e23dd172c3a023a4cec97c2e450`  
		Last Modified: Wed, 14 Oct 2026 00:20:13 GMT  
		Size: 141.3 MB (141319340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6eabf49bba22dcd2006cca9cd509aa20feefec8ce2fef7e123c8ddac9e99210`  
		Last Modified: Wed, 14 Oct 2026 00:20:02 GMT  
		Size: 114.8 KB (114787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9d7518e32132a660171d44740450494b553ae8502892ae46778198a475e8cb`  
		Last Modified: Wed, 14 Oct 2026 00:20:02 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:26-nanoserver` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:d64fe04af25c73ecf76285c37c3033b31d282cff43f3eab3d96f2303c05f0db5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267306978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91284a241c503b42ea5f4ee0cf06a727cfd029348e143d9513044d42dc88c56`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:18:43 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:20:22 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 14 Oct 2026 00:20:22 GMT
ENV JAVA_HOME=C:\openjdk-26
# Wed, 14 Oct 2026 00:20:23 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:20:24 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:20:24 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:20:41 GMT
COPY dir:ccd67fcf3d45d4940fbcca3f3b377600053cf61ab5c19e3266e53dfa5c18d33b in C:\openjdk-26 
# Wed, 14 Oct 2026 00:20:45 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 14 Oct 2026 00:20:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0f5c5f98a3747c8ab49ec9bf77d485d4cb9cc0b5022f437ebd7cb6eb5d2537`  
		Last Modified: Wed, 14 Oct 2026 00:19:03 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a94cca0aa1f481e019926c11b365c3c74c08c19254462b9fadc7db41260f24a`  
		Last Modified: Wed, 14 Oct 2026 00:20:52 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b36859fecb77aa8ad60fa9ce571b551421c41d3ee9dadb1d8f8d0a540c89990`  
		Last Modified: Wed, 14 Oct 2026 00:20:51 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec36e2968114901d41b7c5a7e895e6e826c30963b873cc93b3c3f21e0033981`  
		Last Modified: Wed, 14 Oct 2026 00:20:51 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f8eb2cae759caaab23ecdee03b65f2c5963ec08c87fe1ec5d4c99caaa1083f`  
		Last Modified: Wed, 14 Oct 2026 00:20:49 GMT  
		Size: 77.5 KB (77548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72f5d2f680eb038bd70e0743f80b43cffe3d177cbae52be8b7f4cebf3d1db99`  
		Last Modified: Wed, 14 Oct 2026 00:20:50 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8549ee844f93f50d8569a05cf01a281393da3aebd8271dd01faf67af2b5c21ae`  
		Last Modified: Wed, 14 Oct 2026 00:21:00 GMT  
		Size: 141.3 MB (141319521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e848980a5b9be4f824e8e1de3c6958f53ba6b0c97a96c8a99539e8e53eb2bf7`  
		Last Modified: Wed, 14 Oct 2026 00:20:50 GMT  
		Size: 107.6 KB (107573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88656f01fc4f3a51916968ecac18a473c5602b97a25c4a1d18ba5b3a45abb795`  
		Last Modified: Wed, 14 Oct 2026 00:20:50 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
