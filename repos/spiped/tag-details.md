<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `spiped`

-	[`spiped:1`](#spiped1)
-	[`spiped:1-alpine`](#spiped1-alpine)
-	[`spiped:1.6`](#spiped16)
-	[`spiped:1.6-alpine`](#spiped16-alpine)
-	[`spiped:1.6.2`](#spiped162)
-	[`spiped:1.6.2-alpine`](#spiped162-alpine)
-	[`spiped:alpine`](#spipedalpine)
-	[`spiped:latest`](#spipedlatest)

## `spiped:1`

```console
$ docker pull spiped@sha256:7910c0ce72d85cde6324b988a033a7cd79b9eb248f5186e6e3a3545264ed78d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 8
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; mips64le
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1` - linux; amd64

```console
$ docker pull spiped@sha256:5f7c84096c5cb013399c7fc2be4d269161b137e38aad13b843c071ee96779f5e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37397591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a4acc1e1aa6506173e05a0986ff73a78eb6883fd765e813e745f33480a7745`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:31:50 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 17:31:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:31:53 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 17:32:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 17:32:15 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 17:32:15 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 17:32:15 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 17:32:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 17:32:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cadb39b3d3f841c36bbb2e4bc8c14f183b2b6b36f6ac9534cae5b73460ca633`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b4d359bfe9d52edcd07f673d44f8efe3dfe07cb8d3b53618bf6ddeafc012c1`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3495b954805258d02555affedd383c98a32a6d089c349cfd7f580a228605cd6f`  
		Last Modified: Wed, 11 Jan 2023 17:32:30 GMT  
		Size: 6.0 MB (5997362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f172acb16791bbbc0d12d544bfed6a8fe36fea1259eed837341ed9ffc505f38e`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b690febe8312390709c218d2a5bd687e7abc3997f0aaa86c4ef4ad0b26882076`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:cf547735c8b23a3ae531fb0381261215d6ec3fc6b428c4cc6d33c039fe070165
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33929914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b51b40d7fad17a76382fd3499a0d2476bb24a4960b16a65a83d18fed961f42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 01:55:36 GMT
ADD file:f279d5ada9c5980d920c7b9ff126ce11ec9499a532ea3bfd8b717de3348c8439 in / 
# Wed, 11 Jan 2023 01:55:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 10:43:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 10:43:48 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 10:43:48 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 10:44:13 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 10:44:14 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 10:44:14 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 10:44:14 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 10:44:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 10:44:14 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:77f56a6f12b7a55a95e6f2c8beadc0eb0243b5881f73f45d09c343f2a8926d62`  
		Last Modified: Wed, 11 Jan 2023 02:00:42 GMT  
		Size: 28.9 MB (28898675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d034277dbf667f19a19064ac6715c96a8a7d7ca958cd569be0f428c75ab3e210`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73aea52e7d7e59957b517d8034731289c6ee9d7ce46ba114c8081f05d085950`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 1.0 KB (1024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb331032b8dbf2bd5293b41b37e87b06e471d33617ea855be27a467ac9a7a08`  
		Last Modified: Wed, 11 Jan 2023 10:44:44 GMT  
		Size: 5.0 MB (5028051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421a2232c4821e7030cb395d7157562e2ef2cf68a7f95c98c28999f28b98346c`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bf2eb22760d40cfd19f7cf8fb78e94024a6faa8ccfcaa09f4fa736db4afce2`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:7fb1486f3c29b4ff91cd313c9107e4087a4b2d70cc6833e49ce6e0104200ca83
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31310925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef9d431b237cabb5b0aef50ab7d4ddcfc2c51336134a1d968c939f219c3e2c49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:36 GMT
ADD file:3fb94bfd628f3ebd91db74501bd297a817977cc066664f0fa342442b3352e0be in / 
# Wed, 11 Jan 2023 04:00:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 19:19:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 19:19:46 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 19:19:46 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 19:20:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 19:20:04 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 19:20:04 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 19:20:04 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 19:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 19:20:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:330ad28688ae3fa5f3b241fef3efd076299bec9874e0597b1c16dcf8a165a53d`  
		Last Modified: Wed, 11 Jan 2023 04:07:49 GMT  
		Size: 26.6 MB (26559488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61eab8cb53ee82c55cb3e24a11458745c74ce235eaeb8faa73b069b84b4dd77f`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 1.7 KB (1728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f21422eab433d43cde455ac13d9a0f800693fc54e0546ba386aaf1a7abd2f`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 1.0 KB (1024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ceb37abde13bb72a2423c28d2fa29d634698061f4c1d9fdfe50265f9ce2a78`  
		Last Modified: Wed, 11 Jan 2023 19:20:41 GMT  
		Size: 4.7 MB (4748250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2363e3d2a921f03c619de48d66b043e1f555bafc38052942ca03665d4b9ff8`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8922da43d378422485dda960ab0f318e7fa2e821e76c98fd036e3a4bbc64a`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:9435b3c015c2755a18cd56edc1c9ff40ea5c36bb5bf3511007a923b7138966aa
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35319798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807d11e782a906785452cdcfc648a0619a9092e9488e5ed7b98698d50d754a76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 14:42:09 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 14:42:12 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 14:42:12 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 14:42:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 14:42:27 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 14:42:27 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 14:42:27 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 14:42:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 14:42:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d955d4cac49229dd7220e50e2de8474299157e4926c29a5e72ada7083da56ef8`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3ae6ce4c127487bfc7be3547bd165c9f9d74884a799a4f66ede6b282e76f6a`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b6d5555006d65c6c79c855be09eb0be90a8b44df2adba0919f46b3b9db739c`  
		Last Modified: Wed, 11 Jan 2023 14:42:45 GMT  
		Size: 5.3 MB (5271727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24af0abf1ee8e2d3c93970143d957c1cf405a1fbc42f1a85a21f1285c0c660b`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692eae5875de6570da40ebb69d45c8ca736600c614dfb6bfa94cf545c1c6acf2`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:724c7f626780b3132b667edf7be9a649c52aa648d2ae8ebd6ffc6ef5d8e11290
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40268386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590ad2a4b77726d604744abedab3c03723e599af6c75bbdc975824fd8c21c815`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 03:16:08 GMT
ADD file:68afc7c49a947a9fb253ffeba9950cdc39e241f8a5cf0133043cfc612447f597 in / 
# Wed, 11 Jan 2023 03:16:08 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 11:50:59 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 11:51:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 11:51:04 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 11:51:25 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 11:51:26 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 11:51:27 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 11:51:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 11:51:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 11:51:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:165165b78fad597abd0883f40adcaa0edcfe981a358deea181323680a07b7011`  
		Last Modified: Wed, 11 Jan 2023 03:22:01 GMT  
		Size: 32.4 MB (32375738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f4269aee82c40d92ee5ce1a336967a4505b66bfcd7a515639a6d196a36b8d4`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 1.6 KB (1610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f844eca0e63b3bdc34f231b6fab7d759782db378c194041de2e801bcf84a92be`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f584470e3c267d6e4f2e7b03daa4d586accedadce0eb0c3e62678c4d0491e20`  
		Last Modified: Wed, 11 Jan 2023 11:51:59 GMT  
		Size: 7.9 MB (7889675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9ef91d586d83c7d6198d0c43034c6396979d7a6bd9602a748aadf6870533b5`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72a8b4e7869f2fabac800ff33f856a98b31d7bdf868ae8e3754c978662221e3`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; mips64le

```console
$ docker pull spiped@sha256:b730466434599fad0c0b7f45842928f46d35b73a8aeaface9fb6ec3b163a8942
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35327855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7df08512320dac74f33c923af82d12788d3060be6c84905071a5ffafaaecb15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 16:34:24 GMT
ADD file:295faaf493f6a8d3e2a3eecb28c8f5ac765a1281656221d0a3ab482312a5ee28 in / 
# Wed, 11 Jan 2023 16:34:29 GMT
CMD ["bash"]
# Thu, 12 Jan 2023 02:33:54 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 12 Jan 2023 02:34:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 02:34:11 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Thu, 12 Jan 2023 02:35:46 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Jan 2023 02:35:49 GMT
VOLUME [/spiped]
# Thu, 12 Jan 2023 02:35:52 GMT
WORKDIR /spiped
# Thu, 12 Jan 2023 02:35:54 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 12 Jan 2023 02:35:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 02:35:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9d653aeb7081a0b221d1160bd67b030696ca49b7ca91912bf298835f8f75ac7b`  
		Last Modified: Wed, 11 Jan 2023 16:43:17 GMT  
		Size: 29.6 MB (29619870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abe6f03d096edad9cefbcccc088c938e23a7055d4351e8cfeb37aa5787fb436`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 1.6 KB (1623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867f896ed2d956a527e2710b5814c6c336e0ced9a98209fcd3432f2dd10b6b67`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d27e290b4bfbefbe11ef090278d14200ce78aae72f617a0c45b72196694ec6`  
		Last Modified: Thu, 12 Jan 2023 02:36:28 GMT  
		Size: 5.7 MB (5705001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95502918743e976e174ed1430de13433c908c65971251adc0941ed528de608f3`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ec717daf1fdf53be4cb1236d04557051ce2dbbf0239b4bbe63b835eb3dd9af`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:f7d6ef40013311dad5d5386fa45460ab3284e3bb4a859b91bc59c445866f481d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41270894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495bc0b80da2ebceb0973bfa8e629cec07bf3d984af0e05c2a8707c42acc6548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 03:49:30 GMT
ADD file:3c7553fb5eda606d574ff6c08bc2213f9e6a68910043fe3087e4c1a04b65a18e in / 
# Wed, 11 Jan 2023 03:49:32 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 15:34:09 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 15:34:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 15:34:16 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 15:34:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 15:34:57 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 15:34:58 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 15:34:59 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 15:34:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 15:34:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bbf81328aca90b7ddb122fc175443f5323674a9e51bbb00d5b1d683ef0b858f4`  
		Last Modified: Wed, 11 Jan 2023 03:55:33 GMT  
		Size: 35.3 MB (35268773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bcd16538282602c2d705f8905e74c80c2731d39b79dd25fbed760b4dad39`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f1d384aa9991b4ed4cbad9c72aaf6f18a5b04b25a3aaf60951d9f1598c0a2`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8631e244b1f01f6af19e4913866a6277bdf8cb258d84a4d8f983b62947105e`  
		Last Modified: Wed, 11 Jan 2023 15:35:32 GMT  
		Size: 6.0 MB (5998863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9023d4284e3f11b010206e4fd016fdc1d50100f65120912c764b4afff7d071`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fb4cd5aed7ef5727a98007e15d68a3a5a3407776701feea36597c8ef1e9c59`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:8f6da226164a56f7e180877cdd08b998d7d64c659afe5b73babb1b887f2d6760
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34819928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accd920e67112f784b6a0d5b9de16c493b5b123e95f865721a3a7d5dd269f441`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 02:22:23 GMT
ADD file:14f332233d8fa1ca519992e52aaf550bcee52d346c375e94ee73d36864933f8e in / 
# Wed, 11 Jan 2023 02:22:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 09:18:49 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 09:18:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 09:18:52 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 09:19:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 09:19:05 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 09:19:05 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 09:19:05 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 09:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 09:19:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5895b3b9300287ac4aca79440c1c4979b6d4fad1ceb06fba32443d012c83cc37`  
		Last Modified: Wed, 11 Jan 2023 02:26:52 GMT  
		Size: 29.6 MB (29629731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b1a152e2882e2def36f7bfdc5d2b1e6b57ffc1f184154d47a0ddd95266636`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ff426d08c69140da3a2b8958e70c6d4ee2667b6297deb86b1026c11b58589d`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28403f8526d37d09a3f0e0ec9d9f9b90675eded0afcf318255b6a941975b416b`  
		Last Modified: Wed, 11 Jan 2023 09:19:36 GMT  
		Size: 5.2 MB (5186932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0ce4985a9e6f7cab06381abdebb833fd2a5c416fc1915c913a89eb0758db8`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242aae2919d38fd7e7e8f1afb7807ffa87db19c299a7a6910b00752290890b29`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:e8982ce4c33ed5c5fdf992ccf6c890b82d7806e41d8778ea6777610d0e4e4719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 7
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:8eb40fb8e554b827563f599dd3e61da57293486cae87cd856a891b4e8dba353e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5075384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dda802d4535ce910f8e00126e80c79abb0825f3bf7caf66a4bb950cb589cc74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:03:04 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 20:03:05 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 20:03:05 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 20:03:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 20:03:16 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 20:03:16 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 20:03:16 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 20:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:03:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9fb896348696d642ef5674956097b03540bea28f8454d6287f5d9cb10b5b19`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1fb67340ae0e377cfa3a1ee1218a1ba6d31cf9f7cb2a302542d4354c848991`  
		Last Modified: Mon, 09 Jan 2023 20:03:33 GMT  
		Size: 1.5 MB (1481738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e228854dc2c8d78fdfe84ed1b99903b8567e21eff2fcf86757e6fdfa823872a`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 221.3 KB (221283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f486af83d26d338661f9edfe85a3574704c4d8e4a08cdea692294588749dde0`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35820a44b4998d9547534e80870c2e2a59cad7f381a4d6a82609d3f67126045d`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:cb751a21eae14bec751c4cd688311f6eafc98d6d1769aa245711e63d7182e21a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4554176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341ba40bb3f41e998727f9c4967f67b001703e78dafe41ad92a70bf2791fca9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:52:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 20:52:16 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 20:52:16 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 20:52:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 20:52:25 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 20:52:25 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 20:52:25 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 20:52:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:52:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9fcf4fe7db4264a8e664de4d52478f1d4ba98146c38a7672ed85c122a2ec9ea`  
		Last Modified: Mon, 09 Jan 2023 20:52:44 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252aa0c5aa375a984c376376752105d7908cccb2ad2078305d2f12c857e58688`  
		Last Modified: Mon, 09 Jan 2023 20:52:45 GMT  
		Size: 1.2 MB (1238925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bcc6c04b36698f2894107a3dcd168ebf74dcadfaada1feb7c909e6d7d2e48c`  
		Last Modified: Mon, 09 Jan 2023 20:52:45 GMT  
		Size: 206.3 KB (206330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2b1d7fdda8e63c8009adec27201adf5aef01cb0be8ae5e126525f70f6ff253`  
		Last Modified: Mon, 09 Jan 2023 20:52:44 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cc764eff90255e712b5e4a850166371f439ffce5e23ec5a3902aeca546fce4`  
		Last Modified: Mon, 09 Jan 2023 20:52:44 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:5350876a3890b8b4c1a7262c4c48345b4046feb2b93df0f849b165f6d3862d43
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4233507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a136cbdcf03b9c140acc83ef95bd48dcdb73507ee82d16eed4339281865ff3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Tue, 10 Jan 2023 01:03:19 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 10 Jan 2023 01:03:20 GMT
RUN apk add --no-cache libssl1.1
# Tue, 10 Jan 2023 01:03:21 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Tue, 10 Jan 2023 01:03:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Tue, 10 Jan 2023 01:03:29 GMT
VOLUME [/spiped]
# Tue, 10 Jan 2023 01:03:29 GMT
WORKDIR /spiped
# Tue, 10 Jan 2023 01:03:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 10 Jan 2023 01:03:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jan 2023 01:03:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c30dc917313d61894ccb7cfad12c5f3a278e251ca506df448c9f8e2a16ba910`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4704616a59a25f4e6a3979312202c02302fb7db16765696efeaf0136d5d871`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 1.2 MB (1166534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d943eecb9e0495c260d5786a0e7109c2f3f4c07c93eed00e71667a8fd3cd0a7`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 200.1 KB (200087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30309affe27d04051a0e8f9d361029624d0957f51f95f351a76921b3d10aa00e`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cb5d940651ed07d3a8a9b5d7bb45557f66f56eb842f0db2c34496a0b49b3be`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:0213ccc252b274961ca65d4810e3e3adbfd0a45802938a1fc17b5260a5766747
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4838993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f334562e83a3560fd096b7555b628adde3f65f35e7d7f88d92cef036aa3b80e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:54:38 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 21:54:40 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 21:54:40 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 21:54:48 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 21:54:48 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 21:54:48 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 21:54:48 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 21:54:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 21:54:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a57c503886d17fc3a18ad5ac652d01a19c1d114d10d95fbbb6962eb5141a3c`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7deb227b2dbf5691407192d6e6164c40a313d06c2d63a713bcec3bfb588a82f1`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 1.4 MB (1362327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136d1ea11d30612c79aa77675c78fb75feede08c3a75327ad85af71c6acc55cc`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 215.7 KB (215692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c3012f3cfaea50c1e653e77ff8a01ac59681255c473f52fc3d3087f2ec06f1`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ff7343264af5878ae4a177e19ca1bc3ef5ed246ba09fa1c3c6e4e80c2c09b2`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:d8a38312632b028320e1705047e9f772afc0badca532e45181c287df1ef83910
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5125102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8462fd88246d8334a88562d226243c2b45ed34c1f68d1e222efac09016792383`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:00 GMT
ADD file:d03619a0ef81726c34189e849b80cc92da908eb36e116f28275d5765e6d0919a in / 
# Mon, 09 Jan 2023 17:05:00 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 19:07:22 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 19:07:24 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 19:07:25 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 19:07:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 19:07:37 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 19:07:38 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 19:07:40 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 19:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 19:07:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:40e5b0b2e2bde18974628cadecd8a2f190f45f06c32846c16885d69b2908bf68`  
		Last Modified: Mon, 09 Jan 2023 17:05:42 GMT  
		Size: 3.4 MB (3408318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb4d578ecfd8ec0e5b44d6f231ae75cd33c39c4d21f5b01b80e80019344904e`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5141406d2cea5667b65a83cfc84fe7c8eef2aa49d6c549ec8acb7e97c32f89`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 1.5 MB (1483729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac653492946b43047544c01ac378096ae6c6d8856996b5de736547a2fafaf68`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 231.4 KB (231382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e2203d634caaf6243a81ca591d7aa9c925d62488c2290d0d6c57a46eeac8f8`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ad0075ba728f545bdda81f2b8cc4d645b41f8ab2dac39cebca27927c444b2`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:6287dba41a56cf9c39be27c62b7a3bde3479b303d63e9230b446113020881fa9
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5017699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef59306a962c0b86d594be1281ca3dd3e91c0b16a046ee09218d60231e3a9cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:13 GMT
ADD file:9a1d27fdc0c915f387f2446c85193d5215b18020b313114f0bf2799efcc1baae in / 
# Mon, 09 Jan 2023 17:05:13 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:32:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 21:32:16 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 21:32:16 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 21:32:30 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 21:32:31 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 21:32:31 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 21:32:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 21:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 21:32:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f45bfda3aa14e255d9eb4c9a108eb3d8c6721946b4aa2e5808e5092242344a1c`  
		Last Modified: Mon, 09 Jan 2023 17:05:56 GMT  
		Size: 3.4 MB (3384562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd46f789ced0eaea980007a2e6a0f6b02b7711749489fdc0a30de08d248c3325`  
		Last Modified: Mon, 09 Jan 2023 21:33:00 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc9ef36d078710c0c6d69a2d1c19bc6701be12e5c554ec9fa1546fe495e59eb`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 1.4 MB (1411372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8744b0f13a67b1002a7a426a2b3635f0b4a28fd095ef061c0f1fd5d85d909`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 220.0 KB (220028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc209dab70185705e5eee1e1710197c9bc735498e476d6719c4b850ae44fdaa`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe41dcc405bef6ddd7bb480eadf45d92a9cfd583bee884d68eb41037c93e1e23`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:5a87be0c5f3e288adf33abd9c67087730cd729e12ac28ae4b107955683edff20
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4602294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63961a94a731d4f9e0005f5fd83043126c5546496fa856ea125a5c2e51c6979c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:44 GMT
ADD file:eabe7c3c368e65478b53ac35c1daf3b703f2bca4ecdab2d080a65e8b981d7d4a in / 
# Mon, 09 Jan 2023 17:05:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Jan 2023 01:32:49 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 10 Jan 2023 01:32:52 GMT
RUN apk add --no-cache libssl1.1
# Tue, 10 Jan 2023 01:32:52 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Tue, 10 Jan 2023 01:33:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Tue, 10 Jan 2023 01:33:02 GMT
VOLUME [/spiped]
# Tue, 10 Jan 2023 01:33:03 GMT
WORKDIR /spiped
# Tue, 10 Jan 2023 01:33:03 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 10 Jan 2023 01:33:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jan 2023 01:33:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ae982806674c51a962c0fdd6e19f464ebd673df529c5cfb7c1d049e0b618d384`  
		Last Modified: Mon, 09 Jan 2023 17:06:50 GMT  
		Size: 3.2 MB (3170744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f659d5259c21b4ce33d18c83c0251b9d66d58281847f63904bed75a5683b3fde`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9decaf35186276ee535aac72c69938baded768609a2bb148ca4d5c0a1788a984`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 1.2 MB (1221175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93194a8cc16c2fcd24da284630284cd3fbf877fc323c8dc65e3d256d777ac04a`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 208.6 KB (208637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02decf839b354e56295448b1f40e50f813a1879598a091e766908a8f70b21671`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2035a6bfb730bee20ac317d153b1061a4002ce6a450bb74f34bebcfa04369`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6`

```console
$ docker pull spiped@sha256:7910c0ce72d85cde6324b988a033a7cd79b9eb248f5186e6e3a3545264ed78d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 8
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; mips64le
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1.6` - linux; amd64

```console
$ docker pull spiped@sha256:5f7c84096c5cb013399c7fc2be4d269161b137e38aad13b843c071ee96779f5e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37397591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a4acc1e1aa6506173e05a0986ff73a78eb6883fd765e813e745f33480a7745`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:31:50 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 17:31:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:31:53 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 17:32:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 17:32:15 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 17:32:15 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 17:32:15 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 17:32:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 17:32:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cadb39b3d3f841c36bbb2e4bc8c14f183b2b6b36f6ac9534cae5b73460ca633`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b4d359bfe9d52edcd07f673d44f8efe3dfe07cb8d3b53618bf6ddeafc012c1`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3495b954805258d02555affedd383c98a32a6d089c349cfd7f580a228605cd6f`  
		Last Modified: Wed, 11 Jan 2023 17:32:30 GMT  
		Size: 6.0 MB (5997362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f172acb16791bbbc0d12d544bfed6a8fe36fea1259eed837341ed9ffc505f38e`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b690febe8312390709c218d2a5bd687e7abc3997f0aaa86c4ef4ad0b26882076`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:cf547735c8b23a3ae531fb0381261215d6ec3fc6b428c4cc6d33c039fe070165
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33929914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b51b40d7fad17a76382fd3499a0d2476bb24a4960b16a65a83d18fed961f42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 01:55:36 GMT
ADD file:f279d5ada9c5980d920c7b9ff126ce11ec9499a532ea3bfd8b717de3348c8439 in / 
# Wed, 11 Jan 2023 01:55:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 10:43:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 10:43:48 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 10:43:48 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 10:44:13 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 10:44:14 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 10:44:14 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 10:44:14 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 10:44:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 10:44:14 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:77f56a6f12b7a55a95e6f2c8beadc0eb0243b5881f73f45d09c343f2a8926d62`  
		Last Modified: Wed, 11 Jan 2023 02:00:42 GMT  
		Size: 28.9 MB (28898675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d034277dbf667f19a19064ac6715c96a8a7d7ca958cd569be0f428c75ab3e210`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73aea52e7d7e59957b517d8034731289c6ee9d7ce46ba114c8081f05d085950`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 1.0 KB (1024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb331032b8dbf2bd5293b41b37e87b06e471d33617ea855be27a467ac9a7a08`  
		Last Modified: Wed, 11 Jan 2023 10:44:44 GMT  
		Size: 5.0 MB (5028051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421a2232c4821e7030cb395d7157562e2ef2cf68a7f95c98c28999f28b98346c`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bf2eb22760d40cfd19f7cf8fb78e94024a6faa8ccfcaa09f4fa736db4afce2`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:7fb1486f3c29b4ff91cd313c9107e4087a4b2d70cc6833e49ce6e0104200ca83
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31310925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef9d431b237cabb5b0aef50ab7d4ddcfc2c51336134a1d968c939f219c3e2c49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:36 GMT
ADD file:3fb94bfd628f3ebd91db74501bd297a817977cc066664f0fa342442b3352e0be in / 
# Wed, 11 Jan 2023 04:00:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 19:19:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 19:19:46 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 19:19:46 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 19:20:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 19:20:04 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 19:20:04 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 19:20:04 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 19:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 19:20:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:330ad28688ae3fa5f3b241fef3efd076299bec9874e0597b1c16dcf8a165a53d`  
		Last Modified: Wed, 11 Jan 2023 04:07:49 GMT  
		Size: 26.6 MB (26559488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61eab8cb53ee82c55cb3e24a11458745c74ce235eaeb8faa73b069b84b4dd77f`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 1.7 KB (1728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f21422eab433d43cde455ac13d9a0f800693fc54e0546ba386aaf1a7abd2f`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 1.0 KB (1024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ceb37abde13bb72a2423c28d2fa29d634698061f4c1d9fdfe50265f9ce2a78`  
		Last Modified: Wed, 11 Jan 2023 19:20:41 GMT  
		Size: 4.7 MB (4748250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2363e3d2a921f03c619de48d66b043e1f555bafc38052942ca03665d4b9ff8`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8922da43d378422485dda960ab0f318e7fa2e821e76c98fd036e3a4bbc64a`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:9435b3c015c2755a18cd56edc1c9ff40ea5c36bb5bf3511007a923b7138966aa
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35319798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807d11e782a906785452cdcfc648a0619a9092e9488e5ed7b98698d50d754a76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 14:42:09 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 14:42:12 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 14:42:12 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 14:42:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 14:42:27 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 14:42:27 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 14:42:27 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 14:42:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 14:42:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d955d4cac49229dd7220e50e2de8474299157e4926c29a5e72ada7083da56ef8`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3ae6ce4c127487bfc7be3547bd165c9f9d74884a799a4f66ede6b282e76f6a`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b6d5555006d65c6c79c855be09eb0be90a8b44df2adba0919f46b3b9db739c`  
		Last Modified: Wed, 11 Jan 2023 14:42:45 GMT  
		Size: 5.3 MB (5271727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24af0abf1ee8e2d3c93970143d957c1cf405a1fbc42f1a85a21f1285c0c660b`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692eae5875de6570da40ebb69d45c8ca736600c614dfb6bfa94cf545c1c6acf2`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:724c7f626780b3132b667edf7be9a649c52aa648d2ae8ebd6ffc6ef5d8e11290
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40268386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590ad2a4b77726d604744abedab3c03723e599af6c75bbdc975824fd8c21c815`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 03:16:08 GMT
ADD file:68afc7c49a947a9fb253ffeba9950cdc39e241f8a5cf0133043cfc612447f597 in / 
# Wed, 11 Jan 2023 03:16:08 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 11:50:59 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 11:51:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 11:51:04 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 11:51:25 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 11:51:26 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 11:51:27 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 11:51:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 11:51:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 11:51:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:165165b78fad597abd0883f40adcaa0edcfe981a358deea181323680a07b7011`  
		Last Modified: Wed, 11 Jan 2023 03:22:01 GMT  
		Size: 32.4 MB (32375738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f4269aee82c40d92ee5ce1a336967a4505b66bfcd7a515639a6d196a36b8d4`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 1.6 KB (1610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f844eca0e63b3bdc34f231b6fab7d759782db378c194041de2e801bcf84a92be`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f584470e3c267d6e4f2e7b03daa4d586accedadce0eb0c3e62678c4d0491e20`  
		Last Modified: Wed, 11 Jan 2023 11:51:59 GMT  
		Size: 7.9 MB (7889675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9ef91d586d83c7d6198d0c43034c6396979d7a6bd9602a748aadf6870533b5`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72a8b4e7869f2fabac800ff33f856a98b31d7bdf868ae8e3754c978662221e3`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; mips64le

```console
$ docker pull spiped@sha256:b730466434599fad0c0b7f45842928f46d35b73a8aeaface9fb6ec3b163a8942
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35327855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7df08512320dac74f33c923af82d12788d3060be6c84905071a5ffafaaecb15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 16:34:24 GMT
ADD file:295faaf493f6a8d3e2a3eecb28c8f5ac765a1281656221d0a3ab482312a5ee28 in / 
# Wed, 11 Jan 2023 16:34:29 GMT
CMD ["bash"]
# Thu, 12 Jan 2023 02:33:54 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 12 Jan 2023 02:34:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 02:34:11 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Thu, 12 Jan 2023 02:35:46 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Jan 2023 02:35:49 GMT
VOLUME [/spiped]
# Thu, 12 Jan 2023 02:35:52 GMT
WORKDIR /spiped
# Thu, 12 Jan 2023 02:35:54 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 12 Jan 2023 02:35:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 02:35:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9d653aeb7081a0b221d1160bd67b030696ca49b7ca91912bf298835f8f75ac7b`  
		Last Modified: Wed, 11 Jan 2023 16:43:17 GMT  
		Size: 29.6 MB (29619870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abe6f03d096edad9cefbcccc088c938e23a7055d4351e8cfeb37aa5787fb436`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 1.6 KB (1623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867f896ed2d956a527e2710b5814c6c336e0ced9a98209fcd3432f2dd10b6b67`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d27e290b4bfbefbe11ef090278d14200ce78aae72f617a0c45b72196694ec6`  
		Last Modified: Thu, 12 Jan 2023 02:36:28 GMT  
		Size: 5.7 MB (5705001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95502918743e976e174ed1430de13433c908c65971251adc0941ed528de608f3`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ec717daf1fdf53be4cb1236d04557051ce2dbbf0239b4bbe63b835eb3dd9af`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:f7d6ef40013311dad5d5386fa45460ab3284e3bb4a859b91bc59c445866f481d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41270894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495bc0b80da2ebceb0973bfa8e629cec07bf3d984af0e05c2a8707c42acc6548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 03:49:30 GMT
ADD file:3c7553fb5eda606d574ff6c08bc2213f9e6a68910043fe3087e4c1a04b65a18e in / 
# Wed, 11 Jan 2023 03:49:32 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 15:34:09 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 15:34:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 15:34:16 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 15:34:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 15:34:57 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 15:34:58 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 15:34:59 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 15:34:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 15:34:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bbf81328aca90b7ddb122fc175443f5323674a9e51bbb00d5b1d683ef0b858f4`  
		Last Modified: Wed, 11 Jan 2023 03:55:33 GMT  
		Size: 35.3 MB (35268773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bcd16538282602c2d705f8905e74c80c2731d39b79dd25fbed760b4dad39`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f1d384aa9991b4ed4cbad9c72aaf6f18a5b04b25a3aaf60951d9f1598c0a2`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8631e244b1f01f6af19e4913866a6277bdf8cb258d84a4d8f983b62947105e`  
		Last Modified: Wed, 11 Jan 2023 15:35:32 GMT  
		Size: 6.0 MB (5998863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9023d4284e3f11b010206e4fd016fdc1d50100f65120912c764b4afff7d071`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fb4cd5aed7ef5727a98007e15d68a3a5a3407776701feea36597c8ef1e9c59`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:8f6da226164a56f7e180877cdd08b998d7d64c659afe5b73babb1b887f2d6760
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34819928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accd920e67112f784b6a0d5b9de16c493b5b123e95f865721a3a7d5dd269f441`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 02:22:23 GMT
ADD file:14f332233d8fa1ca519992e52aaf550bcee52d346c375e94ee73d36864933f8e in / 
# Wed, 11 Jan 2023 02:22:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 09:18:49 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 09:18:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 09:18:52 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 09:19:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 09:19:05 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 09:19:05 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 09:19:05 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 09:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 09:19:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5895b3b9300287ac4aca79440c1c4979b6d4fad1ceb06fba32443d012c83cc37`  
		Last Modified: Wed, 11 Jan 2023 02:26:52 GMT  
		Size: 29.6 MB (29629731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b1a152e2882e2def36f7bfdc5d2b1e6b57ffc1f184154d47a0ddd95266636`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ff426d08c69140da3a2b8958e70c6d4ee2667b6297deb86b1026c11b58589d`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28403f8526d37d09a3f0e0ec9d9f9b90675eded0afcf318255b6a941975b416b`  
		Last Modified: Wed, 11 Jan 2023 09:19:36 GMT  
		Size: 5.2 MB (5186932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0ce4985a9e6f7cab06381abdebb833fd2a5c416fc1915c913a89eb0758db8`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242aae2919d38fd7e7e8f1afb7807ffa87db19c299a7a6910b00752290890b29`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:e8982ce4c33ed5c5fdf992ccf6c890b82d7806e41d8778ea6777610d0e4e4719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 7
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1.6-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:8eb40fb8e554b827563f599dd3e61da57293486cae87cd856a891b4e8dba353e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5075384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dda802d4535ce910f8e00126e80c79abb0825f3bf7caf66a4bb950cb589cc74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:03:04 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 20:03:05 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 20:03:05 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 20:03:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 20:03:16 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 20:03:16 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 20:03:16 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 20:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:03:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9fb896348696d642ef5674956097b03540bea28f8454d6287f5d9cb10b5b19`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1fb67340ae0e377cfa3a1ee1218a1ba6d31cf9f7cb2a302542d4354c848991`  
		Last Modified: Mon, 09 Jan 2023 20:03:33 GMT  
		Size: 1.5 MB (1481738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e228854dc2c8d78fdfe84ed1b99903b8567e21eff2fcf86757e6fdfa823872a`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 221.3 KB (221283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f486af83d26d338661f9edfe85a3574704c4d8e4a08cdea692294588749dde0`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35820a44b4998d9547534e80870c2e2a59cad7f381a4d6a82609d3f67126045d`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:cb751a21eae14bec751c4cd688311f6eafc98d6d1769aa245711e63d7182e21a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4554176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341ba40bb3f41e998727f9c4967f67b001703e78dafe41ad92a70bf2791fca9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:52:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 20:52:16 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 20:52:16 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 20:52:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 20:52:25 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 20:52:25 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 20:52:25 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 20:52:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:52:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9fcf4fe7db4264a8e664de4d52478f1d4ba98146c38a7672ed85c122a2ec9ea`  
		Last Modified: Mon, 09 Jan 2023 20:52:44 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252aa0c5aa375a984c376376752105d7908cccb2ad2078305d2f12c857e58688`  
		Last Modified: Mon, 09 Jan 2023 20:52:45 GMT  
		Size: 1.2 MB (1238925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bcc6c04b36698f2894107a3dcd168ebf74dcadfaada1feb7c909e6d7d2e48c`  
		Last Modified: Mon, 09 Jan 2023 20:52:45 GMT  
		Size: 206.3 KB (206330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2b1d7fdda8e63c8009adec27201adf5aef01cb0be8ae5e126525f70f6ff253`  
		Last Modified: Mon, 09 Jan 2023 20:52:44 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cc764eff90255e712b5e4a850166371f439ffce5e23ec5a3902aeca546fce4`  
		Last Modified: Mon, 09 Jan 2023 20:52:44 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:5350876a3890b8b4c1a7262c4c48345b4046feb2b93df0f849b165f6d3862d43
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4233507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a136cbdcf03b9c140acc83ef95bd48dcdb73507ee82d16eed4339281865ff3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Tue, 10 Jan 2023 01:03:19 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 10 Jan 2023 01:03:20 GMT
RUN apk add --no-cache libssl1.1
# Tue, 10 Jan 2023 01:03:21 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Tue, 10 Jan 2023 01:03:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Tue, 10 Jan 2023 01:03:29 GMT
VOLUME [/spiped]
# Tue, 10 Jan 2023 01:03:29 GMT
WORKDIR /spiped
# Tue, 10 Jan 2023 01:03:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 10 Jan 2023 01:03:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jan 2023 01:03:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c30dc917313d61894ccb7cfad12c5f3a278e251ca506df448c9f8e2a16ba910`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4704616a59a25f4e6a3979312202c02302fb7db16765696efeaf0136d5d871`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 1.2 MB (1166534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d943eecb9e0495c260d5786a0e7109c2f3f4c07c93eed00e71667a8fd3cd0a7`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 200.1 KB (200087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30309affe27d04051a0e8f9d361029624d0957f51f95f351a76921b3d10aa00e`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cb5d940651ed07d3a8a9b5d7bb45557f66f56eb842f0db2c34496a0b49b3be`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:0213ccc252b274961ca65d4810e3e3adbfd0a45802938a1fc17b5260a5766747
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4838993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f334562e83a3560fd096b7555b628adde3f65f35e7d7f88d92cef036aa3b80e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:54:38 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 21:54:40 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 21:54:40 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 21:54:48 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 21:54:48 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 21:54:48 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 21:54:48 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 21:54:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 21:54:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a57c503886d17fc3a18ad5ac652d01a19c1d114d10d95fbbb6962eb5141a3c`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7deb227b2dbf5691407192d6e6164c40a313d06c2d63a713bcec3bfb588a82f1`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 1.4 MB (1362327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136d1ea11d30612c79aa77675c78fb75feede08c3a75327ad85af71c6acc55cc`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 215.7 KB (215692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c3012f3cfaea50c1e653e77ff8a01ac59681255c473f52fc3d3087f2ec06f1`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ff7343264af5878ae4a177e19ca1bc3ef5ed246ba09fa1c3c6e4e80c2c09b2`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:d8a38312632b028320e1705047e9f772afc0badca532e45181c287df1ef83910
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5125102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8462fd88246d8334a88562d226243c2b45ed34c1f68d1e222efac09016792383`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:00 GMT
ADD file:d03619a0ef81726c34189e849b80cc92da908eb36e116f28275d5765e6d0919a in / 
# Mon, 09 Jan 2023 17:05:00 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 19:07:22 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 19:07:24 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 19:07:25 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 19:07:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 19:07:37 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 19:07:38 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 19:07:40 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 19:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 19:07:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:40e5b0b2e2bde18974628cadecd8a2f190f45f06c32846c16885d69b2908bf68`  
		Last Modified: Mon, 09 Jan 2023 17:05:42 GMT  
		Size: 3.4 MB (3408318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb4d578ecfd8ec0e5b44d6f231ae75cd33c39c4d21f5b01b80e80019344904e`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5141406d2cea5667b65a83cfc84fe7c8eef2aa49d6c549ec8acb7e97c32f89`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 1.5 MB (1483729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac653492946b43047544c01ac378096ae6c6d8856996b5de736547a2fafaf68`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 231.4 KB (231382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e2203d634caaf6243a81ca591d7aa9c925d62488c2290d0d6c57a46eeac8f8`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ad0075ba728f545bdda81f2b8cc4d645b41f8ab2dac39cebca27927c444b2`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:6287dba41a56cf9c39be27c62b7a3bde3479b303d63e9230b446113020881fa9
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5017699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef59306a962c0b86d594be1281ca3dd3e91c0b16a046ee09218d60231e3a9cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:13 GMT
ADD file:9a1d27fdc0c915f387f2446c85193d5215b18020b313114f0bf2799efcc1baae in / 
# Mon, 09 Jan 2023 17:05:13 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:32:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 21:32:16 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 21:32:16 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 21:32:30 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 21:32:31 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 21:32:31 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 21:32:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 21:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 21:32:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f45bfda3aa14e255d9eb4c9a108eb3d8c6721946b4aa2e5808e5092242344a1c`  
		Last Modified: Mon, 09 Jan 2023 17:05:56 GMT  
		Size: 3.4 MB (3384562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd46f789ced0eaea980007a2e6a0f6b02b7711749489fdc0a30de08d248c3325`  
		Last Modified: Mon, 09 Jan 2023 21:33:00 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc9ef36d078710c0c6d69a2d1c19bc6701be12e5c554ec9fa1546fe495e59eb`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 1.4 MB (1411372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8744b0f13a67b1002a7a426a2b3635f0b4a28fd095ef061c0f1fd5d85d909`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 220.0 KB (220028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc209dab70185705e5eee1e1710197c9bc735498e476d6719c4b850ae44fdaa`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe41dcc405bef6ddd7bb480eadf45d92a9cfd583bee884d68eb41037c93e1e23`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:5a87be0c5f3e288adf33abd9c67087730cd729e12ac28ae4b107955683edff20
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4602294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63961a94a731d4f9e0005f5fd83043126c5546496fa856ea125a5c2e51c6979c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:44 GMT
ADD file:eabe7c3c368e65478b53ac35c1daf3b703f2bca4ecdab2d080a65e8b981d7d4a in / 
# Mon, 09 Jan 2023 17:05:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Jan 2023 01:32:49 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 10 Jan 2023 01:32:52 GMT
RUN apk add --no-cache libssl1.1
# Tue, 10 Jan 2023 01:32:52 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Tue, 10 Jan 2023 01:33:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Tue, 10 Jan 2023 01:33:02 GMT
VOLUME [/spiped]
# Tue, 10 Jan 2023 01:33:03 GMT
WORKDIR /spiped
# Tue, 10 Jan 2023 01:33:03 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 10 Jan 2023 01:33:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jan 2023 01:33:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ae982806674c51a962c0fdd6e19f464ebd673df529c5cfb7c1d049e0b618d384`  
		Last Modified: Mon, 09 Jan 2023 17:06:50 GMT  
		Size: 3.2 MB (3170744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f659d5259c21b4ce33d18c83c0251b9d66d58281847f63904bed75a5683b3fde`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9decaf35186276ee535aac72c69938baded768609a2bb148ca4d5c0a1788a984`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 1.2 MB (1221175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93194a8cc16c2fcd24da284630284cd3fbf877fc323c8dc65e3d256d777ac04a`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 208.6 KB (208637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02decf839b354e56295448b1f40e50f813a1879598a091e766908a8f70b21671`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2035a6bfb730bee20ac317d153b1061a4002ce6a450bb74f34bebcfa04369`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.2`

```console
$ docker pull spiped@sha256:7910c0ce72d85cde6324b988a033a7cd79b9eb248f5186e6e3a3545264ed78d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 8
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; mips64le
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1.6.2` - linux; amd64

```console
$ docker pull spiped@sha256:5f7c84096c5cb013399c7fc2be4d269161b137e38aad13b843c071ee96779f5e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37397591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a4acc1e1aa6506173e05a0986ff73a78eb6883fd765e813e745f33480a7745`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:31:50 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 17:31:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:31:53 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 17:32:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 17:32:15 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 17:32:15 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 17:32:15 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 17:32:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 17:32:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cadb39b3d3f841c36bbb2e4bc8c14f183b2b6b36f6ac9534cae5b73460ca633`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b4d359bfe9d52edcd07f673d44f8efe3dfe07cb8d3b53618bf6ddeafc012c1`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3495b954805258d02555affedd383c98a32a6d089c349cfd7f580a228605cd6f`  
		Last Modified: Wed, 11 Jan 2023 17:32:30 GMT  
		Size: 6.0 MB (5997362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f172acb16791bbbc0d12d544bfed6a8fe36fea1259eed837341ed9ffc505f38e`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b690febe8312390709c218d2a5bd687e7abc3997f0aaa86c4ef4ad0b26882076`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.2` - linux; arm variant v5

```console
$ docker pull spiped@sha256:cf547735c8b23a3ae531fb0381261215d6ec3fc6b428c4cc6d33c039fe070165
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33929914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b51b40d7fad17a76382fd3499a0d2476bb24a4960b16a65a83d18fed961f42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 01:55:36 GMT
ADD file:f279d5ada9c5980d920c7b9ff126ce11ec9499a532ea3bfd8b717de3348c8439 in / 
# Wed, 11 Jan 2023 01:55:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 10:43:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 10:43:48 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 10:43:48 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 10:44:13 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 10:44:14 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 10:44:14 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 10:44:14 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 10:44:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 10:44:14 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:77f56a6f12b7a55a95e6f2c8beadc0eb0243b5881f73f45d09c343f2a8926d62`  
		Last Modified: Wed, 11 Jan 2023 02:00:42 GMT  
		Size: 28.9 MB (28898675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d034277dbf667f19a19064ac6715c96a8a7d7ca958cd569be0f428c75ab3e210`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73aea52e7d7e59957b517d8034731289c6ee9d7ce46ba114c8081f05d085950`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 1.0 KB (1024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb331032b8dbf2bd5293b41b37e87b06e471d33617ea855be27a467ac9a7a08`  
		Last Modified: Wed, 11 Jan 2023 10:44:44 GMT  
		Size: 5.0 MB (5028051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421a2232c4821e7030cb395d7157562e2ef2cf68a7f95c98c28999f28b98346c`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bf2eb22760d40cfd19f7cf8fb78e94024a6faa8ccfcaa09f4fa736db4afce2`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.2` - linux; arm variant v7

```console
$ docker pull spiped@sha256:7fb1486f3c29b4ff91cd313c9107e4087a4b2d70cc6833e49ce6e0104200ca83
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31310925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef9d431b237cabb5b0aef50ab7d4ddcfc2c51336134a1d968c939f219c3e2c49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:36 GMT
ADD file:3fb94bfd628f3ebd91db74501bd297a817977cc066664f0fa342442b3352e0be in / 
# Wed, 11 Jan 2023 04:00:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 19:19:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 19:19:46 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 19:19:46 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 19:20:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 19:20:04 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 19:20:04 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 19:20:04 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 19:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 19:20:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:330ad28688ae3fa5f3b241fef3efd076299bec9874e0597b1c16dcf8a165a53d`  
		Last Modified: Wed, 11 Jan 2023 04:07:49 GMT  
		Size: 26.6 MB (26559488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61eab8cb53ee82c55cb3e24a11458745c74ce235eaeb8faa73b069b84b4dd77f`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 1.7 KB (1728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f21422eab433d43cde455ac13d9a0f800693fc54e0546ba386aaf1a7abd2f`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 1.0 KB (1024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ceb37abde13bb72a2423c28d2fa29d634698061f4c1d9fdfe50265f9ce2a78`  
		Last Modified: Wed, 11 Jan 2023 19:20:41 GMT  
		Size: 4.7 MB (4748250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2363e3d2a921f03c619de48d66b043e1f555bafc38052942ca03665d4b9ff8`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8922da43d378422485dda960ab0f318e7fa2e821e76c98fd036e3a4bbc64a`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.2` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:9435b3c015c2755a18cd56edc1c9ff40ea5c36bb5bf3511007a923b7138966aa
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35319798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807d11e782a906785452cdcfc648a0619a9092e9488e5ed7b98698d50d754a76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 14:42:09 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 14:42:12 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 14:42:12 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 14:42:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 14:42:27 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 14:42:27 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 14:42:27 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 14:42:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 14:42:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d955d4cac49229dd7220e50e2de8474299157e4926c29a5e72ada7083da56ef8`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3ae6ce4c127487bfc7be3547bd165c9f9d74884a799a4f66ede6b282e76f6a`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b6d5555006d65c6c79c855be09eb0be90a8b44df2adba0919f46b3b9db739c`  
		Last Modified: Wed, 11 Jan 2023 14:42:45 GMT  
		Size: 5.3 MB (5271727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24af0abf1ee8e2d3c93970143d957c1cf405a1fbc42f1a85a21f1285c0c660b`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692eae5875de6570da40ebb69d45c8ca736600c614dfb6bfa94cf545c1c6acf2`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.2` - linux; 386

```console
$ docker pull spiped@sha256:724c7f626780b3132b667edf7be9a649c52aa648d2ae8ebd6ffc6ef5d8e11290
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40268386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590ad2a4b77726d604744abedab3c03723e599af6c75bbdc975824fd8c21c815`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 03:16:08 GMT
ADD file:68afc7c49a947a9fb253ffeba9950cdc39e241f8a5cf0133043cfc612447f597 in / 
# Wed, 11 Jan 2023 03:16:08 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 11:50:59 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 11:51:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 11:51:04 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 11:51:25 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 11:51:26 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 11:51:27 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 11:51:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 11:51:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 11:51:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:165165b78fad597abd0883f40adcaa0edcfe981a358deea181323680a07b7011`  
		Last Modified: Wed, 11 Jan 2023 03:22:01 GMT  
		Size: 32.4 MB (32375738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f4269aee82c40d92ee5ce1a336967a4505b66bfcd7a515639a6d196a36b8d4`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 1.6 KB (1610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f844eca0e63b3bdc34f231b6fab7d759782db378c194041de2e801bcf84a92be`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f584470e3c267d6e4f2e7b03daa4d586accedadce0eb0c3e62678c4d0491e20`  
		Last Modified: Wed, 11 Jan 2023 11:51:59 GMT  
		Size: 7.9 MB (7889675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9ef91d586d83c7d6198d0c43034c6396979d7a6bd9602a748aadf6870533b5`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72a8b4e7869f2fabac800ff33f856a98b31d7bdf868ae8e3754c978662221e3`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.2` - linux; mips64le

```console
$ docker pull spiped@sha256:b730466434599fad0c0b7f45842928f46d35b73a8aeaface9fb6ec3b163a8942
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35327855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7df08512320dac74f33c923af82d12788d3060be6c84905071a5ffafaaecb15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 16:34:24 GMT
ADD file:295faaf493f6a8d3e2a3eecb28c8f5ac765a1281656221d0a3ab482312a5ee28 in / 
# Wed, 11 Jan 2023 16:34:29 GMT
CMD ["bash"]
# Thu, 12 Jan 2023 02:33:54 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 12 Jan 2023 02:34:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 02:34:11 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Thu, 12 Jan 2023 02:35:46 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Jan 2023 02:35:49 GMT
VOLUME [/spiped]
# Thu, 12 Jan 2023 02:35:52 GMT
WORKDIR /spiped
# Thu, 12 Jan 2023 02:35:54 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 12 Jan 2023 02:35:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 02:35:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9d653aeb7081a0b221d1160bd67b030696ca49b7ca91912bf298835f8f75ac7b`  
		Last Modified: Wed, 11 Jan 2023 16:43:17 GMT  
		Size: 29.6 MB (29619870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abe6f03d096edad9cefbcccc088c938e23a7055d4351e8cfeb37aa5787fb436`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 1.6 KB (1623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867f896ed2d956a527e2710b5814c6c336e0ced9a98209fcd3432f2dd10b6b67`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d27e290b4bfbefbe11ef090278d14200ce78aae72f617a0c45b72196694ec6`  
		Last Modified: Thu, 12 Jan 2023 02:36:28 GMT  
		Size: 5.7 MB (5705001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95502918743e976e174ed1430de13433c908c65971251adc0941ed528de608f3`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ec717daf1fdf53be4cb1236d04557051ce2dbbf0239b4bbe63b835eb3dd9af`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.2` - linux; ppc64le

```console
$ docker pull spiped@sha256:f7d6ef40013311dad5d5386fa45460ab3284e3bb4a859b91bc59c445866f481d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41270894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495bc0b80da2ebceb0973bfa8e629cec07bf3d984af0e05c2a8707c42acc6548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 03:49:30 GMT
ADD file:3c7553fb5eda606d574ff6c08bc2213f9e6a68910043fe3087e4c1a04b65a18e in / 
# Wed, 11 Jan 2023 03:49:32 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 15:34:09 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 15:34:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 15:34:16 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 15:34:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 15:34:57 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 15:34:58 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 15:34:59 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 15:34:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 15:34:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bbf81328aca90b7ddb122fc175443f5323674a9e51bbb00d5b1d683ef0b858f4`  
		Last Modified: Wed, 11 Jan 2023 03:55:33 GMT  
		Size: 35.3 MB (35268773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bcd16538282602c2d705f8905e74c80c2731d39b79dd25fbed760b4dad39`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f1d384aa9991b4ed4cbad9c72aaf6f18a5b04b25a3aaf60951d9f1598c0a2`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8631e244b1f01f6af19e4913866a6277bdf8cb258d84a4d8f983b62947105e`  
		Last Modified: Wed, 11 Jan 2023 15:35:32 GMT  
		Size: 6.0 MB (5998863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9023d4284e3f11b010206e4fd016fdc1d50100f65120912c764b4afff7d071`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fb4cd5aed7ef5727a98007e15d68a3a5a3407776701feea36597c8ef1e9c59`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.2` - linux; s390x

```console
$ docker pull spiped@sha256:8f6da226164a56f7e180877cdd08b998d7d64c659afe5b73babb1b887f2d6760
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34819928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accd920e67112f784b6a0d5b9de16c493b5b123e95f865721a3a7d5dd269f441`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 02:22:23 GMT
ADD file:14f332233d8fa1ca519992e52aaf550bcee52d346c375e94ee73d36864933f8e in / 
# Wed, 11 Jan 2023 02:22:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 09:18:49 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 09:18:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 09:18:52 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 09:19:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 09:19:05 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 09:19:05 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 09:19:05 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 09:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 09:19:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5895b3b9300287ac4aca79440c1c4979b6d4fad1ceb06fba32443d012c83cc37`  
		Last Modified: Wed, 11 Jan 2023 02:26:52 GMT  
		Size: 29.6 MB (29629731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b1a152e2882e2def36f7bfdc5d2b1e6b57ffc1f184154d47a0ddd95266636`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ff426d08c69140da3a2b8958e70c6d4ee2667b6297deb86b1026c11b58589d`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28403f8526d37d09a3f0e0ec9d9f9b90675eded0afcf318255b6a941975b416b`  
		Last Modified: Wed, 11 Jan 2023 09:19:36 GMT  
		Size: 5.2 MB (5186932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0ce4985a9e6f7cab06381abdebb833fd2a5c416fc1915c913a89eb0758db8`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242aae2919d38fd7e7e8f1afb7807ffa87db19c299a7a6910b00752290890b29`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:1.6.2-alpine`

```console
$ docker pull spiped@sha256:e8982ce4c33ed5c5fdf992ccf6c890b82d7806e41d8778ea6777610d0e4e4719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 7
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1.6.2-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:8eb40fb8e554b827563f599dd3e61da57293486cae87cd856a891b4e8dba353e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5075384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dda802d4535ce910f8e00126e80c79abb0825f3bf7caf66a4bb950cb589cc74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:03:04 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 20:03:05 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 20:03:05 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 20:03:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 20:03:16 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 20:03:16 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 20:03:16 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 20:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:03:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9fb896348696d642ef5674956097b03540bea28f8454d6287f5d9cb10b5b19`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1fb67340ae0e377cfa3a1ee1218a1ba6d31cf9f7cb2a302542d4354c848991`  
		Last Modified: Mon, 09 Jan 2023 20:03:33 GMT  
		Size: 1.5 MB (1481738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e228854dc2c8d78fdfe84ed1b99903b8567e21eff2fcf86757e6fdfa823872a`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 221.3 KB (221283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f486af83d26d338661f9edfe85a3574704c4d8e4a08cdea692294588749dde0`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35820a44b4998d9547534e80870c2e2a59cad7f381a4d6a82609d3f67126045d`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.2-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:cb751a21eae14bec751c4cd688311f6eafc98d6d1769aa245711e63d7182e21a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4554176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341ba40bb3f41e998727f9c4967f67b001703e78dafe41ad92a70bf2791fca9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:52:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 20:52:16 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 20:52:16 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 20:52:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 20:52:25 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 20:52:25 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 20:52:25 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 20:52:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:52:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9fcf4fe7db4264a8e664de4d52478f1d4ba98146c38a7672ed85c122a2ec9ea`  
		Last Modified: Mon, 09 Jan 2023 20:52:44 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252aa0c5aa375a984c376376752105d7908cccb2ad2078305d2f12c857e58688`  
		Last Modified: Mon, 09 Jan 2023 20:52:45 GMT  
		Size: 1.2 MB (1238925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bcc6c04b36698f2894107a3dcd168ebf74dcadfaada1feb7c909e6d7d2e48c`  
		Last Modified: Mon, 09 Jan 2023 20:52:45 GMT  
		Size: 206.3 KB (206330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2b1d7fdda8e63c8009adec27201adf5aef01cb0be8ae5e126525f70f6ff253`  
		Last Modified: Mon, 09 Jan 2023 20:52:44 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cc764eff90255e712b5e4a850166371f439ffce5e23ec5a3902aeca546fce4`  
		Last Modified: Mon, 09 Jan 2023 20:52:44 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.2-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:5350876a3890b8b4c1a7262c4c48345b4046feb2b93df0f849b165f6d3862d43
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4233507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a136cbdcf03b9c140acc83ef95bd48dcdb73507ee82d16eed4339281865ff3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Tue, 10 Jan 2023 01:03:19 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 10 Jan 2023 01:03:20 GMT
RUN apk add --no-cache libssl1.1
# Tue, 10 Jan 2023 01:03:21 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Tue, 10 Jan 2023 01:03:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Tue, 10 Jan 2023 01:03:29 GMT
VOLUME [/spiped]
# Tue, 10 Jan 2023 01:03:29 GMT
WORKDIR /spiped
# Tue, 10 Jan 2023 01:03:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 10 Jan 2023 01:03:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jan 2023 01:03:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c30dc917313d61894ccb7cfad12c5f3a278e251ca506df448c9f8e2a16ba910`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4704616a59a25f4e6a3979312202c02302fb7db16765696efeaf0136d5d871`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 1.2 MB (1166534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d943eecb9e0495c260d5786a0e7109c2f3f4c07c93eed00e71667a8fd3cd0a7`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 200.1 KB (200087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30309affe27d04051a0e8f9d361029624d0957f51f95f351a76921b3d10aa00e`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cb5d940651ed07d3a8a9b5d7bb45557f66f56eb842f0db2c34496a0b49b3be`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.2-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:0213ccc252b274961ca65d4810e3e3adbfd0a45802938a1fc17b5260a5766747
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4838993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f334562e83a3560fd096b7555b628adde3f65f35e7d7f88d92cef036aa3b80e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:54:38 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 21:54:40 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 21:54:40 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 21:54:48 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 21:54:48 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 21:54:48 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 21:54:48 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 21:54:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 21:54:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a57c503886d17fc3a18ad5ac652d01a19c1d114d10d95fbbb6962eb5141a3c`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7deb227b2dbf5691407192d6e6164c40a313d06c2d63a713bcec3bfb588a82f1`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 1.4 MB (1362327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136d1ea11d30612c79aa77675c78fb75feede08c3a75327ad85af71c6acc55cc`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 215.7 KB (215692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c3012f3cfaea50c1e653e77ff8a01ac59681255c473f52fc3d3087f2ec06f1`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ff7343264af5878ae4a177e19ca1bc3ef5ed246ba09fa1c3c6e4e80c2c09b2`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.2-alpine` - linux; 386

```console
$ docker pull spiped@sha256:d8a38312632b028320e1705047e9f772afc0badca532e45181c287df1ef83910
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5125102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8462fd88246d8334a88562d226243c2b45ed34c1f68d1e222efac09016792383`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:00 GMT
ADD file:d03619a0ef81726c34189e849b80cc92da908eb36e116f28275d5765e6d0919a in / 
# Mon, 09 Jan 2023 17:05:00 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 19:07:22 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 19:07:24 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 19:07:25 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 19:07:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 19:07:37 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 19:07:38 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 19:07:40 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 19:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 19:07:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:40e5b0b2e2bde18974628cadecd8a2f190f45f06c32846c16885d69b2908bf68`  
		Last Modified: Mon, 09 Jan 2023 17:05:42 GMT  
		Size: 3.4 MB (3408318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb4d578ecfd8ec0e5b44d6f231ae75cd33c39c4d21f5b01b80e80019344904e`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5141406d2cea5667b65a83cfc84fe7c8eef2aa49d6c549ec8acb7e97c32f89`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 1.5 MB (1483729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac653492946b43047544c01ac378096ae6c6d8856996b5de736547a2fafaf68`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 231.4 KB (231382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e2203d634caaf6243a81ca591d7aa9c925d62488c2290d0d6c57a46eeac8f8`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ad0075ba728f545bdda81f2b8cc4d645b41f8ab2dac39cebca27927c444b2`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.2-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:6287dba41a56cf9c39be27c62b7a3bde3479b303d63e9230b446113020881fa9
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5017699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef59306a962c0b86d594be1281ca3dd3e91c0b16a046ee09218d60231e3a9cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:13 GMT
ADD file:9a1d27fdc0c915f387f2446c85193d5215b18020b313114f0bf2799efcc1baae in / 
# Mon, 09 Jan 2023 17:05:13 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:32:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 21:32:16 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 21:32:16 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 21:32:30 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 21:32:31 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 21:32:31 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 21:32:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 21:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 21:32:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f45bfda3aa14e255d9eb4c9a108eb3d8c6721946b4aa2e5808e5092242344a1c`  
		Last Modified: Mon, 09 Jan 2023 17:05:56 GMT  
		Size: 3.4 MB (3384562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd46f789ced0eaea980007a2e6a0f6b02b7711749489fdc0a30de08d248c3325`  
		Last Modified: Mon, 09 Jan 2023 21:33:00 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc9ef36d078710c0c6d69a2d1c19bc6701be12e5c554ec9fa1546fe495e59eb`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 1.4 MB (1411372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8744b0f13a67b1002a7a426a2b3635f0b4a28fd095ef061c0f1fd5d85d909`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 220.0 KB (220028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc209dab70185705e5eee1e1710197c9bc735498e476d6719c4b850ae44fdaa`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe41dcc405bef6ddd7bb480eadf45d92a9cfd583bee884d68eb41037c93e1e23`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1.6.2-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:5a87be0c5f3e288adf33abd9c67087730cd729e12ac28ae4b107955683edff20
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4602294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63961a94a731d4f9e0005f5fd83043126c5546496fa856ea125a5c2e51c6979c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:44 GMT
ADD file:eabe7c3c368e65478b53ac35c1daf3b703f2bca4ecdab2d080a65e8b981d7d4a in / 
# Mon, 09 Jan 2023 17:05:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Jan 2023 01:32:49 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 10 Jan 2023 01:32:52 GMT
RUN apk add --no-cache libssl1.1
# Tue, 10 Jan 2023 01:32:52 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Tue, 10 Jan 2023 01:33:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Tue, 10 Jan 2023 01:33:02 GMT
VOLUME [/spiped]
# Tue, 10 Jan 2023 01:33:03 GMT
WORKDIR /spiped
# Tue, 10 Jan 2023 01:33:03 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 10 Jan 2023 01:33:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jan 2023 01:33:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ae982806674c51a962c0fdd6e19f464ebd673df529c5cfb7c1d049e0b618d384`  
		Last Modified: Mon, 09 Jan 2023 17:06:50 GMT  
		Size: 3.2 MB (3170744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f659d5259c21b4ce33d18c83c0251b9d66d58281847f63904bed75a5683b3fde`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9decaf35186276ee535aac72c69938baded768609a2bb148ca4d5c0a1788a984`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 1.2 MB (1221175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93194a8cc16c2fcd24da284630284cd3fbf877fc323c8dc65e3d256d777ac04a`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 208.6 KB (208637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02decf839b354e56295448b1f40e50f813a1879598a091e766908a8f70b21671`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2035a6bfb730bee20ac317d153b1061a4002ce6a450bb74f34bebcfa04369`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:alpine`

```console
$ docker pull spiped@sha256:e8982ce4c33ed5c5fdf992ccf6c890b82d7806e41d8778ea6777610d0e4e4719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 7
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:8eb40fb8e554b827563f599dd3e61da57293486cae87cd856a891b4e8dba353e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5075384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dda802d4535ce910f8e00126e80c79abb0825f3bf7caf66a4bb950cb589cc74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:03:04 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 20:03:05 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 20:03:05 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 20:03:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 20:03:16 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 20:03:16 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 20:03:16 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 20:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:03:16 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9fb896348696d642ef5674956097b03540bea28f8454d6287f5d9cb10b5b19`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1fb67340ae0e377cfa3a1ee1218a1ba6d31cf9f7cb2a302542d4354c848991`  
		Last Modified: Mon, 09 Jan 2023 20:03:33 GMT  
		Size: 1.5 MB (1481738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e228854dc2c8d78fdfe84ed1b99903b8567e21eff2fcf86757e6fdfa823872a`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 221.3 KB (221283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f486af83d26d338661f9edfe85a3574704c4d8e4a08cdea692294588749dde0`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35820a44b4998d9547534e80870c2e2a59cad7f381a4d6a82609d3f67126045d`  
		Last Modified: Mon, 09 Jan 2023 20:03:32 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:cb751a21eae14bec751c4cd688311f6eafc98d6d1769aa245711e63d7182e21a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4554176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341ba40bb3f41e998727f9c4967f67b001703e78dafe41ad92a70bf2791fca9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 20:52:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 20:52:16 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 20:52:16 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 20:52:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 20:52:25 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 20:52:25 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 20:52:25 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 20:52:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 20:52:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9fcf4fe7db4264a8e664de4d52478f1d4ba98146c38a7672ed85c122a2ec9ea`  
		Last Modified: Mon, 09 Jan 2023 20:52:44 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252aa0c5aa375a984c376376752105d7908cccb2ad2078305d2f12c857e58688`  
		Last Modified: Mon, 09 Jan 2023 20:52:45 GMT  
		Size: 1.2 MB (1238925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bcc6c04b36698f2894107a3dcd168ebf74dcadfaada1feb7c909e6d7d2e48c`  
		Last Modified: Mon, 09 Jan 2023 20:52:45 GMT  
		Size: 206.3 KB (206330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2b1d7fdda8e63c8009adec27201adf5aef01cb0be8ae5e126525f70f6ff253`  
		Last Modified: Mon, 09 Jan 2023 20:52:44 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cc764eff90255e712b5e4a850166371f439ffce5e23ec5a3902aeca546fce4`  
		Last Modified: Mon, 09 Jan 2023 20:52:44 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:5350876a3890b8b4c1a7262c4c48345b4046feb2b93df0f849b165f6d3862d43
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4233507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a136cbdcf03b9c140acc83ef95bd48dcdb73507ee82d16eed4339281865ff3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Tue, 10 Jan 2023 01:03:19 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 10 Jan 2023 01:03:20 GMT
RUN apk add --no-cache libssl1.1
# Tue, 10 Jan 2023 01:03:21 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Tue, 10 Jan 2023 01:03:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Tue, 10 Jan 2023 01:03:29 GMT
VOLUME [/spiped]
# Tue, 10 Jan 2023 01:03:29 GMT
WORKDIR /spiped
# Tue, 10 Jan 2023 01:03:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 10 Jan 2023 01:03:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jan 2023 01:03:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c30dc917313d61894ccb7cfad12c5f3a278e251ca506df448c9f8e2a16ba910`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4704616a59a25f4e6a3979312202c02302fb7db16765696efeaf0136d5d871`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 1.2 MB (1166534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d943eecb9e0495c260d5786a0e7109c2f3f4c07c93eed00e71667a8fd3cd0a7`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 200.1 KB (200087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30309affe27d04051a0e8f9d361029624d0957f51f95f351a76921b3d10aa00e`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cb5d940651ed07d3a8a9b5d7bb45557f66f56eb842f0db2c34496a0b49b3be`  
		Last Modified: Tue, 10 Jan 2023 01:04:01 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:0213ccc252b274961ca65d4810e3e3adbfd0a45802938a1fc17b5260a5766747
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4838993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f334562e83a3560fd096b7555b628adde3f65f35e7d7f88d92cef036aa3b80e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:54:38 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 21:54:40 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 21:54:40 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 21:54:48 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 21:54:48 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 21:54:48 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 21:54:48 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 21:54:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 21:54:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a57c503886d17fc3a18ad5ac652d01a19c1d114d10d95fbbb6962eb5141a3c`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7deb227b2dbf5691407192d6e6164c40a313d06c2d63a713bcec3bfb588a82f1`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 1.4 MB (1362327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136d1ea11d30612c79aa77675c78fb75feede08c3a75327ad85af71c6acc55cc`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 215.7 KB (215692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c3012f3cfaea50c1e653e77ff8a01ac59681255c473f52fc3d3087f2ec06f1`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ff7343264af5878ae4a177e19ca1bc3ef5ed246ba09fa1c3c6e4e80c2c09b2`  
		Last Modified: Mon, 09 Jan 2023 21:55:05 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:d8a38312632b028320e1705047e9f772afc0badca532e45181c287df1ef83910
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5125102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8462fd88246d8334a88562d226243c2b45ed34c1f68d1e222efac09016792383`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:00 GMT
ADD file:d03619a0ef81726c34189e849b80cc92da908eb36e116f28275d5765e6d0919a in / 
# Mon, 09 Jan 2023 17:05:00 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 19:07:22 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 19:07:24 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 19:07:25 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 19:07:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 19:07:37 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 19:07:38 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 19:07:40 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 19:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 19:07:41 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:40e5b0b2e2bde18974628cadecd8a2f190f45f06c32846c16885d69b2908bf68`  
		Last Modified: Mon, 09 Jan 2023 17:05:42 GMT  
		Size: 3.4 MB (3408318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb4d578ecfd8ec0e5b44d6f231ae75cd33c39c4d21f5b01b80e80019344904e`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5141406d2cea5667b65a83cfc84fe7c8eef2aa49d6c549ec8acb7e97c32f89`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 1.5 MB (1483729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac653492946b43047544c01ac378096ae6c6d8856996b5de736547a2fafaf68`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 231.4 KB (231382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e2203d634caaf6243a81ca591d7aa9c925d62488c2290d0d6c57a46eeac8f8`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ad0075ba728f545bdda81f2b8cc4d645b41f8ab2dac39cebca27927c444b2`  
		Last Modified: Mon, 09 Jan 2023 19:08:10 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:6287dba41a56cf9c39be27c62b7a3bde3479b303d63e9230b446113020881fa9
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5017699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef59306a962c0b86d594be1281ca3dd3e91c0b16a046ee09218d60231e3a9cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:13 GMT
ADD file:9a1d27fdc0c915f387f2446c85193d5215b18020b313114f0bf2799efcc1baae in / 
# Mon, 09 Jan 2023 17:05:13 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:32:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Mon, 09 Jan 2023 21:32:16 GMT
RUN apk add --no-cache libssl1.1
# Mon, 09 Jan 2023 21:32:16 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Mon, 09 Jan 2023 21:32:30 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Mon, 09 Jan 2023 21:32:31 GMT
VOLUME [/spiped]
# Mon, 09 Jan 2023 21:32:31 GMT
WORKDIR /spiped
# Mon, 09 Jan 2023 21:32:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Mon, 09 Jan 2023 21:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 21:32:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f45bfda3aa14e255d9eb4c9a108eb3d8c6721946b4aa2e5808e5092242344a1c`  
		Last Modified: Mon, 09 Jan 2023 17:05:56 GMT  
		Size: 3.4 MB (3384562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd46f789ced0eaea980007a2e6a0f6b02b7711749489fdc0a30de08d248c3325`  
		Last Modified: Mon, 09 Jan 2023 21:33:00 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc9ef36d078710c0c6d69a2d1c19bc6701be12e5c554ec9fa1546fe495e59eb`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 1.4 MB (1411372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8744b0f13a67b1002a7a426a2b3635f0b4a28fd095ef061c0f1fd5d85d909`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 220.0 KB (220028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc209dab70185705e5eee1e1710197c9bc735498e476d6719c4b850ae44fdaa`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe41dcc405bef6ddd7bb480eadf45d92a9cfd583bee884d68eb41037c93e1e23`  
		Last Modified: Mon, 09 Jan 2023 21:32:59 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:5a87be0c5f3e288adf33abd9c67087730cd729e12ac28ae4b107955683edff20
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4602294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63961a94a731d4f9e0005f5fd83043126c5546496fa856ea125a5c2e51c6979c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:44 GMT
ADD file:eabe7c3c368e65478b53ac35c1daf3b703f2bca4ecdab2d080a65e8b981d7d4a in / 
# Mon, 09 Jan 2023 17:05:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Jan 2023 01:32:49 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 10 Jan 2023 01:32:52 GMT
RUN apk add --no-cache libssl1.1
# Tue, 10 Jan 2023 01:32:52 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Tue, 10 Jan 2023 01:33:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps
# Tue, 10 Jan 2023 01:33:02 GMT
VOLUME [/spiped]
# Tue, 10 Jan 2023 01:33:03 GMT
WORKDIR /spiped
# Tue, 10 Jan 2023 01:33:03 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 10 Jan 2023 01:33:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jan 2023 01:33:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ae982806674c51a962c0fdd6e19f464ebd673df529c5cfb7c1d049e0b618d384`  
		Last Modified: Mon, 09 Jan 2023 17:06:50 GMT  
		Size: 3.2 MB (3170744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f659d5259c21b4ce33d18c83c0251b9d66d58281847f63904bed75a5683b3fde`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9decaf35186276ee535aac72c69938baded768609a2bb148ca4d5c0a1788a984`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 1.2 MB (1221175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93194a8cc16c2fcd24da284630284cd3fbf877fc323c8dc65e3d256d777ac04a`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 208.6 KB (208637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02decf839b354e56295448b1f40e50f813a1879598a091e766908a8f70b21671`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f2035a6bfb730bee20ac317d153b1061a4002ce6a450bb74f34bebcfa04369`  
		Last Modified: Tue, 10 Jan 2023 01:33:39 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `spiped:latest`

```console
$ docker pull spiped@sha256:7910c0ce72d85cde6324b988a033a7cd79b9eb248f5186e6e3a3545264ed78d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 8
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; mips64le
	-	linux; ppc64le
	-	linux; s390x

### `spiped:latest` - linux; amd64

```console
$ docker pull spiped@sha256:5f7c84096c5cb013399c7fc2be4d269161b137e38aad13b843c071ee96779f5e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37397591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a4acc1e1aa6506173e05a0986ff73a78eb6883fd765e813e745f33480a7745`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:31:50 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 17:31:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:31:53 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 17:32:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 17:32:15 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 17:32:15 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 17:32:15 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 17:32:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 17:32:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cadb39b3d3f841c36bbb2e4bc8c14f183b2b6b36f6ac9534cae5b73460ca633`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b4d359bfe9d52edcd07f673d44f8efe3dfe07cb8d3b53618bf6ddeafc012c1`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3495b954805258d02555affedd383c98a32a6d089c349cfd7f580a228605cd6f`  
		Last Modified: Wed, 11 Jan 2023 17:32:30 GMT  
		Size: 6.0 MB (5997362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f172acb16791bbbc0d12d544bfed6a8fe36fea1259eed837341ed9ffc505f38e`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b690febe8312390709c218d2a5bd687e7abc3997f0aaa86c4ef4ad0b26882076`  
		Last Modified: Wed, 11 Jan 2023 17:32:29 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:cf547735c8b23a3ae531fb0381261215d6ec3fc6b428c4cc6d33c039fe070165
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33929914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b51b40d7fad17a76382fd3499a0d2476bb24a4960b16a65a83d18fed961f42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 01:55:36 GMT
ADD file:f279d5ada9c5980d920c7b9ff126ce11ec9499a532ea3bfd8b717de3348c8439 in / 
# Wed, 11 Jan 2023 01:55:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 10:43:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 10:43:48 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 10:43:48 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 10:44:13 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 10:44:14 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 10:44:14 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 10:44:14 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 10:44:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 10:44:14 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:77f56a6f12b7a55a95e6f2c8beadc0eb0243b5881f73f45d09c343f2a8926d62`  
		Last Modified: Wed, 11 Jan 2023 02:00:42 GMT  
		Size: 28.9 MB (28898675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d034277dbf667f19a19064ac6715c96a8a7d7ca958cd569be0f428c75ab3e210`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73aea52e7d7e59957b517d8034731289c6ee9d7ce46ba114c8081f05d085950`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 1.0 KB (1024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb331032b8dbf2bd5293b41b37e87b06e471d33617ea855be27a467ac9a7a08`  
		Last Modified: Wed, 11 Jan 2023 10:44:44 GMT  
		Size: 5.0 MB (5028051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421a2232c4821e7030cb395d7157562e2ef2cf68a7f95c98c28999f28b98346c`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bf2eb22760d40cfd19f7cf8fb78e94024a6faa8ccfcaa09f4fa736db4afce2`  
		Last Modified: Wed, 11 Jan 2023 10:44:42 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:7fb1486f3c29b4ff91cd313c9107e4087a4b2d70cc6833e49ce6e0104200ca83
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31310925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef9d431b237cabb5b0aef50ab7d4ddcfc2c51336134a1d968c939f219c3e2c49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:36 GMT
ADD file:3fb94bfd628f3ebd91db74501bd297a817977cc066664f0fa342442b3352e0be in / 
# Wed, 11 Jan 2023 04:00:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 19:19:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 19:19:46 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 19:19:46 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 19:20:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 19:20:04 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 19:20:04 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 19:20:04 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 19:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 19:20:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:330ad28688ae3fa5f3b241fef3efd076299bec9874e0597b1c16dcf8a165a53d`  
		Last Modified: Wed, 11 Jan 2023 04:07:49 GMT  
		Size: 26.6 MB (26559488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61eab8cb53ee82c55cb3e24a11458745c74ce235eaeb8faa73b069b84b4dd77f`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 1.7 KB (1728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f21422eab433d43cde455ac13d9a0f800693fc54e0546ba386aaf1a7abd2f`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 1.0 KB (1024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ceb37abde13bb72a2423c28d2fa29d634698061f4c1d9fdfe50265f9ce2a78`  
		Last Modified: Wed, 11 Jan 2023 19:20:41 GMT  
		Size: 4.7 MB (4748250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2363e3d2a921f03c619de48d66b043e1f555bafc38052942ca03665d4b9ff8`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8922da43d378422485dda960ab0f318e7fa2e821e76c98fd036e3a4bbc64a`  
		Last Modified: Wed, 11 Jan 2023 19:20:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:9435b3c015c2755a18cd56edc1c9ff40ea5c36bb5bf3511007a923b7138966aa
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35319798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807d11e782a906785452cdcfc648a0619a9092e9488e5ed7b98698d50d754a76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 14:42:09 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 14:42:12 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 14:42:12 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 14:42:27 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 14:42:27 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 14:42:27 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 14:42:27 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 14:42:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 14:42:28 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d955d4cac49229dd7220e50e2de8474299157e4926c29a5e72ada7083da56ef8`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3ae6ce4c127487bfc7be3547bd165c9f9d74884a799a4f66ede6b282e76f6a`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b6d5555006d65c6c79c855be09eb0be90a8b44df2adba0919f46b3b9db739c`  
		Last Modified: Wed, 11 Jan 2023 14:42:45 GMT  
		Size: 5.3 MB (5271727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24af0abf1ee8e2d3c93970143d957c1cf405a1fbc42f1a85a21f1285c0c660b`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692eae5875de6570da40ebb69d45c8ca736600c614dfb6bfa94cf545c1c6acf2`  
		Last Modified: Wed, 11 Jan 2023 14:42:44 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:724c7f626780b3132b667edf7be9a649c52aa648d2ae8ebd6ffc6ef5d8e11290
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40268386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590ad2a4b77726d604744abedab3c03723e599af6c75bbdc975824fd8c21c815`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 03:16:08 GMT
ADD file:68afc7c49a947a9fb253ffeba9950cdc39e241f8a5cf0133043cfc612447f597 in / 
# Wed, 11 Jan 2023 03:16:08 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 11:50:59 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 11:51:03 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 11:51:04 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 11:51:25 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 11:51:26 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 11:51:27 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 11:51:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 11:51:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 11:51:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:165165b78fad597abd0883f40adcaa0edcfe981a358deea181323680a07b7011`  
		Last Modified: Wed, 11 Jan 2023 03:22:01 GMT  
		Size: 32.4 MB (32375738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f4269aee82c40d92ee5ce1a336967a4505b66bfcd7a515639a6d196a36b8d4`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 1.6 KB (1610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f844eca0e63b3bdc34f231b6fab7d759782db378c194041de2e801bcf84a92be`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f584470e3c267d6e4f2e7b03daa4d586accedadce0eb0c3e62678c4d0491e20`  
		Last Modified: Wed, 11 Jan 2023 11:51:59 GMT  
		Size: 7.9 MB (7889675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9ef91d586d83c7d6198d0c43034c6396979d7a6bd9602a748aadf6870533b5`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72a8b4e7869f2fabac800ff33f856a98b31d7bdf868ae8e3754c978662221e3`  
		Last Modified: Wed, 11 Jan 2023 11:51:58 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; mips64le

```console
$ docker pull spiped@sha256:b730466434599fad0c0b7f45842928f46d35b73a8aeaface9fb6ec3b163a8942
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35327855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7df08512320dac74f33c923af82d12788d3060be6c84905071a5ffafaaecb15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 16:34:24 GMT
ADD file:295faaf493f6a8d3e2a3eecb28c8f5ac765a1281656221d0a3ab482312a5ee28 in / 
# Wed, 11 Jan 2023 16:34:29 GMT
CMD ["bash"]
# Thu, 12 Jan 2023 02:33:54 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Thu, 12 Jan 2023 02:34:08 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 02:34:11 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Thu, 12 Jan 2023 02:35:46 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Jan 2023 02:35:49 GMT
VOLUME [/spiped]
# Thu, 12 Jan 2023 02:35:52 GMT
WORKDIR /spiped
# Thu, 12 Jan 2023 02:35:54 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Thu, 12 Jan 2023 02:35:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Jan 2023 02:35:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9d653aeb7081a0b221d1160bd67b030696ca49b7ca91912bf298835f8f75ac7b`  
		Last Modified: Wed, 11 Jan 2023 16:43:17 GMT  
		Size: 29.6 MB (29619870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abe6f03d096edad9cefbcccc088c938e23a7055d4351e8cfeb37aa5787fb436`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 1.6 KB (1623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867f896ed2d956a527e2710b5814c6c336e0ced9a98209fcd3432f2dd10b6b67`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d27e290b4bfbefbe11ef090278d14200ce78aae72f617a0c45b72196694ec6`  
		Last Modified: Thu, 12 Jan 2023 02:36:28 GMT  
		Size: 5.7 MB (5705001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95502918743e976e174ed1430de13433c908c65971251adc0941ed528de608f3`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ec717daf1fdf53be4cb1236d04557051ce2dbbf0239b4bbe63b835eb3dd9af`  
		Last Modified: Thu, 12 Jan 2023 02:36:22 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:f7d6ef40013311dad5d5386fa45460ab3284e3bb4a859b91bc59c445866f481d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41270894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495bc0b80da2ebceb0973bfa8e629cec07bf3d984af0e05c2a8707c42acc6548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 03:49:30 GMT
ADD file:3c7553fb5eda606d574ff6c08bc2213f9e6a68910043fe3087e4c1a04b65a18e in / 
# Wed, 11 Jan 2023 03:49:32 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 15:34:09 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 15:34:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 15:34:16 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 15:34:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 15:34:57 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 15:34:58 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 15:34:59 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 15:34:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 15:34:59 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bbf81328aca90b7ddb122fc175443f5323674a9e51bbb00d5b1d683ef0b858f4`  
		Last Modified: Wed, 11 Jan 2023 03:55:33 GMT  
		Size: 35.3 MB (35268773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bcd16538282602c2d705f8905e74c80c2731d39b79dd25fbed760b4dad39`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f1d384aa9991b4ed4cbad9c72aaf6f18a5b04b25a3aaf60951d9f1598c0a2`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8631e244b1f01f6af19e4913866a6277bdf8cb258d84a4d8f983b62947105e`  
		Last Modified: Wed, 11 Jan 2023 15:35:32 GMT  
		Size: 6.0 MB (5998863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9023d4284e3f11b010206e4fd016fdc1d50100f65120912c764b4afff7d071`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fb4cd5aed7ef5727a98007e15d68a3a5a3407776701feea36597c8ef1e9c59`  
		Last Modified: Wed, 11 Jan 2023 15:35:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:8f6da226164a56f7e180877cdd08b998d7d64c659afe5b73babb1b887f2d6760
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34819928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accd920e67112f784b6a0d5b9de16c493b5b123e95f865721a3a7d5dd269f441`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 11 Jan 2023 02:22:23 GMT
ADD file:14f332233d8fa1ca519992e52aaf550bcee52d346c375e94ee73d36864933f8e in / 
# Wed, 11 Jan 2023 02:22:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 09:18:49 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped
# Wed, 11 Jan 2023 09:18:52 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl1.1 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 09:18:52 GMT
ENV SPIPED_VERSION=1.6.2 SPIPED_DOWNLOAD_SHA256=05d4687d12d11d7f9888d43f3d80c541b7721c987038d085f71c91bb06204567
# Wed, 11 Jan 2023 09:19:04 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Jan 2023 09:19:05 GMT
VOLUME [/spiped]
# Wed, 11 Jan 2023 09:19:05 GMT
WORKDIR /spiped
# Wed, 11 Jan 2023 09:19:05 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 11 Jan 2023 09:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2023 09:19:05 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5895b3b9300287ac4aca79440c1c4979b6d4fad1ceb06fba32443d012c83cc37`  
		Last Modified: Wed, 11 Jan 2023 02:26:52 GMT  
		Size: 29.6 MB (29629731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b1a152e2882e2def36f7bfdc5d2b1e6b57ffc1f184154d47a0ddd95266636`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ff426d08c69140da3a2b8958e70c6d4ee2667b6297deb86b1026c11b58589d`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28403f8526d37d09a3f0e0ec9d9f9b90675eded0afcf318255b6a941975b416b`  
		Last Modified: Wed, 11 Jan 2023 09:19:36 GMT  
		Size: 5.2 MB (5186932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0ce4985a9e6f7cab06381abdebb833fd2a5c416fc1915c913a89eb0758db8`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242aae2919d38fd7e7e8f1afb7807ffa87db19c299a7a6910b00752290890b29`  
		Last Modified: Wed, 11 Jan 2023 09:19:35 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
