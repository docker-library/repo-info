## `eclipse-temurin:11-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:ef0ee4b8c820e77abf00b7273db7542ade18eccfeb1357fccc158d74df559875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:11-nanoserver` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:bc3ecda2f6a8d4f75f2bb85b7983b7fae585d03115c2a98ae0c732f926181605
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395245639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e06a1117c5f7b1570e187bbc29f8300aca013d8c882c78cae5fe63e87e337c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:46:17 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:46:18 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 22:46:19 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 11 Nov 2026 22:46:19 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:46:25 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:46:25 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:46:58 GMT
COPY dir:b2a9c02cf7043eaf69305b168557ff2023c509d078176e53125d7b39898c1c89 in C:\openjdk-11 
# Wed, 11 Nov 2026 22:47:02 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 11 Nov 2026 22:47:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3aadea634bf741db29f8d0bfe15cdb933bb1256d9f87ddad4df0542d5222284`  
		Last Modified: Wed, 11 Nov 2026 22:47:10 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bc1ea6dbcd0f35110284631e1c82bfe734dc8f6136b3634242245f1744c2b0`  
		Last Modified: Wed, 11 Nov 2026 22:47:10 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424822a7c897d641600374b3f5a1451b79b68a118e1a0def0f52d67c327738e0`  
		Last Modified: Wed, 11 Nov 2026 22:47:09 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01343ff8b127dfe31a09ae6f8d7e8781a4965a2bcc8570b24953441e9177bbe6`  
		Last Modified: Wed, 11 Nov 2026 22:47:09 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba053cfa95f2b37b8553f197d8741cdb48bdb7dcd9ff0b02f56bb33d02ee73ff`  
		Last Modified: Wed, 11 Nov 2026 22:47:08 GMT  
		Size: 69.8 KB (69756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf833bffbccdef5c1c48c480b5b5f0a7401b16c55a6701ac15fdcdf3ea124a2`  
		Last Modified: Wed, 11 Nov 2026 22:47:08 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774f4ae1591f7e76b82fb2d0f7f4179d484da970c7114176d099b7c735d86230`  
		Last Modified: Wed, 11 Nov 2026 22:47:18 GMT  
		Size: 194.8 MB (194843666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc6c40ea4144aa14826e34647e7d312f807f6e26b3a1de94bd2411973e18c56`  
		Last Modified: Wed, 11 Nov 2026 22:47:08 GMT  
		Size: 83.6 KB (83627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e65a935965c78628242f7180722609629da0956769a959c13286a0f4b9ee7d`  
		Last Modified: Wed, 11 Nov 2026 22:47:08 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:11-nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:b350a18f6dac58fe473f5cf91a88a9ac82d78cdceefe1c79cebbbddc8f794f9d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.3 MB (321322740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8b74e1f38bc205ca8ea98c3313f8b01df7a327adf4f21d2a05820313dfc40e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:43:39 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:43:39 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 22:43:40 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 11 Nov 2026 22:43:40 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:43:42 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:43:42 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:43:58 GMT
COPY dir:b2a9c02cf7043eaf69305b168557ff2023c509d078176e53125d7b39898c1c89 in C:\openjdk-11 
# Wed, 11 Nov 2026 22:44:02 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 11 Nov 2026 22:44:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168e4ac91186ffdab90f27cd5b5d2f3e2478a6860a1f9c23b5177a7ffe6713b8`  
		Last Modified: Wed, 11 Nov 2026 22:44:08 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cca66f03d9a7575246f02fc8700b2947877c76c4563feff289460c1c31c19d0`  
		Last Modified: Wed, 11 Nov 2026 22:44:08 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e09cdb6875d4572a68c32f3e33e6f57261c21d2eb602efe69d334acbebba0c`  
		Last Modified: Wed, 11 Nov 2026 22:44:08 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3367c0ad3097f9f9fdd4bb726034d7e5729102a6128e58c17d8fd5594e11639`  
		Last Modified: Wed, 11 Nov 2026 22:44:08 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904835a2b3c2617d8a3211d8bf8fb60313276b2fd189908db8b3b7b18e7f1f64`  
		Last Modified: Wed, 11 Nov 2026 22:44:06 GMT  
		Size: 79.2 KB (79194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8d847b0f7c35dc3a1fed3760c86cc00af0cfbe6f029459ddfffbbde97d2df7`  
		Last Modified: Wed, 11 Nov 2026 22:44:06 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf9ddc4df82d26a4b0227e7ff6d459b0c422565c81ccd2be75722faba8bb997`  
		Last Modified: Wed, 11 Nov 2026 22:44:16 GMT  
		Size: 194.8 MB (194843829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42244ee230ee3bc0e6dc5129af69e6d69e5adc2dd1a8d8003f69b1030d9ef752`  
		Last Modified: Wed, 11 Nov 2026 22:44:06 GMT  
		Size: 108.3 KB (108300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850f39922f5d1048ebda5930b050cb3b22542c9bbd1725d6209b3451990dc06a`  
		Last Modified: Wed, 11 Nov 2026 22:44:06 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
