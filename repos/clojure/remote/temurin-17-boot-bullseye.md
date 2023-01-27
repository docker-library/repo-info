## `clojure:temurin-17-boot-bullseye`

```console
$ docker pull clojure@sha256:347c4bbb61ef2dbc98aca1d45983715cbfd858957d5fc82c2c37ba9fff635cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-17-boot-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:8a4584fee4810f1efb8a44706b2642f859f6032d9a0e50f133edec2c46616faf
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.6 MB (308644898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e48e65a5ee78c4b2be6ab34915b35238709c42c3f1c568517e751307a8cfd17`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:18:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 00:45:22 GMT
COPY dir:bb223240e99e5b7e66eb621e33f54e49ced87035f56dd975e567c739be4bfe96 in /opt/java/openjdk 
# Wed, 25 Jan 2023 00:45:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 00:45:24 GMT
ENV BOOT_VERSION=2.8.3
# Wed, 25 Jan 2023 00:45:24 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 25 Jan 2023 00:45:24 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 00:45:30 GMT
RUN apt-get update && apt-get install -y make wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Wed, 25 Jan 2023 00:45:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 25 Jan 2023 00:45:31 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 25 Jan 2023 00:45:48 GMT
RUN boot
# Wed, 25 Jan 2023 00:45:48 GMT
COPY file:0282db266eb050a3ad3609149efe2188243cb9f95c0b3e48a312ddef6c6bea02 in /usr/local/bin/entrypoint 
# Wed, 25 Jan 2023 00:45:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 25 Jan 2023 00:45:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147288dc8989fb24ee233733fb7ef84c2cf5d7be2f0863fe9ea1e153e52a350f`  
		Last Modified: Wed, 25 Jan 2023 00:57:58 GMT  
		Size: 192.4 MB (192438164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7a4824bc4d2c9db632d2aed76365b9ff1dff689a3b742f6698a4dfa4f7e5`  
		Last Modified: Wed, 25 Jan 2023 00:57:43 GMT  
		Size: 2.4 MB (2360635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93bb362a493d7f7ad065de9e46d29e66ef91b974cbb23e33531a99e71862c91`  
		Last Modified: Wed, 25 Jan 2023 00:57:47 GMT  
		Size: 58.8 MB (58820494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003c9ac5587341842c4bdec8eb3f2766052d23da6da598e74968e82a4ce46f03`  
		Last Modified: Wed, 25 Jan 2023 00:57:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-17-boot-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2394b951ce1e8cb0c1f2cd23d3151f30e647a6449a3a695101dfab7f97e4879c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.1 MB (306113825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1f83c4231bdabdfe5619f52cfb768fe99debef7dba610118c5625a4cd4ed9f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:24 GMT
ADD file:9e185c2d9ca8a231a39ee2b1761fcdff75065252d25a65a207acb7a319c1cf23 in / 
# Wed, 11 Jan 2023 02:57:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:38:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Jan 2023 21:03:31 GMT
COPY dir:6138ae24df63cd8b909473221414960a006ae73d2e2f1e88f48051984c7a0e00 in /opt/java/openjdk 
# Tue, 24 Jan 2023 21:03:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 21:03:35 GMT
ENV BOOT_VERSION=2.8.3
# Tue, 24 Jan 2023 21:03:35 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 24 Jan 2023 21:03:35 GMT
WORKDIR /tmp
# Tue, 24 Jan 2023 21:03:40 GMT
RUN apt-get update && apt-get install -y make wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Tue, 24 Jan 2023 21:03:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Jan 2023 21:03:41 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 24 Jan 2023 21:03:57 GMT
RUN boot
# Tue, 24 Jan 2023 21:03:58 GMT
COPY file:0282db266eb050a3ad3609149efe2188243cb9f95c0b3e48a312ddef6c6bea02 in /usr/local/bin/entrypoint 
# Tue, 24 Jan 2023 21:03:58 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Jan 2023 21:03:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c345c9e441f5f49235768af74b8ab37743652d38958afaa000edd56d7b2f0540`  
		Last Modified: Wed, 11 Jan 2023 03:00:56 GMT  
		Size: 53.7 MB (53681859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09dcb437b869e84fa1314bf4f1e61a77274341567bbec0caf4e4ea2237b3e69`  
		Last Modified: Tue, 24 Jan 2023 21:13:41 GMT  
		Size: 191.3 MB (191260425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a77992de3bd5a62d0fe5739b9fc2c910d5f028559a45e065ccfa2906ac34d7`  
		Last Modified: Tue, 24 Jan 2023 21:13:29 GMT  
		Size: 2.4 MB (2350678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd490233f402335d5134b25d48278f3431b40de0ce0dd4a8f092d7ce0849fe1`  
		Last Modified: Tue, 24 Jan 2023 21:13:32 GMT  
		Size: 58.8 MB (58820463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f0ad5479c9b83ab1610f276ad904a058417aa07ae7d9e63463849b659bb09b`  
		Last Modified: Tue, 24 Jan 2023 21:13:29 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
