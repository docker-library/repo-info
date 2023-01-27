## `clojure:temurin-11-tools-deps-1.11.1.1208-bullseye`

```console
$ docker pull clojure@sha256:fe7de9d1f4ace4dcd35511e66af73e6119e25796d89534112654c319b3999098
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `clojure:temurin-11-tools-deps-1.11.1.1208-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:58ce4d48afb08e395e39e3d0b08ccad92e429bb06f52501cecd50a46f669633c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.4 MB (325359825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83cb0c896463c6b36131619d6270279bf6fb0cf232fff4cb4f007f3203efdc35`
-	Default Command: `["clj"]`

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
# Wed, 25 Jan 2023 00:42:58 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Wed, 25 Jan 2023 00:42:59 GMT
WORKDIR /tmp
# Wed, 25 Jan 2023 00:43:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Wed, 25 Jan 2023 00:43:21 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Wed, 25 Jan 2023 00:43:21 GMT
CMD ["clj"]
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
	-	`sha256:4f99aff8a35dbb6449cad0e442e7cc1087597b0ae87cc59f7d16605f8ba74b96`  
		Last Modified: Wed, 25 Jan 2023 00:56:19 GMT  
		Size: 71.9 MB (71858286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b6c7ca607163b30173e09685e0b4a3f76e427e29feb1c228d4c6b2df05a1b6`  
		Last Modified: Wed, 25 Jan 2023 00:56:11 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:temurin-11-tools-deps-1.11.1.1208-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2e0078238219457406b1477e0ffffac1846a68d20a1dbcaa4a9505807a9bca9f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320901566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0465b92864706cc7f496b7a599665c7e815bf84b73527c5984b0677bcd9508`
-	Default Command: `["clj"]`

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
# Tue, 24 Jan 2023 21:02:01 GMT
ENV CLOJURE_VERSION=1.11.1.1208
# Tue, 24 Jan 2023 21:02:01 GMT
WORKDIR /tmp
# Tue, 24 Jan 2023 21:02:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap wget && rm -rf /var/lib/apt/lists/* && wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4a3b1200c4d633202648dc3db6ed0a1311e75cc4baeee8fce32208c1eaa07537 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl wget
# Tue, 24 Jan 2023 21:02:19 GMT
COPY file:b0aef3ea203de7b5c2ea645debf58c8231445a2e3070b72749b54614f4a89b82 in /usr/local/bin/rlwrap 
# Tue, 24 Jan 2023 21:02:19 GMT
CMD ["clj"]
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
	-	`sha256:c24844acf0081a9a52e767ba75c59775dc403fbe3ec72796efcb100b9442770a`  
		Last Modified: Tue, 24 Jan 2023 21:12:25 GMT  
		Size: 72.0 MB (71979149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720305258a901f5cbc74e893fa156632963cc1ced27c93a21731cb5ff76f328d`  
		Last Modified: Tue, 24 Jan 2023 21:12:18 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
