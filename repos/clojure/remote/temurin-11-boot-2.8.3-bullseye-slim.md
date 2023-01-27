## `clojure:temurin-11-boot-2.8.3-bullseye-slim`

```console
$ docker pull clojure@sha256:4de0d6b2b10d37dea3a234b761bbed01ef917795a858d2a91aa93783831142ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-11-boot-2.8.3-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:26848645623c20b92382c362b8cf8aaa442462336158a8030fddcfa721980a9a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.8 MB (289770361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db1a538d9f17847404009af608f2124cb0ce8bd0b23a671cf45882a39ec3c69`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:20:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 00:39:28 GMT
COPY dir:7c6c6be58d44c17cd09173c77ba1f0d96ed42a5b7ef2235235262bdd0141924b in /opt/java/openjdk 
# Wed, 25 Jan 2023 00:39:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 00:39:30 GMT
ENV BOOT_VERSION=2.8.3
# Wed, 25 Jan 2023 00:39:30 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 25 Jan 2023 00:39:30 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 00:39:35 GMT
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Wed, 25 Jan 2023 00:39:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 25 Jan 2023 00:39:36 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 25 Jan 2023 00:39:53 GMT
RUN boot
# Wed, 25 Jan 2023 00:39:53 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a47d09ee4791f80acce6e1c0ec8e323c79df787142099f3b440887c41fbeeaf`  
		Last Modified: Wed, 25 Jan 2023 00:54:33 GMT  
		Size: 198.5 MB (198475706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0912d1d7c0ff2fea0c77f796175bc3b72c42d2365f964b9d77593f82095bc54`  
		Last Modified: Wed, 25 Jan 2023 00:54:18 GMT  
		Size: 1.1 MB (1077331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985c5da5b0630796dff5d213bd6a642875111b1105c91a6ce7f33e95afbaab22`  
		Last Modified: Wed, 25 Jan 2023 00:54:21 GMT  
		Size: 58.8 MB (58820352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-11-boot-2.8.3-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f45276edf13ffe3d65402ff6175ebb86fc51471fe6cfef69f5bab2625adfee21
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285170144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45c716fc9852539ffb7058179ec11a933a4fba547b679fccfb211affbb9ba21`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:38:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Jan 2023 20:59:22 GMT
COPY dir:b5081ac7f31ec5da21215ff6126fdb71f9fa63a8c9b5dc5e3f45f611c1765726 in /opt/java/openjdk 
# Tue, 24 Jan 2023 20:59:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 20:59:26 GMT
ENV BOOT_VERSION=2.8.3
# Tue, 24 Jan 2023 20:59:26 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 24 Jan 2023 20:59:26 GMT
WORKDIR /tmp
# Tue, 24 Jan 2023 20:59:31 GMT
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Tue, 24 Jan 2023 20:59:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Jan 2023 20:59:31 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 24 Jan 2023 20:59:48 GMT
RUN boot
# Tue, 24 Jan 2023 20:59:49 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8fec50bc484d6341eb4f90d4749394a389a13ec00c2b3ab78c9140d9d4cda0`  
		Last Modified: Tue, 24 Jan 2023 21:11:01 GMT  
		Size: 195.2 MB (195239953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257f3874deacd852098d12ec60f0387aa6d44fe361429d767ebf2a9878f99aa4`  
		Last Modified: Tue, 24 Jan 2023 21:10:50 GMT  
		Size: 1.1 MB (1064700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82945f3b56ad30b1739c413cd07233b81a9b21ac6a32ba8944399ab5f47bb38b`  
		Last Modified: Tue, 24 Jan 2023 21:10:53 GMT  
		Size: 58.8 MB (58820677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
