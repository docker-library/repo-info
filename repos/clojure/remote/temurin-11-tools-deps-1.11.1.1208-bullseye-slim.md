## `clojure:temurin-11-tools-deps-1.11.1.1208-bullseye-slim`

```console
$ docker pull clojure@sha256:14a8ff3b27e462fd4a31b747b71b85f289ed07982df19f24791488e273fc5b0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-11-tools-deps-1.11.1.1208-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0c0ff1608df53a17bcab1557ccea38d10951f05027a319535737721068724f57
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.3 MB (291347662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022560dd4c55398a9c154f36f9301de792a70538cf613a00cad5d3ba47488384`
-	Default Command: `["clj"]`

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
# Wed, 25 Jan 2023 00:43:27 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Wed, 25 Jan 2023 00:43:27 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 00:43:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Wed, 25 Jan 2023 00:43:45 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Wed, 25 Jan 2023 00:43:45 GMT
CMD ["clj"]
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
	-	`sha256:0fb5c69f5a54b4ae215a49cdd47a6b516f3b44623ad456b45fac07f79d9c9852`  
		Last Modified: Wed, 25 Jan 2023 00:56:37 GMT  
		Size: 61.5 MB (61474368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faaeeda3e5a68e9ed50ece1177742ed3291d1250666ee340309b515fd132e666`  
		Last Modified: Wed, 25 Jan 2023 00:56:29 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-11-tools-deps-1.11.1.1208-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:28f0105d773e4f7f6e0f3c5dbb0ef3613ca1e0cc0aec48f27a012396aa91bbaf
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286881811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7871ce16596e870d2dc37b352c4193156b2524ea2978ed95e6ba511eceb01fb`
-	Default Command: `["clj"]`

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
# Tue, 24 Jan 2023 21:02:25 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Tue, 24 Jan 2023 21:02:25 GMT
WORKDIR /tmp
# Tue, 24 Jan 2023 21:02:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Tue, 24 Jan 2023 21:02:39 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Tue, 24 Jan 2023 21:02:39 GMT
CMD ["clj"]
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
	-	`sha256:351336631ff0ef985a6151eaa248e8763b9a420b7cf9af0a699354400942c87f`  
		Last Modified: Tue, 24 Jan 2023 21:12:42 GMT  
		Size: 61.6 MB (61596427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2439217a6f26a98bcdd632570da6301e1dfa43a7d3c6e8b26372cf1605e0b3c5`  
		Last Modified: Tue, 24 Jan 2023 21:12:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
