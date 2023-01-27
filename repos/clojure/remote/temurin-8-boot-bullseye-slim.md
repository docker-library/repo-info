## `clojure:temurin-8-boot-bullseye-slim`

```console
$ docker pull clojure@sha256:646ff08fe3ecacc3468bb363b5247ca864be5a20c2175eba1d9d6d3c0226227d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-8-boot-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2189e8b8bd44ea4123cf985c9dc6050917ea495d725a35801bc2fa059b78055a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145930329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10084d8d5ba0125872821c3623669819d7039b5be2a4008f2ce4cda3f8466bac`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:20:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 19:48:59 GMT
COPY dir:bbb84183d7ea38d81d8401f01e29d08935ee4c8bf6f90c6527579a1554c3bde1 in /opt/java/openjdk 
# Wed, 25 Jan 2023 19:49:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 19:49:00 GMT
ENV BOOT_VERSION=2.8.3
# Wed, 25 Jan 2023 19:49:00 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 25 Jan 2023 19:49:00 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 19:49:06 GMT
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Wed, 25 Jan 2023 19:49:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 25 Jan 2023 19:49:06 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 25 Jan 2023 19:49:23 GMT
RUN boot
# Wed, 25 Jan 2023 19:49:24 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe23a8240df8d0be33f210436daef1ef2fffc40bdb4ceb3e88d4adafd92406f`  
		Last Modified: Wed, 25 Jan 2023 20:03:54 GMT  
		Size: 54.6 MB (54635552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa358c204be5ff5cbc23061f88421a919677d359c95d61d91b40eee3107d1963`  
		Last Modified: Wed, 25 Jan 2023 20:03:48 GMT  
		Size: 1.1 MB (1077364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e858f90a46ad7afbfeff64fe2894d03c4b657df7360d1260f3d37418c0f22d`  
		Last Modified: Wed, 25 Jan 2023 20:03:51 GMT  
		Size: 58.8 MB (58820441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-8-boot-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dd08e34c66a339365f7a1160f1f4615beeb875b10c009d7582541ba62d89b298
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143657653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7b35511bf57e46d6bd3e9952f043a871af8396d81a3949504af1c6daabeaf3`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:38:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 20:00:58 GMT
COPY dir:b6d7e5613532d986930216de9e0fece0632e82564ce7a6a98baf63b4115f840d in /opt/java/openjdk 
# Wed, 25 Jan 2023 20:01:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 20:01:00 GMT
ENV BOOT_VERSION=2.8.3
# Wed, 25 Jan 2023 20:01:00 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 25 Jan 2023 20:01:00 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 20:01:04 GMT
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Wed, 25 Jan 2023 20:01:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 25 Jan 2023 20:01:05 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 25 Jan 2023 20:01:21 GMT
RUN boot
# Wed, 25 Jan 2023 20:01:21 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007684b573bff2526d1b392ce3c4076e52d5a400dc5f5c38e5a8aa784c21bb07`  
		Last Modified: Wed, 25 Jan 2023 20:13:02 GMT  
		Size: 53.7 MB (53727884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0579228e55d19b24011588b6f0d85db2c9171d79dfe6f4cb4a4260f05cadfb`  
		Last Modified: Wed, 25 Jan 2023 20:12:57 GMT  
		Size: 1.1 MB (1064708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3d0ec6d8813e6873710e6fd8cb65e8b9ff9ef102d341e61baf222c9b879819`  
		Last Modified: Wed, 25 Jan 2023 20:13:00 GMT  
		Size: 58.8 MB (58820247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
