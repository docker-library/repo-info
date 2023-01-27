## `clojure:temurin-17-tools-deps-1.11.1.1208-bullseye-slim`

```console
$ docker pull clojure@sha256:05d836614f3e7a78771101d34840ac4173979ba9917b690c258f73d8a55eb1f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-17-tools-deps-1.11.1.1208-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:85e0e44e7214202601a00f3352b8400635277620f23fc281e16e049c15ad197e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 MB (285311191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd913f3b086231c25935051a2a1c3c1d5088a6a40f0cd777008da2ae31aff3e0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Wed, 25 Jan 2023 00:49:14 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Wed, 25 Jan 2023 00:49:14 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 00:49:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Wed, 25 Jan 2023 00:49:33 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Wed, 25 Jan 2023 00:49:33 GMT
COPY file:137b40904568e30898cd031ef34f77e7f132846ba4eec91d04ae4b93dddfbb8d in /usr/local/bin/entrypoint 
# Wed, 25 Jan 2023 00:49:33 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 25 Jan 2023 00:49:33 GMT
CMD ["-M" "--repl"]
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
	-	`sha256:eaefe8af31a183679183868cfc14d6b9bbf61672e0bfa7a555dcda3c5add41a6`  
		Last Modified: Wed, 25 Jan 2023 01:01:01 GMT  
		Size: 61.5 MB (61475056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bba71370b330f8c456ac430ca2f124bb7d8eddd91fc76c612232884cbbea115`  
		Last Modified: Wed, 25 Jan 2023 01:00:53 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8936e9911eb18c20e7a09164c675ae92b2dff2d242d773a5e14de01d1347634f`  
		Last Modified: Wed, 25 Jan 2023 01:00:53 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-17-tools-deps-1.11.1.1208-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e75242f12abd3285e3c3fca3e3938585ae3d7afad3131d3ed223a3ed460eb19a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282902578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9eb13dae40a613f231692bc281f5b3c820caafb983e1e5510b0f50d11c00cd1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Tue, 24 Jan 2023 21:06:34 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Tue, 24 Jan 2023 21:06:35 GMT
WORKDIR /tmp
# Tue, 24 Jan 2023 21:06:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Tue, 24 Jan 2023 21:06:48 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Tue, 24 Jan 2023 21:06:48 GMT
COPY file:137b40904568e30898cd031ef34f77e7f132846ba4eec91d04ae4b93dddfbb8d in /usr/local/bin/entrypoint 
# Tue, 24 Jan 2023 21:06:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Jan 2023 21:06:49 GMT
CMD ["-M" "--repl"]
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
	-	`sha256:9115e57813ee0b2818ae9e4061da7b75d2c7bb08cd5f1afbc213c74ad573d1bd`  
		Last Modified: Tue, 24 Jan 2023 21:16:05 GMT  
		Size: 61.6 MB (61596319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b337c8da2cd5babfd4e29a34c75ab8d629e40bd9e559e94d13ded92aca6d0db0`  
		Last Modified: Tue, 24 Jan 2023 21:15:58 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e75f45ca0daad14b08b5f1e98a2143b73178b20c11a92c8f8d176160cd58c8c`  
		Last Modified: Tue, 24 Jan 2023 21:15:58 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
