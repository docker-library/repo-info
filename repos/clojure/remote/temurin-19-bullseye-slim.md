## `clojure:temurin-19-bullseye-slim`

```console
$ docker pull clojure@sha256:1d95ec08868d811895dfbe7758c976d33cf1d6b57a6f1e0e235819946e22cecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-19-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2422c5fc50dab0f860a77b13e55b6a26cc0494c72d1392c0768dfe8272fcaca0
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.0 MB (293985908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e041722d2c1ff6f21e7a28fc54d4412ad89c64a3307ac5b0a426ca261810099`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Wed, 25 Jan 2023 19:59:59 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Wed, 25 Jan 2023 19:59:59 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 20:00:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Wed, 25 Jan 2023 20:00:16 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Wed, 25 Jan 2023 20:00:16 GMT
COPY file:137b40904568e30898cd031ef34f77e7f132846ba4eec91d04ae4b93dddfbb8d in /usr/local/bin/entrypoint 
# Wed, 25 Jan 2023 20:00:16 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 25 Jan 2023 20:00:16 GMT
CMD ["-M" "--repl"]
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
	-	`sha256:250db43b8936beaeab89a27249f16fa4ca22edc23ce7da7aed3068a0d031458e`  
		Last Modified: Wed, 25 Jan 2023 20:10:46 GMT  
		Size: 61.5 MB (61474972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c6c9eeb1f6569a42125b7abded47e919e1e1e55eb282f61a3443089d6ae3af`  
		Last Modified: Wed, 25 Jan 2023 20:10:38 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd773bed4ad611b5067979739473e7f80630b5dd931fdc374a16b882087a229`  
		Last Modified: Wed, 25 Jan 2023 20:10:38 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-19-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a8e023bb688fb2f1dae3dae8bac43c2de9e04e998369c927d5777ea531ffdf31
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.5 MB (291497406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c135e7824f6f712046e60768bfd38fe0bb8bc16327927ac5d93e55db59b4c60a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Wed, 25 Jan 2023 20:09:34 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Wed, 25 Jan 2023 20:09:34 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 20:09:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Wed, 25 Jan 2023 20:09:48 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Wed, 25 Jan 2023 20:09:48 GMT
COPY file:137b40904568e30898cd031ef34f77e7f132846ba4eec91d04ae4b93dddfbb8d in /usr/local/bin/entrypoint 
# Wed, 25 Jan 2023 20:09:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 25 Jan 2023 20:09:48 GMT
CMD ["-M" "--repl"]
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
	-	`sha256:76b7956f48f671a7310a497587c75ca59e04dddcf23a20e1c92f85bb3a65ebce`  
		Last Modified: Wed, 25 Jan 2023 20:18:29 GMT  
		Size: 61.6 MB (61596372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f6c71571c1ff6f5d004e5f1a177293b40d3431a053a9197c32431ad03a6aec`  
		Last Modified: Wed, 25 Jan 2023 20:18:22 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c89348abbab6d398a2379b9f20d86168c325eb6662ebfe8d06e53f1eafb8b`  
		Last Modified: Wed, 25 Jan 2023 20:18:22 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
