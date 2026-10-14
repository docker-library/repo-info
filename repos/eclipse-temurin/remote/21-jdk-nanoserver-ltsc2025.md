## `eclipse-temurin:21-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:d333c52ec160c9827a75f09c329e7af28222419e00046f7b2c0aa3d913565188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `eclipse-temurin:21-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:879d4424410944c78ea70e668b44391071176cfd2f5ebfa736761f3687893b1b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.9 MB (401928343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf9755da822399cc38800126f4f77cc3c576e130887a035f57b6a9ae58d65523`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Wed, 14 Oct 2026 00:18:33 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:18:35 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Wed, 14 Oct 2026 00:18:35 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 14 Oct 2026 00:18:35 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:18:42 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:18:42 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:19:01 GMT
COPY dir:a6e369a550f6c35be174f5086a2da4e5b27cbca4abe58d0c11b678536d0a440d in C:\openjdk-21 
# Wed, 14 Oct 2026 00:19:07 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 14 Oct 2026 00:19:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd92e54a55bba2776c141b73d6e9bfc04bf994ae20122409109d9eb88b09f6d`  
		Last Modified: Wed, 14 Oct 2026 00:19:14 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddc3b93a8d902677f1084cc9487a9d083fd890b56b50c58dca6d866ca4af2bc`  
		Last Modified: Wed, 14 Oct 2026 00:19:14 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6442d31373b071d2570f22ce10b9cf6a85ea59a132a56945bba2f062966d3b6d`  
		Last Modified: Wed, 14 Oct 2026 00:19:14 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd794e3cbd789cfa1e3993ff782d3780a8e27ab3a85848fa173385101258abaf`  
		Last Modified: Wed, 14 Oct 2026 00:19:14 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07608c36fd47504e9a7807c6c851f3885e2a5a2e8c0c3fd4af672d613b25be69`  
		Last Modified: Wed, 14 Oct 2026 00:19:12 GMT  
		Size: 71.8 KB (71776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf25cd8b4e67b7d8f66d4062cdf0b73cf987cf8b66098f6a3cb69690be31c79b`  
		Last Modified: Wed, 14 Oct 2026 00:19:12 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f406e5d85434caca2de2a6fb58ab1ea1079ea953fac27cea0d0bc92d622ed3`  
		Last Modified: Wed, 14 Oct 2026 00:19:24 GMT  
		Size: 201.9 MB (201876379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a664f602cabe64d0dd6ca9f5b7d27051e2e5069f394860e0c964d6704a68dfd`  
		Last Modified: Wed, 14 Oct 2026 00:19:12 GMT  
		Size: 102.8 KB (102750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b292e682403cf427173e4036ccc705a9360f95a19a80b0e6740d128d20b01a6`  
		Last Modified: Wed, 14 Oct 2026 00:19:12 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
