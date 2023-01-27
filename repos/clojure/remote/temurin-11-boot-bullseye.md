## `clojure:temurin-11-boot-bullseye`

```console
$ docker pull clojure@sha256:49b5fcd6b0351de11e94eb7d0a8522a270a94c21d5e00a26605a76319cbbb980
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-11-boot-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:9e358068efcbf46526f1921dad416e9d21885ba1a54986a5b14673dfd697cd2e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.7 MB (314681942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb04ee0993dbf38f913619bd94b35be3ffa73b55bca04ea7fa3019daf19de73`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:18:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 00:38:55 GMT
COPY dir:7c6c6be58d44c17cd09173c77ba1f0d96ed42a5b7ef2235235262bdd0141924b in /opt/java/openjdk 
# Wed, 25 Jan 2023 00:38:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 00:38:57 GMT
ENV BOOT_VERSION=2.8.3
# Wed, 25 Jan 2023 00:38:57 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 25 Jan 2023 00:38:57 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 00:39:04 GMT
RUN apt-get update && apt-get install -y make wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Wed, 25 Jan 2023 00:39:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 25 Jan 2023 00:39:04 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 25 Jan 2023 00:39:22 GMT
RUN boot
# Wed, 25 Jan 2023 00:39:22 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602e2ea8d297cb16cb85100f12e05f8198378e9fa1ddc9b44e587dc662a6b8dc`  
		Last Modified: Wed, 25 Jan 2023 00:54:09 GMT  
		Size: 198.5 MB (198475718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1a3cb8d9484480d4e317662576ec53a34e160b27b52cd59ec44956f57d8b28`  
		Last Modified: Wed, 25 Jan 2023 00:53:55 GMT  
		Size: 2.4 MB (2360605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922b558a9e0000d2b80883bbbaf0a8e3356a8dca28a975aae404bdc1aeb43643`  
		Last Modified: Wed, 25 Jan 2023 00:53:58 GMT  
		Size: 58.8 MB (58820413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-11-boot-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ff4b6ff8bb08b703a73ccb2faab11dd71ae7f63c3f1bb808eb71649d05490c8e
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.1 MB (310092908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71147db4702af1a6777d4ba265bdfecc7e028367dc26f26c27cc6f9a92a23a45`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:24 GMT
ADD file:9e185c2d9ca8a231a39ee2b1761fcdff75065252d25a65a207acb7a319c1cf23 in / 
# Wed, 11 Jan 2023 02:57:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:38:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Jan 2023 20:58:49 GMT
COPY dir:b5081ac7f31ec5da21215ff6126fdb71f9fa63a8c9b5dc5e3f45f611c1765726 in /opt/java/openjdk 
# Tue, 24 Jan 2023 20:58:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 20:58:53 GMT
ENV BOOT_VERSION=2.8.3
# Tue, 24 Jan 2023 20:58:53 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 24 Jan 2023 20:58:53 GMT
WORKDIR /tmp
# Tue, 24 Jan 2023 20:58:58 GMT
RUN apt-get update && apt-get install -y make wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Tue, 24 Jan 2023 20:58:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Jan 2023 20:58:58 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 24 Jan 2023 20:59:15 GMT
RUN boot
# Tue, 24 Jan 2023 20:59:15 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:c345c9e441f5f49235768af74b8ab37743652d38958afaa000edd56d7b2f0540`  
		Last Modified: Wed, 11 Jan 2023 03:00:56 GMT  
		Size: 53.7 MB (53681859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99aebf4dab31d3f5e220afa0ef10bc3b088f366a9c9be4b3252cdb7a7b0a322`  
		Last Modified: Tue, 24 Jan 2023 21:10:41 GMT  
		Size: 195.2 MB (195239940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3f15404193f478de42518da87106a7edf9e0669a88efc23c3072d00a141540`  
		Last Modified: Tue, 24 Jan 2023 21:10:30 GMT  
		Size: 2.4 MB (2350649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bdc9186abc833750fd88d8945d7efed3b39f09bf5081775e5318b0a7e4f049`  
		Last Modified: Tue, 24 Jan 2023 21:10:33 GMT  
		Size: 58.8 MB (58820460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
