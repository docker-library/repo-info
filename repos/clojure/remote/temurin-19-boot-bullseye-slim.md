## `clojure:temurin-19-boot-bullseye-slim`

```console
$ docker pull clojure@sha256:74fdca804cb3233922379e8b6b8472e16696574bad128df8b1e2046883c50de1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-19-boot-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5ae7380286712b4896bdbf0bd9f92b012cae567c5ea8f3ba73a34f014992459a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.4 MB (292408069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c519f34614223bc50f3ade6440db85836def2655dfdccfb705c6aded565acac`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:20:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 19:56:14 GMT
COPY dir:94cb5af8175285c10c94286222d8a35302f3f8c290e00011a75c67156659d6ab in /opt/java/openjdk 
# Wed, 25 Jan 2023 19:56:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 19:56:16 GMT
ENV BOOT_VERSION=2.8.3
# Wed, 25 Jan 2023 19:56:16 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 25 Jan 2023 19:56:16 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 19:56:21 GMT
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Wed, 25 Jan 2023 19:56:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 25 Jan 2023 19:56:22 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 25 Jan 2023 19:56:39 GMT
RUN boot
# Wed, 25 Jan 2023 19:56:40 GMT
COPY file:0282db266eb050a3ad3609149efe2188243cb9f95c0b3e48a312ddef6c6bea02 in /usr/local/bin/entrypoint 
# Wed, 25 Jan 2023 19:56:40 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 25 Jan 2023 19:56:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47800521fb8b1680d57fce69a9c4a0667953b65a571b5542b41f4a3197fd878`  
		Last Modified: Wed, 25 Jan 2023 20:08:40 GMT  
		Size: 201.1 MB (201112946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12759ddc2e37ada8fe178e6515029e7ec00b60d789cc1a9f2966663f5a861a58`  
		Last Modified: Wed, 25 Jan 2023 20:08:25 GMT  
		Size: 1.1 MB (1077347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5d2294adec6319cc7bbdc982ee08b95d0d2d2714759607834a58d235bd171a`  
		Last Modified: Wed, 25 Jan 2023 20:08:28 GMT  
		Size: 58.8 MB (58820405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2d4765e65d6f037e0c71847c7f7886f65436a9d74ad671d101369847de16fd`  
		Last Modified: Wed, 25 Jan 2023 20:08:25 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-19-boot-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2adb66e464fc97a3a2d322b829085cc0fa573959b77cbb95d9de077ff1a9cf3a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.8 MB (289785593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2798ce0b8687603cf89bc8827988be51e216df126d1b61f56dea489b5039a65`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:38:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 25 Jan 2023 20:06:42 GMT
COPY dir:9a6a873ca11063f6f04e7f088397a1fce771e2b1aa8590b72eb07158cfac883f in /opt/java/openjdk 
# Wed, 25 Jan 2023 20:06:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 20:06:47 GMT
ENV BOOT_VERSION=2.8.3
# Wed, 25 Jan 2023 20:06:47 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 25 Jan 2023 20:06:47 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 20:06:52 GMT
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/* && mkdir -p $BOOT_INSTALL && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && echo "Comparing installer checksum..." && sha256sum boot.sh && echo "0ccd697f2027e7e1cd3be3d62721057cbc841585740d0aaa9fbb485d7b1f17c3 *boot.sh" | sha256sum -c - && mv boot.sh $BOOT_INSTALL/boot && chmod 0755 $BOOT_INSTALL/boot && apt-get purge -y --auto-remove wget
# Wed, 25 Jan 2023 20:06:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 25 Jan 2023 20:06:52 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 25 Jan 2023 20:07:08 GMT
RUN boot
# Wed, 25 Jan 2023 20:07:08 GMT
COPY file:0282db266eb050a3ad3609149efe2188243cb9f95c0b3e48a312ddef6c6bea02 in /usr/local/bin/entrypoint 
# Wed, 25 Jan 2023 20:07:08 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 25 Jan 2023 20:07:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac24aea557f58fecfd01a767d0517bef5345b836b73b69ffe849512648ef758`  
		Last Modified: Wed, 25 Jan 2023 20:16:47 GMT  
		Size: 199.9 MB (199855201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2a9c5b6f6860eca213357d512fd3766227f59a49cf63e3b54e4c295b01e306`  
		Last Modified: Wed, 25 Jan 2023 20:16:35 GMT  
		Size: 1.1 MB (1064713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a410520417dbe44b3e720973fb6c1d62624bd685ebf650f2c118bd4618c0cd6`  
		Last Modified: Wed, 25 Jan 2023 20:16:38 GMT  
		Size: 58.8 MB (58820466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073bc7cdea59a8ce88e286ac7b0a06a1c1bd4cd67233a711000420d40ad15e3f`  
		Last Modified: Wed, 25 Jan 2023 20:16:35 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
