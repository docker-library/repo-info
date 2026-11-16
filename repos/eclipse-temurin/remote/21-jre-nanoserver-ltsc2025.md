## `eclipse-temurin:21-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:312fe11ac75a81317d5d4caf13cf8c68387299c55620a36cfd51e3c692e103d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:21-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:347c161362b680052759239ff39cc5d108a94c762bf9a171fa711aab42597988
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.6 MB (249613238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19571a892e3a049070b6486d113d421f1b4dac3104690cb4c7aa21fe43756b4f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:44:53 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:44:53 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Mon, 16 Nov 2026 20:44:54 GMT
ENV JAVA_HOME=C:\openjdk-21
# Mon, 16 Nov 2026 20:44:54 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:44:57 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:44:58 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:45:15 GMT
COPY dir:0a790f654228b0909cb063fcccd1cf031298e492a3665cc86d7fcfc2d95ab288 in C:\openjdk-21 
# Mon, 16 Nov 2026 20:45:18 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c062e1a675cc3be08c644988e7e2f750c9bcee8b1ffb64416f9b678bcf4ae9`  
		Last Modified: Mon, 16 Nov 2026 20:45:24 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f2bada03d2c4e2d0cfb3b4c03a7137793956414f7e4f142e1e2285095d8d16`  
		Last Modified: Mon, 16 Nov 2026 20:45:24 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f628866c86244baeb79dcc8e441a64c301644ea10f8f5cecbc8f68cd899cfd`  
		Last Modified: Mon, 16 Nov 2026 20:45:24 GMT  
		Size: 1.0 KB (1028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff05958382bc855b35304ac0ef1031a4973872aa79b23d4ff113c332b1024155`  
		Last Modified: Mon, 16 Nov 2026 20:45:22 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9826c5db87bb61d399fbe433e42dd04130da3488d720c3b74f29c7208d425f`  
		Last Modified: Mon, 16 Nov 2026 20:45:22 GMT  
		Size: 74.6 KB (74648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddf5c3361da39307ce8dd6f65eca3a82d659edc8bc3d74b9a12e6b1e29d0065`  
		Last Modified: Mon, 16 Nov 2026 20:45:22 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f618fafce71a0542b7560b1f987ec501f86851eee76ba86bbb0ef2a51344bf`  
		Last Modified: Mon, 16 Nov 2026 20:45:28 GMT  
		Size: 49.2 MB (49179787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86aeb1e6b2d4e2845a3f6ee57f3173bce092ff43392fbef0a341451001a1876`  
		Last Modified: Mon, 16 Nov 2026 20:45:22 GMT  
		Size: 113.8 KB (113839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
