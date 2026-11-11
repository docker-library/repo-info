## `eclipse-temurin:11-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:31778d8c33eafbf2b9907ded29c2172d16543abb0cbc51100d28576dee2469ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:11-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

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
