## `openjdk:28-ea-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:676d160fda9e0fe96d0d54354d9a087419fee2246298f9b8d7fca29ab794ff58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `openjdk:28-ea-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull openjdk@sha256:e9e9c7fee8a89a26e2062dfd58011b5580f03a051f15f776dd5e25033c2c76ce
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.5 MB (365530645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0fa5537039f9eca85541612d2d073fd8bc7277af8df7fc219be5e71dc572c8d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Mon, 26 Oct 2026 17:47:23 GMT
SHELL [cmd /s /c]
# Mon, 26 Oct 2026 17:47:24 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 26 Oct 2026 17:47:24 GMT
USER ContainerAdministrator
# Mon, 26 Oct 2026 17:47:36 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 26 Oct 2026 17:47:37 GMT
USER ContainerUser
# Mon, 26 Oct 2026 17:47:37 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:49:18 GMT
COPY dir:24d8bbfd6877380a565c0b7368b2b02fad8c7eb0eceb426a35d8fc2a14429cc2 in C:\openjdk-28 
# Mon, 26 Oct 2026 17:49:26 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 26 Oct 2026 17:49:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d3bc28e6509cdf677658f099ee6db370ab03051d1d5b85317a5ff102b87181`  
		Last Modified: Mon, 26 Oct 2026 17:49:34 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d706856a57f1958c6ff8f48dca9f71a2b7957ea2bde32ad3d412bc893f2705`  
		Last Modified: Mon, 26 Oct 2026 17:49:34 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39cf9faadf6643fcfc5b72280c7fb148673ad3dda9ac997e943467e00106a1d`  
		Last Modified: Mon, 26 Oct 2026 17:49:34 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d350b04e03222ec830b1fab6ab8181d26a5d8be3f4c612cc58fc92179fb86309`  
		Last Modified: Mon, 26 Oct 2026 17:49:34 GMT  
		Size: 72.9 KB (72927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13312290601321aa2513cabeac7dc498fff9728a3f8b87a45d69404308e8aa82`  
		Last Modified: Mon, 26 Oct 2026 17:49:32 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2dfd891aa2eb2ac8a5913f6475611ed604fcc59cafcd0af132a65ce45561ef2`  
		Last Modified: Mon, 26 Oct 2026 17:49:32 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95250f5edc5effcfe3a7589550f5b323d1c4c69e98a054a1fc4a1a452f4450c5`  
		Last Modified: Mon, 26 Oct 2026 17:49:49 GMT  
		Size: 239.6 MB (239559442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e20766c3acdcb3467d033824c224921c84a9438c04c1dd37a45cc011ed0bea2`  
		Last Modified: Mon, 26 Oct 2026 17:49:32 GMT  
		Size: 95.9 KB (95861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f571afc8324c9e1c3c5c16e50ada71edcc10a7fab97f565555c127ad555f4f`  
		Last Modified: Mon, 26 Oct 2026 17:49:32 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
