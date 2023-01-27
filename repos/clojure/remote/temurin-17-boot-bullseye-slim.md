## `clojure:temurin-17-boot-bullseye-slim`

```console
$ docker pull clojure@sha256:4424015ff3cf66e59f20ebf44e14092e369c09614433e9bf7f3fabe38e2b6bb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-17-boot-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:37faeb41acf6a4b656db0fe66ec423f9f5b8aef7fa782b3ec4ca7bd8ca52c0d5
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.7 MB (283733162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c65167854308225747c3bbbb340d56fc90f91afbc42a1f2910e6e3180fff894`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:20:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 00:45:55 GMT
COPY dir:bb223240e99e5b7e66eb621e33f54e49ced87035f56dd975e567c739be4bfe96 in /opt/java/openjdk 
# Wed, 25 Jan 2023 00:45:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 00:45:57 GMT
ENV BOOT_VERSION=2.8.3
# Wed, 25 Jan 2023 00:45:57 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 25 Jan 2023 00:45:58 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 00:46:03 GMT
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Wed, 25 Jan 2023 00:46:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 25 Jan 2023 00:46:03 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 25 Jan 2023 00:46:20 GMT
RUN boot
# Wed, 25 Jan 2023 00:46:21 GMT
COPY file:0282db266eb050a3ad3609149efe2188243cb9f95c0b3e48a312ddef6c6bea02 in /usr/local/bin/entrypoint 
# Wed, 25 Jan 2023 00:46:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 25 Jan 2023 00:46:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12eef77f7984a993273a61d251f96ca5d233a9d09aa5eaf00dacef6ccb54ad5`  
		Last Modified: Wed, 25 Jan 2023 00:58:21 GMT  
		Size: 192.4 MB (192438146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0af2d7d2bedba297f651a798fc0d6723d52602c59881e09acb3d2851203878`  
		Last Modified: Wed, 25 Jan 2023 00:58:07 GMT  
		Size: 1.1 MB (1077348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a077fb10ef621ad90a427e08d2ae08221f306fde4e5271bc2361986ed5843e1`  
		Last Modified: Wed, 25 Jan 2023 00:58:10 GMT  
		Size: 58.8 MB (58820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984a62510277ef03b7cb78cfe63307f2d854c9fbde9fe7d020f549564b7531da`  
		Last Modified: Wed, 25 Jan 2023 00:58:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-17-boot-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b91e870c10fdfc1ee33c69dd0cef12d0d84146ef15f735c330ac1358ab0e395b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.2 MB (281190731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda6afd83c1495670ee5e134c8a6a742afcadd98691bd4e58b5db5dbeb8e59e6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:38:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Jan 2023 21:04:04 GMT
COPY dir:6138ae24df63cd8b909473221414960a006ae73d2e2f1e88f48051984c7a0e00 in /opt/java/openjdk 
# Tue, 24 Jan 2023 21:04:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 21:04:08 GMT
ENV BOOT_VERSION=2.8.3
# Tue, 24 Jan 2023 21:04:08 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 24 Jan 2023 21:04:08 GMT
WORKDIR /tmp
# Tue, 24 Jan 2023 21:04:13 GMT
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Tue, 24 Jan 2023 21:04:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Jan 2023 21:04:13 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 24 Jan 2023 21:04:30 GMT
RUN boot
# Tue, 24 Jan 2023 21:04:30 GMT
COPY file:0282db266eb050a3ad3609149efe2188243cb9f95c0b3e48a312ddef6c6bea02 in /usr/local/bin/entrypoint 
# Tue, 24 Jan 2023 21:04:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Jan 2023 21:04:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f35e12b4b859554fa3c720b691ca2e6d60e7e2e24c6332157caccf058052ab7`  
		Last Modified: Tue, 24 Jan 2023 21:14:03 GMT  
		Size: 191.3 MB (191260429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd30f6557bf9b748fb6d1a29e1c6ef23d46e4200d0ec90559ca2860222b9e034`  
		Last Modified: Tue, 24 Jan 2023 21:13:52 GMT  
		Size: 1.1 MB (1064684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92a190982fe748304bd3f43eb23ba20287fc5abd0d8e26a0e513a23dffdecb8`  
		Last Modified: Tue, 24 Jan 2023 21:13:54 GMT  
		Size: 58.8 MB (58820404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593d0aaaac38f3f5ce54e3132f08d5234fc41a74d9f17965341f74b97f124119`  
		Last Modified: Tue, 24 Jan 2023 21:13:51 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
