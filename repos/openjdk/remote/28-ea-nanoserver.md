## `openjdk:28-ea-nanoserver`

```console
$ docker pull openjdk@sha256:19d9a6b6d0f7094f79367d207b02dacc4596f6ecf8de2a457f52f258b23456fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `openjdk:28-ea-nanoserver` - windows version 10.0.26100.33650; amd64

```console
$ docker pull openjdk@sha256:ab170dfd0c3dc986fda098b4192c645e0288f160991ac114e89624fbf460d501
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.6 MB (439600688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb41fdd48147034043a1fec13f9d67f8698f5e4565af749a2079b9212d1537c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Mon, 26 Oct 2026 17:47:21 GMT
SHELL [cmd /s /c]
# Mon, 26 Oct 2026 17:47:21 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 26 Oct 2026 17:47:21 GMT
USER ContainerAdministrator
# Mon, 26 Oct 2026 17:47:35 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 26 Oct 2026 17:47:35 GMT
USER ContainerUser
# Mon, 26 Oct 2026 17:47:36 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:48:17 GMT
COPY dir:24d8bbfd6877380a565c0b7368b2b02fad8c7eb0eceb426a35d8fc2a14429cc2 in C:\openjdk-28 
# Mon, 26 Oct 2026 17:48:24 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 26 Oct 2026 17:48:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08eaf9b091bd3e68451c8fd39e2e6d579a0da6be5005184dd748720fa0fe218`  
		Last Modified: Mon, 26 Oct 2026 17:48:30 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366f21b817e4f18865e3e2d8eb9b0d3155ce03f956a6d217856c691e4599ab84`  
		Last Modified: Mon, 26 Oct 2026 17:48:30 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a75e1c3d5cd0aa8f7c7f4968da88dd3f470ca354f142fe5fb9706d58c118ff1`  
		Last Modified: Mon, 26 Oct 2026 17:48:30 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca18ce7df316c3590ac2e3533daf9497894185885f576bf521ccffdf0fe3765`  
		Last Modified: Mon, 26 Oct 2026 17:48:30 GMT  
		Size: 71.7 KB (71656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649a523b50ea647f77ac60640af916194588fb58040e646ccbb4176556739a5e`  
		Last Modified: Mon, 26 Oct 2026 17:48:28 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6cbe5f32037f2fa9fde8d3d03a15389b014e383bc98b8377ce52bb9a8e2434`  
		Last Modified: Mon, 26 Oct 2026 17:48:28 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266912d4afa21119776acb60eeb39cd1848970c0c9c718755f01a7cc99c47932`  
		Last Modified: Mon, 26 Oct 2026 17:48:43 GMT  
		Size: 239.6 MB (239559725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d013ccea2b6b259b2c424eb702ca051efdeec9b87bb95a76c38dd3432290f95`  
		Last Modified: Mon, 26 Oct 2026 17:48:28 GMT  
		Size: 91.9 KB (91909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38e427b6538beaa2a27cad1112cf1afa81b92e61b0843aa4f3a4b626b285f7`  
		Last Modified: Mon, 26 Oct 2026 17:48:28 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-nanoserver` - windows version 10.0.20348.5761; amd64

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
