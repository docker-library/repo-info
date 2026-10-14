## `eclipse-temurin:17-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:7bdc8f7322d5e80f87d396c7be3473792a20442e2ca52e5b1e07988e4494d64d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:17-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:994b7ddd977848294eda0fbde8b09ceff8edfb809fa59ef1257508f0f2f2a08a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313644256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6aa9686d00b779d6154a37c5e64fcf355cd01151cc7ee56d272edbc25d8e4c1`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:18:24 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:19:34 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Wed, 14 Oct 2026 00:19:34 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 14 Oct 2026 00:19:34 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:19:37 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:19:37 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:20:01 GMT
COPY dir:3a5535544d6fb312c0f44eb2f3dd3631cac8c859fdbee30782f06557677f7659 in C:\openjdk-17 
# Wed, 14 Oct 2026 00:20:05 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 14 Oct 2026 00:20:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fd6a1b6f3ff80e2df31e6dcd4c68da49d79c93834f2d34f03f2009647a2a52`  
		Last Modified: Wed, 14 Oct 2026 00:18:56 GMT  
		Size: 1.0 KB (1029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea13c12c9ec115afe880c2ac5d07c3d8aacb2362e42ae5b752ac2af015057d7f`  
		Last Modified: Wed, 14 Oct 2026 00:20:12 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e899072f8120d72d0839e17d2c789c18f448ace82a49715ed3ec7c47a5255a`  
		Last Modified: Wed, 14 Oct 2026 00:20:12 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac35930cdff30e90a121d73055bcfed7c5dad2914024952edcc14caa07a653f`  
		Last Modified: Wed, 14 Oct 2026 00:20:12 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21027a8d484acde24132e36503e1febe24720552c3295bb2374befdf0a8cf7e5`  
		Last Modified: Wed, 14 Oct 2026 00:20:10 GMT  
		Size: 76.6 KB (76630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269cf6245df0eeb86206fc007a74b9df1f26ee3addd1fdc2a9590d5e95c0a785`  
		Last Modified: Wed, 14 Oct 2026 00:20:10 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04da58c855a72be927af6f5947d2ab07c0085d50ce35dd2d259bda0e546b599`  
		Last Modified: Wed, 14 Oct 2026 00:20:21 GMT  
		Size: 187.6 MB (187642561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2a6af0bc7f7649360c555faa85f7aa01af243edaaac7adb0f7df93c51732ab`  
		Last Modified: Wed, 14 Oct 2026 00:20:10 GMT  
		Size: 122.8 KB (122777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9decd69489c37cbb632d03aee57824507e05f772e4ad2ae3da36d4d2ab447371`  
		Last Modified: Wed, 14 Oct 2026 00:20:10 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
