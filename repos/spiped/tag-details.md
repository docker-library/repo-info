<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `spiped`

-	[`spiped:1`](#spiped1)
-	[`spiped:1-alpine`](#spiped1-alpine)
-	[`spiped:1.6`](#spiped16)
-	[`spiped:1.6-alpine`](#spiped16-alpine)
-	[`spiped:1.6.4`](#spiped164)
-	[`spiped:1.6.4-alpine`](#spiped164-alpine)
-	[`spiped:alpine`](#spipedalpine)
-	[`spiped:latest`](#spipedlatest)

## `spiped:1`

```console
$ docker pull spiped@sha256:1300050d642fa7d8b09d36961e4220893bf3c92f393eb8d629d5cddbd7b4a729
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:1` - linux; amd64

```console
$ docker pull spiped@sha256:2b0b5e4bbbf1aa032e8ce925bfcf3a6aee0264e1a10731a468eee98da99b4014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36894194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040e7ab6fd3e18a38f5cb3b8926f046214e449b68cfa378f1a68799a285eb7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:39:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:39:45 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:40:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:40:07 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:40:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:40:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9005d7b8a85c98d80fa7ad11905e56eafc37fb21f972ebd8d544870c01b8989e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d1cec4bb48d084c2778b54a7c31b94ca31879950b3328fcc33546aacbd051e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c83859ad7bcee0ac166bbf68b6345f923aea8b11fbdbf1945be31ae6ddcc5a`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 7.0 MB (7048245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c84b7fa0e6285017e85f0bc69075eeb66a27df992a14c411eae9c8782961f48`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38dc9bbdd31f326ba110dd0fd070d8efbeeb76d7f7a99a516a40105e0217b35`  
		Last Modified: Wed, 21 Oct 2026 00:40:16 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:a0270dd64f0161d0babeb72a6d150a64ffe53da9031248120be1fcb44934dec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0c6f78e1bd162cc4b4260c083e7f3ababc32e6663ee24dbd48b7877e87900c`

```dockerfile
```

-	Layers:
	-	`sha256:7cf5691b212539b4bde2a01f7349cb0dc40738338e861f0f46ba55e60ec49d61`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea8747431ba6b0cc0d9605865c92176d7d82619eb3e2e53771f5645a0457eedf`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:9f5f292713b0832b0c9956c7c240945da21e37ed2783f1848315d6a6738adbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33800613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ab5425baad1aa3ea1d4b4268fefe690487e780a01c63e7dc62694801f07bf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:48:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:48:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:48:50 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:48:50 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:48:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1ccaca0d95837dd9ecb266d69171f09202ed51c02d51070431bf5384c129e3`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d277f16267e479df422918f37753902b6f4b4246e5464eb813bf550acd40366`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae0fa2b8cefa1edf38ed0fd91d99bbbc75a4022d0753217f641b26533bd22a9`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 5.8 MB (5790447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a61bcfc7e7340c063a300526e65d8343a1d5736550134809a0551c04279160`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad525cf396e1ac80ff1c78faa0e7204fed6020fe677d74fa71bcd9f47fd8f94`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:abcc88c0f962b987f73fa7a9fd81f9086873c8b6133ef2e4a240606666481f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a7fc7befc026414f3a613d599c9effb90cc29b1c706426979df8d79e71a4792`

```dockerfile
```

-	Layers:
	-	`sha256:3caefc5d7c116d932ccf742629b771332c6d12cb87606256b7298f95e65ba2f8`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e8a7035701977e9a3a8ef8219f6c1a96e571602065c007e1348f5956f195d18`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:fb8feba3ec3ba2670dedf856657101b9b1075f7672f20cffaa8a5b6449ef982b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31845834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b3f3bb60fd6bcee9c1802df6f3d89f3f7e1eb9fe4ced61ce2b4015d977f9c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:22:47 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 02:22:51 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:23:15 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 02:23:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 02:23:15 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 02:23:15 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 02:23:15 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:23:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:23:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72001d964e3bf3d19adaa2234c30cae492af831f11b8e2060d84032246c67e5`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872315cbf1f2333cd2df2e8438509dcf5c99f3561a8f6bbfb2a9bfdf9203fdfb`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc030b8edb1fe0e86083e98fc9d2652ef1263029f46055d1c55a2e59b777527`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 5.6 MB (5585289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5965948a38e35fcaec4b3a4454578bb2647b87d7f6973974c7017c601ae67056`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea295161430d71dd7599c70363a484d20425233574d7c16a5649413acace837b`  
		Last Modified: Tue, 06 Oct 2026 02:23:23 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:bacc1fe31882c084913fff73782a2d740f8accefd0f735fcf23226d599ceb3a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638cdbae026f8de98498be5fab35807a49767ef45434fd4618c475b2bbb6ed6b`

```dockerfile
```

-	Layers:
	-	`sha256:520c1151f87cbccd7acb246bcbcd74b42776a0572aa802339fe2855aa4e2bba6`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77c44fc3456be218cb76410dc986ce3c25485eb075c5d9c691d0ed5ba6350721`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:12245f5222f84ffca8fcc7ce71198ba455478a01df78cbbccb0e58b3730820d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36437154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c13e62828a4bf6a736b0f7ef6012b6c1a57c4538001f3e1d8fea805a4022562`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:43:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:43:44 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:43:44 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:43:44 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:43:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d38208d1419ec9c68bf1dcc238d5f9aa0ac178ee37c35ff5e3aae673229f2e`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd0d52133433321d2e0affba10706491ad7655d223f487433e0ee3d37a2ebad`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef0a846b3a0eca93801db7a27afd654197f16fd8b2469be216fa7979f3e4748`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 6.2 MB (6234310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e300f1d22c7d55589ff7bd5890d18c0a19e1b9fd4dcdedc7aad72b17c7b6d7`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869a2cd3443758399cd5fc8c8edf9d175c972577e766f5f93171c5ae58b21632`  
		Last Modified: Wed, 21 Oct 2026 00:43:52 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:a7e41a6a153ea25f5d4c104693fc53696b1da6dfea8d1f091dcc5eb15cab541e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5143c8aedca974ce9f3bd71c4bb9abe092e406589d261aad6b57532c57d604b`

```dockerfile
```

-	Layers:
	-	`sha256:abd12bb44a02a8cd263b9384e5865fe543a15e54f0ea971b40010d6b97fd33e4`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:274f2f4b3b3ef204b980f0b6f50d143a1026ee0fe358f2ca3a855ef01153132f`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:abf4c6759e90c7ba2b47585a99bde699f321e5c068bc3f3693255f42626e0f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37799671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d869af9571f789752e6aec7c01644bfe316181721395d3ab78c03079b434dd1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:45:11 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 01:45:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 01:45:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:45:40 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 01:45:40 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 01:45:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:45:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:45:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c98e9a91b46514b40c8d34e8687a5427953e8637136668495b4972c8b2015b`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fa89ec175ee3ad92996a119939a01308e65f45e0cb5d1ac0aba784c0d613f4`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a5f9684592dea0e134de934cfdd743fbdf940371294bfaa86dc4e25e6e8544`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 6.4 MB (6444004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b8d49144124c32d585f450331ba6fbd4b303ddda8df6e1d87615f191fbcc6e`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d46923975eca2dcd7e590db19aaa1e01814e66d1d9105c4155cda553d1e704`  
		Last Modified: Tue, 06 Oct 2026 01:45:48 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:cc3484c08378518ab1f95691b6f28dba2a1ef49a5f5a95bd9ab6c571b52b6ebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32c2709571a9a196e241351677a046387fd0989c77d3b3728e975f084cd2c6d0`

```dockerfile
```

-	Layers:
	-	`sha256:733b616b6ac0c79f9031ed4f6500ccb8f035cc3c11d9a9b33dc48eb3159eeabc`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1b9dc4f03d1d365ad83b7135a6db6b78c1306ca6269b1562924da4286c38f01`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:6285dbeb9e9e56ec14b326f282fcd69448330af174e396d8293f6b95a9a2f1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40495408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7a04b81505eb72b277242676972ee0dfcffe41576b418418252e7f59633830`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:37:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 04:37:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:38:21 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 04:38:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 04:38:21 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 04:38:22 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 04:38:23 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:38:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5cf54a5c7aa181a8d5d1490581b662aa3ca7325d4102b25303d13fc9da0995`  
		Last Modified: Tue, 06 Oct 2026 04:38:38 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850e14fc1eb888adfeefd280f15ad52a21db30476eb04764fa44d45b0aa85eb0`  
		Last Modified: Tue, 06 Oct 2026 04:38:38 GMT  
		Size: 825.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7035968d5a7734909b5f94fbe8fa3783cb6e9bcc50b00d4bbd6e41b033d70a56`  
		Last Modified: Tue, 06 Oct 2026 04:38:39 GMT  
		Size: 6.8 MB (6841446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3956aba75a5084a4e9e3fedb4bd9dd809ae4143a9462880723b40cd1e59357`  
		Last Modified: Tue, 06 Oct 2026 04:38:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a571dc5d258c904864dcb26965e33a8863ca06e23e6e7ba7eab7cf3eb6962e12`  
		Last Modified: Tue, 06 Oct 2026 04:38:40 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:369b22ea28be622274d0db53bc88604c4eea194987b31f0dc02c738ad7fe7dbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07d859d571e895d5ebbeb8576d1fda388cd51bbbe9a61db17c0ef5d83229add`

```dockerfile
```

-	Layers:
	-	`sha256:c7cc0227d986ee8fecab20bbdcfd25fbdd9fadc3af73fa57cb32012acc822b63`  
		Last Modified: Tue, 06 Oct 2026 04:38:39 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:689a131ee024ddddd87e42c14248391aa23e9bed4402325f227511ca4e45a742`  
		Last Modified: Tue, 06 Oct 2026 04:38:38 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; riscv64

```console
$ docker pull spiped@sha256:21cb950cb81426fe9f23fc354e4ef3a14a1c38c6d9cf6e540a85f82f0b6eea5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37691356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9243fdf46726a9b8301142c34cdf0bf754e6b9f3ac4d4e3ab1d1d3c81f76a730`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 19:59:04 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 07 Oct 2026 19:59:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:02:50 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 07 Oct 2026 20:02:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 07 Oct 2026 20:02:50 GMT
VOLUME [/spiped]
# Wed, 07 Oct 2026 20:02:50 GMT
WORKDIR /spiped
# Wed, 07 Oct 2026 20:02:50 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 20:02:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 20:02:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a0479892116bcb39ecb09c5bf728e3a603344b592047a393de2be976bc8c57`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ee8636fb3ee0b1ac07dc8431b92b465805283bcb988a4a51870a1310d3b637`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 821.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ace0b91e8323bf81bac385a21d16f8b0a5dbf9ce19d56cbf0e60aac09921a8`  
		Last Modified: Wed, 07 Oct 2026 20:04:07 GMT  
		Size: 9.4 MB (9355230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54198b48bb29c96b87314bc30489495ab0a34af7a91a1a3f238f61b0922bcfc1`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b6a2d66c9cde3129b309c278a982926a277572f4bcd193ca1d81dc47c9820c`  
		Last Modified: Wed, 07 Oct 2026 20:04:07 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:96d5f82e6afa7b15bd44853ebef202206e3863f11a5339029a5d9326b7eed12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3f6dba9f42d925adc7ef9dd583b6074480e3cc689df23f1ec1dc4584824251`

```dockerfile
```

-	Layers:
	-	`sha256:eff755b39d112622041e01745165a233530ba7b722d93b9d7e82bc4f43e983e1`  
		Last Modified: Wed, 07 Oct 2026 20:04:06 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70f352d0caefa7d92371b47e441ef36dc03bb5bcf84e6e253ebc3bba4ff802cf`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:31d368936c8d99f172d56af7b792f9646308547ed92943e13f78745b556d7528
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36034813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e256e535960fff21420adce4e42e25f2d556376dcefa88e4847e12f113ec63c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:56:21 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 01:56:24 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:56:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 01:56:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:56:40 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 01:56:40 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 01:56:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:56:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:56:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626ef3887b70a0665e92b148d48d3af8ea824167805c55e2fbb75677d7f196fe`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa9a1adb6e5e8ab1386eaf67166d868d9ab59c4e629a4f3dee36271578293e8`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0791af375e2f25b2efdcdf2b1dae33800651e3e2c77e16dd5409bac9d71a23e3`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 6.1 MB (6123198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a548d83008dff367965f87c7ef68dae4e1bd5942fb05f397b339ad00431868c`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b38a178727493a5f9100e08dc62cb099cd5a9a0f02726c7267eb77a36071c8a`  
		Last Modified: Tue, 06 Oct 2026 01:56:51 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:32987f2062d3c78dbf75e82b154ce936c76be80eec1a2dd811f95049e5cf670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788018e93519ce30ab74cccf2ea3debb9b9b52d0595bfb77f5ead911981d4029`

```dockerfile
```

-	Layers:
	-	`sha256:b7e62e02482a02d4d6699c496bb732dceb882a3ce3a3f87ff48f10869a2523cd`  
		Last Modified: Tue, 06 Oct 2026 01:56:51 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f78dd34dfc6d748c1861dd38b4f76d85dbf8b3a1b4c04e346736fe1b17b29a9`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:ee7216f4f42225acfba6d06adc078f2ef382a890f89fc8460ce272027638d586
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:32018b3e5f9aa16d567079956ded7b697deab16c080bb5033a193030901dce63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3970817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dee21ed63a4ccfc419dbd4bdb3b43f32e87a41c95b54e474844b6d909f1bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:32:59 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:00 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:09 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3375156b03fed670d677505a6c8e76c9eb2e814fe2179d37720fd8f793dafdb8`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40023eaab1894410e5a75896b431d155095446b89f46f20559f5c18634cab22e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed98c075753f25ed44b64a5ca7c94258cf1d026ef9bd0bfb28dc22026afeddf0`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 110.9 KB (110881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5db5222d6b07f2d57bc193145fb83f88dc09a83a1a011700e9f171118f3dd4a`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1941991931eaca78d33b05d4fd166d8959b9713e2c7a63f0e87a00159d08db5b`  
		Last Modified: Thu, 17 Sep 2026 21:33:14 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:2c4988dc9ef5071d17253785f25f435616db44fab4e2782d5888d26a86f97ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c242cf3344a774c53ea0bf4f391422063add8068356f1643c0f853f77853c9`

```dockerfile
```

-	Layers:
	-	`sha256:a376ab7d152946f2068232d582fd6a235265a8aaa5f8fdeb8a7a62f1a9496a8e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74ca732a7a91d8b0e4ae8947c640ba23060e3790167925f2826ae414f3632667`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:550ef644969afaa03dc0a1d03aecabd8025ceebfbfbe309f3522ac8593167ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3657216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7303579f54c1322e0a0c4c32eb05366fb53a71d6ae4342032a12f8c4ec697727`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:24 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:25 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:35 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f4b24b0aa2f1d3ca5dad55d17a8d7e77c5b6b87992d9a76c49d759667bde28`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98f97def63f8c3b8de000296da6c7bee54c6680126e3d0c39ffd6b022cd7d16`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abe495e65120fd524d1f337d7d816f9fa966834587effc4fc50e2abe766c6c3`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 91.9 KB (91928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44818c29aa279ea3c464618beb96a05a81d07fc538b8fb0acbb997f284862ea1`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499e4d7cbfe0a7d953ff6e928cfd3698e0b31de3a780587b50ccea10b993a4c9`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:bba3f6762b43b50f4a5419d3e064969da68641b8f3aa70328844b0f0f8e7c72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c501526bc5552c6fb00a27673794454a2c80f0d3a9d17f4ff91085fd59a623a`

```dockerfile
```

-	Layers:
	-	`sha256:f76641f331cffafb2e89db7fb4032caa841e794b9e385d67f18bcc9490eed975`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:1878bdbded6cde15bc43c44306dc3be08d415e09f436887777936b48797b06c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3360175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f448c8580efe744ca931f1414830fd3049fd214106d10bfbde18a931ff177eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:33 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:33 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:33 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c07facf6cfd94303e9bc513e01ece46f7bda8dd5a0a5b60d88e9f6ee43afbf`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcec03a202a10d687eb82fe4781644fccba2f0ac9a9d25b71d7302b6d661d85`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585131a18be4b74d57f3465525d3806090d14cfe24693ed220f42e37ab6dd00d`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 84.8 KB (84774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9019d05401c20d55eda8fd806aae86cd47af502def2d907d9e8bfbffcdec732`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4f5d1a3fe86547253de95f44f3baddc7537bb87dc2257ff8957c4c2ab909ce`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e854052b70ab432b9dff9edbdc9e9602e5f3b7a50e5595de596b70d59b519d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b54c849a1e1d208a549e53e313ff61cd42131ce67c0b80d34f379b3e9a1b951`

```dockerfile
```

-	Layers:
	-	`sha256:6ed0710b130ce5158b649cebc9b633d9a158e23ea498fa356b0c05768de025da`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae218fb2afb242766c0c687a43d9b932892411e2d5451213a959d21404ec84a`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.4 KB (14361 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:f23462df4970dfc8150e351fa0716bb39b77ac74d5a6836d2e1718caeef68458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4300371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6897625fa6be7d80285539f43a265756fa013b9c986249471bb252028cc87019`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:34:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:34:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:34:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:34:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:34:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b745289e2a1ff0c1258e983d17a6d34d56823c8db1bc76ef8ad779b87350db1f`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31322943e8f1b313f3178363bb73e44bb8922d978b3259778d0b31f29622b303`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 8.8 KB (8806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d9e272726d6605faa008f65116c7a1770b8e0fc853ed6df570a29acda82057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 102.5 KB (102524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b203f93441728043c5e6910ded4834bd093d5342f64692469ac84378da5ab3e7`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62b6425ab7bdd74d111f3fdaf063415bc5a61d8df31b6f6e79699f60d0436e5`  
		Last Modified: Thu, 17 Sep 2026 21:34:30 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:579ea739c562da38a3b58d288ab888e34ae73b6631ea43bc7ae967087b18677c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6252a92ad3ea38e2722a73a1600cb4ac8bde249288de4cae4de624cc2b305805`

```dockerfile
```

-	Layers:
	-	`sha256:2aa54062bae232c24ff4b8a1146ddf91476d3f800ce2b74783b5a526dcb79057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bee0c6173f41139d30bea24d365c46d92fde662e4dd158560b2aee07a75442d`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:53ad5f30d023e80f8dcb16768661d70aba83a7bdb750c45e427fe96ad1ba7f61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b692dcb2d9703c2466c7a8702772c0ffd0268e4250460922977ac1779a9c6a21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:33:12 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:13 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193413df34747a06cd20c3ab4a63224c323b78a44380f0da5a44913b0a15af9f`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c57eda20c28b5846b02619a46015e9457e7b21dfac39e34b9a32dcf15b56b44`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 8.8 KB (8802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fdf6ad80ff549e977133a34f98cb60da99242891918f8ab6478e16e437d92c`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 122.7 KB (122664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b99be5ad5b5f8592e91de0846d86f314cccaffa81918c035f976c2023d4121`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0178f7cab25385f36bca2df7a845ace406e6c957755289703e6849b43c06c3`  
		Last Modified: Thu, 17 Sep 2026 21:33:30 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:840871aa9ef254a42b72d2d9dae5a6420ad1b921dc2ab49de95d0be4687c4832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5470b799ea268574836ad993ac158281cf73b26aca752c6093038944ebc490a`

```dockerfile
```

-	Layers:
	-	`sha256:f1318d1e9587fdac975f72f23fadf19b48c1e984095439b37bec8c64d635c7fd`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:891b11fc0a436cf962024c90004d29388279de4b37a5b58c22f8d2c372c3eb38`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:1a56e8cc453a864557cd3b2e8d99d5f3e74e54096b230a26fafd095e35325510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3942432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4917fc987213fc9c5b5b98c7ce26d916c90ea01f51b4e67cc9d9cd0f534ba304`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:47:11 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:47:12 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:47:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:47:34 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:47:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:47:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c369cdd4fcc9769fca66a5b2c09595d6017f84036c56ef4f59196231d33c551`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca940a72fbbe2c58ad9cd17980489823357f7da6ecc63d3ca811ea9e60617b8c`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 8.8 KB (8804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352845a3ea7878efb311cd32dbc00fafce7f48df2fe35f95ba2e3c8bb5f9ebb`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 114.8 KB (114768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34d0e6eccd7b2ca60ecbe2dd0603421fe8df1892298e51744f433d8818f19c7`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f114c5a4663178e638fc7fd9433a5ff8539a2fa24aa6d0c61390666245901659`  
		Last Modified: Thu, 17 Sep 2026 23:47:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:c4a379ab8c54425788ac23bc5b4149e0c51841b67241b666e52fd7bb5204ea7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a03cbe4ea7820a0ef57225e55b436779438ee5b548e323d096261fde573290e`

```dockerfile
```

-	Layers:
	-	`sha256:bf326f346c557505274ce5171115a1056d12cf0c4e3d818d8861e169f0850491`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:931d65645f11feecbebd20bf1dce296fefd2f9962ed8ed6f000e32b0b1200602`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:b6d60a96765dd244b0417c8d59365671590e3c770155fefcd8468bcc6ea60f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3685491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3758f8f6400271d99e7adf8b0d05da833132767bb3ec573dd03abea5c4041bdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:47:40 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 21 Sep 2026 09:47:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 21 Sep 2026 09:49:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
VOLUME [/spiped]
# Mon, 21 Sep 2026 09:49:29 GMT
WORKDIR /spiped
# Mon, 21 Sep 2026 09:49:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 09:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7a12de23a435f38ca3eee76915055d1c9f650336d5376f8d9c2cb024515fcd`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c17d2cf9247dd552269e67f5b0da20b58b6e21daf609f8e986210e3e2a52a90`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a4f904689861ee20bc3c223a28c9fdcac3f118090802ce46873906902d450a`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 99.9 KB (99924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ef085190148c8f098b4a4335852fdd8e9a5b1a0c6d2531d1901ffc61d93315`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da602b17967d07ffa9deea608181db1a8200e688ac99e042c54a98e064bed6a`  
		Last Modified: Mon, 21 Sep 2026 09:49:51 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1754278f79d2e20bc8f4d5ef6a6ac5f5c7f3f432359005889d9091ad8a4b72b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fe33d9e961853f94504281813cf6689b79b10a7891779f44c0d94472ba38c`

```dockerfile
```

-	Layers:
	-	`sha256:9f25422ff607ebd8c9a246cc6f2c46a44cfe67cf57b2bebb4b3ed6698e0388e2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b1defb5fd0d70f6a1650d694d3100f4bb4910a3b401c33fe49444cc12ce6fa2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:b87ffc508072a487175f282115f9d8cee83e925c6c797b49ecd997cde1368ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3824066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643327ce24abd9c39a0d87790ea901f570db79d641a402a77d14746b3191943f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:21:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:21:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:21:29 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:21:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:21:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c28b1ee91651edb6df5f144eebf5fb13586021df9e14be017b5209faadd460`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138eee41c328156d0408dcb3eb3876b2f7a3f582fba967ded1a9315ba5343eca`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 8.8 KB (8800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62909ea869dfb26a4f2d61f136bc15ccba2037caec4e159a8cf2eeefe4890fda`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 98.5 KB (98544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b107c74b855f479cc041063a065261eec7e2d41b6e96c2d997da9f20afef0c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb872e7ed11059e667d1a146029b775258d6f057ac354daa99fcd5768795abc1`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e0d416c33c8acdd57c049c7315124fc1babd960760a9505deba3e35b9b39d5dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f02b5508d2acd71efd8ba7e300c4f9d8a556cc3431d5ebd67a585397beaf9ea`

```dockerfile
```

-	Layers:
	-	`sha256:6cd4e6d9bc3947b13e78430e7d8977ff0b77312aa4511bccdd0d6cf26e663c54`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94722d68c100030fb7d672088b876b66031796f1220b4dbb06922d9504a4aa9c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6`

```console
$ docker pull spiped@sha256:1300050d642fa7d8b09d36961e4220893bf3c92f393eb8d629d5cddbd7b4a729
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:1.6` - linux; amd64

```console
$ docker pull spiped@sha256:2b0b5e4bbbf1aa032e8ce925bfcf3a6aee0264e1a10731a468eee98da99b4014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36894194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040e7ab6fd3e18a38f5cb3b8926f046214e449b68cfa378f1a68799a285eb7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:39:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:39:45 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:40:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:40:07 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:40:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:40:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9005d7b8a85c98d80fa7ad11905e56eafc37fb21f972ebd8d544870c01b8989e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d1cec4bb48d084c2778b54a7c31b94ca31879950b3328fcc33546aacbd051e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c83859ad7bcee0ac166bbf68b6345f923aea8b11fbdbf1945be31ae6ddcc5a`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 7.0 MB (7048245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c84b7fa0e6285017e85f0bc69075eeb66a27df992a14c411eae9c8782961f48`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38dc9bbdd31f326ba110dd0fd070d8efbeeb76d7f7a99a516a40105e0217b35`  
		Last Modified: Wed, 21 Oct 2026 00:40:16 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:a0270dd64f0161d0babeb72a6d150a64ffe53da9031248120be1fcb44934dec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0c6f78e1bd162cc4b4260c083e7f3ababc32e6663ee24dbd48b7877e87900c`

```dockerfile
```

-	Layers:
	-	`sha256:7cf5691b212539b4bde2a01f7349cb0dc40738338e861f0f46ba55e60ec49d61`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea8747431ba6b0cc0d9605865c92176d7d82619eb3e2e53771f5645a0457eedf`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:9f5f292713b0832b0c9956c7c240945da21e37ed2783f1848315d6a6738adbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33800613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ab5425baad1aa3ea1d4b4268fefe690487e780a01c63e7dc62694801f07bf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:48:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:48:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:48:50 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:48:50 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:48:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1ccaca0d95837dd9ecb266d69171f09202ed51c02d51070431bf5384c129e3`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d277f16267e479df422918f37753902b6f4b4246e5464eb813bf550acd40366`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae0fa2b8cefa1edf38ed0fd91d99bbbc75a4022d0753217f641b26533bd22a9`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 5.8 MB (5790447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a61bcfc7e7340c063a300526e65d8343a1d5736550134809a0551c04279160`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad525cf396e1ac80ff1c78faa0e7204fed6020fe677d74fa71bcd9f47fd8f94`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:abcc88c0f962b987f73fa7a9fd81f9086873c8b6133ef2e4a240606666481f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a7fc7befc026414f3a613d599c9effb90cc29b1c706426979df8d79e71a4792`

```dockerfile
```

-	Layers:
	-	`sha256:3caefc5d7c116d932ccf742629b771332c6d12cb87606256b7298f95e65ba2f8`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e8a7035701977e9a3a8ef8219f6c1a96e571602065c007e1348f5956f195d18`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:fb8feba3ec3ba2670dedf856657101b9b1075f7672f20cffaa8a5b6449ef982b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31845834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b3f3bb60fd6bcee9c1802df6f3d89f3f7e1eb9fe4ced61ce2b4015d977f9c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:22:47 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 02:22:51 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:23:15 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 02:23:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 02:23:15 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 02:23:15 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 02:23:15 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:23:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:23:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72001d964e3bf3d19adaa2234c30cae492af831f11b8e2060d84032246c67e5`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872315cbf1f2333cd2df2e8438509dcf5c99f3561a8f6bbfb2a9bfdf9203fdfb`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc030b8edb1fe0e86083e98fc9d2652ef1263029f46055d1c55a2e59b777527`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 5.6 MB (5585289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5965948a38e35fcaec4b3a4454578bb2647b87d7f6973974c7017c601ae67056`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea295161430d71dd7599c70363a484d20425233574d7c16a5649413acace837b`  
		Last Modified: Tue, 06 Oct 2026 02:23:23 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:bacc1fe31882c084913fff73782a2d740f8accefd0f735fcf23226d599ceb3a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638cdbae026f8de98498be5fab35807a49767ef45434fd4618c475b2bbb6ed6b`

```dockerfile
```

-	Layers:
	-	`sha256:520c1151f87cbccd7acb246bcbcd74b42776a0572aa802339fe2855aa4e2bba6`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77c44fc3456be218cb76410dc986ce3c25485eb075c5d9c691d0ed5ba6350721`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:12245f5222f84ffca8fcc7ce71198ba455478a01df78cbbccb0e58b3730820d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36437154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c13e62828a4bf6a736b0f7ef6012b6c1a57c4538001f3e1d8fea805a4022562`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:43:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:43:44 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:43:44 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:43:44 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:43:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d38208d1419ec9c68bf1dcc238d5f9aa0ac178ee37c35ff5e3aae673229f2e`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd0d52133433321d2e0affba10706491ad7655d223f487433e0ee3d37a2ebad`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef0a846b3a0eca93801db7a27afd654197f16fd8b2469be216fa7979f3e4748`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 6.2 MB (6234310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e300f1d22c7d55589ff7bd5890d18c0a19e1b9fd4dcdedc7aad72b17c7b6d7`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869a2cd3443758399cd5fc8c8edf9d175c972577e766f5f93171c5ae58b21632`  
		Last Modified: Wed, 21 Oct 2026 00:43:52 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:a7e41a6a153ea25f5d4c104693fc53696b1da6dfea8d1f091dcc5eb15cab541e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5143c8aedca974ce9f3bd71c4bb9abe092e406589d261aad6b57532c57d604b`

```dockerfile
```

-	Layers:
	-	`sha256:abd12bb44a02a8cd263b9384e5865fe543a15e54f0ea971b40010d6b97fd33e4`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:274f2f4b3b3ef204b980f0b6f50d143a1026ee0fe358f2ca3a855ef01153132f`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:abf4c6759e90c7ba2b47585a99bde699f321e5c068bc3f3693255f42626e0f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37799671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d869af9571f789752e6aec7c01644bfe316181721395d3ab78c03079b434dd1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:45:11 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 01:45:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 01:45:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:45:40 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 01:45:40 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 01:45:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:45:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:45:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c98e9a91b46514b40c8d34e8687a5427953e8637136668495b4972c8b2015b`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fa89ec175ee3ad92996a119939a01308e65f45e0cb5d1ac0aba784c0d613f4`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a5f9684592dea0e134de934cfdd743fbdf940371294bfaa86dc4e25e6e8544`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 6.4 MB (6444004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b8d49144124c32d585f450331ba6fbd4b303ddda8df6e1d87615f191fbcc6e`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d46923975eca2dcd7e590db19aaa1e01814e66d1d9105c4155cda553d1e704`  
		Last Modified: Tue, 06 Oct 2026 01:45:48 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:cc3484c08378518ab1f95691b6f28dba2a1ef49a5f5a95bd9ab6c571b52b6ebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32c2709571a9a196e241351677a046387fd0989c77d3b3728e975f084cd2c6d0`

```dockerfile
```

-	Layers:
	-	`sha256:733b616b6ac0c79f9031ed4f6500ccb8f035cc3c11d9a9b33dc48eb3159eeabc`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1b9dc4f03d1d365ad83b7135a6db6b78c1306ca6269b1562924da4286c38f01`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:6285dbeb9e9e56ec14b326f282fcd69448330af174e396d8293f6b95a9a2f1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40495408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7a04b81505eb72b277242676972ee0dfcffe41576b418418252e7f59633830`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:37:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 04:37:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:38:21 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 04:38:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 04:38:21 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 04:38:22 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 04:38:23 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:38:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5cf54a5c7aa181a8d5d1490581b662aa3ca7325d4102b25303d13fc9da0995`  
		Last Modified: Tue, 06 Oct 2026 04:38:38 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850e14fc1eb888adfeefd280f15ad52a21db30476eb04764fa44d45b0aa85eb0`  
		Last Modified: Tue, 06 Oct 2026 04:38:38 GMT  
		Size: 825.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7035968d5a7734909b5f94fbe8fa3783cb6e9bcc50b00d4bbd6e41b033d70a56`  
		Last Modified: Tue, 06 Oct 2026 04:38:39 GMT  
		Size: 6.8 MB (6841446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3956aba75a5084a4e9e3fedb4bd9dd809ae4143a9462880723b40cd1e59357`  
		Last Modified: Tue, 06 Oct 2026 04:38:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a571dc5d258c904864dcb26965e33a8863ca06e23e6e7ba7eab7cf3eb6962e12`  
		Last Modified: Tue, 06 Oct 2026 04:38:40 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:369b22ea28be622274d0db53bc88604c4eea194987b31f0dc02c738ad7fe7dbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07d859d571e895d5ebbeb8576d1fda388cd51bbbe9a61db17c0ef5d83229add`

```dockerfile
```

-	Layers:
	-	`sha256:c7cc0227d986ee8fecab20bbdcfd25fbdd9fadc3af73fa57cb32012acc822b63`  
		Last Modified: Tue, 06 Oct 2026 04:38:39 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:689a131ee024ddddd87e42c14248391aa23e9bed4402325f227511ca4e45a742`  
		Last Modified: Tue, 06 Oct 2026 04:38:38 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; riscv64

```console
$ docker pull spiped@sha256:21cb950cb81426fe9f23fc354e4ef3a14a1c38c6d9cf6e540a85f82f0b6eea5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37691356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9243fdf46726a9b8301142c34cdf0bf754e6b9f3ac4d4e3ab1d1d3c81f76a730`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 19:59:04 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 07 Oct 2026 19:59:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:02:50 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 07 Oct 2026 20:02:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 07 Oct 2026 20:02:50 GMT
VOLUME [/spiped]
# Wed, 07 Oct 2026 20:02:50 GMT
WORKDIR /spiped
# Wed, 07 Oct 2026 20:02:50 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 20:02:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 20:02:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a0479892116bcb39ecb09c5bf728e3a603344b592047a393de2be976bc8c57`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ee8636fb3ee0b1ac07dc8431b92b465805283bcb988a4a51870a1310d3b637`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 821.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ace0b91e8323bf81bac385a21d16f8b0a5dbf9ce19d56cbf0e60aac09921a8`  
		Last Modified: Wed, 07 Oct 2026 20:04:07 GMT  
		Size: 9.4 MB (9355230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54198b48bb29c96b87314bc30489495ab0a34af7a91a1a3f238f61b0922bcfc1`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b6a2d66c9cde3129b309c278a982926a277572f4bcd193ca1d81dc47c9820c`  
		Last Modified: Wed, 07 Oct 2026 20:04:07 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:96d5f82e6afa7b15bd44853ebef202206e3863f11a5339029a5d9326b7eed12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3f6dba9f42d925adc7ef9dd583b6074480e3cc689df23f1ec1dc4584824251`

```dockerfile
```

-	Layers:
	-	`sha256:eff755b39d112622041e01745165a233530ba7b722d93b9d7e82bc4f43e983e1`  
		Last Modified: Wed, 07 Oct 2026 20:04:06 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70f352d0caefa7d92371b47e441ef36dc03bb5bcf84e6e253ebc3bba4ff802cf`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:31d368936c8d99f172d56af7b792f9646308547ed92943e13f78745b556d7528
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36034813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e256e535960fff21420adce4e42e25f2d556376dcefa88e4847e12f113ec63c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:56:21 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 01:56:24 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:56:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 01:56:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:56:40 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 01:56:40 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 01:56:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:56:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:56:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626ef3887b70a0665e92b148d48d3af8ea824167805c55e2fbb75677d7f196fe`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa9a1adb6e5e8ab1386eaf67166d868d9ab59c4e629a4f3dee36271578293e8`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0791af375e2f25b2efdcdf2b1dae33800651e3e2c77e16dd5409bac9d71a23e3`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 6.1 MB (6123198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a548d83008dff367965f87c7ef68dae4e1bd5942fb05f397b339ad00431868c`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b38a178727493a5f9100e08dc62cb099cd5a9a0f02726c7267eb77a36071c8a`  
		Last Modified: Tue, 06 Oct 2026 01:56:51 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:32987f2062d3c78dbf75e82b154ce936c76be80eec1a2dd811f95049e5cf670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788018e93519ce30ab74cccf2ea3debb9b9b52d0595bfb77f5ead911981d4029`

```dockerfile
```

-	Layers:
	-	`sha256:b7e62e02482a02d4d6699c496bb732dceb882a3ce3a3f87ff48f10869a2523cd`  
		Last Modified: Tue, 06 Oct 2026 01:56:51 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f78dd34dfc6d748c1861dd38b4f76d85dbf8b3a1b4c04e346736fe1b17b29a9`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:ee7216f4f42225acfba6d06adc078f2ef382a890f89fc8460ce272027638d586
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:1.6-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:32018b3e5f9aa16d567079956ded7b697deab16c080bb5033a193030901dce63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3970817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dee21ed63a4ccfc419dbd4bdb3b43f32e87a41c95b54e474844b6d909f1bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:32:59 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:00 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:09 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3375156b03fed670d677505a6c8e76c9eb2e814fe2179d37720fd8f793dafdb8`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40023eaab1894410e5a75896b431d155095446b89f46f20559f5c18634cab22e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed98c075753f25ed44b64a5ca7c94258cf1d026ef9bd0bfb28dc22026afeddf0`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 110.9 KB (110881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5db5222d6b07f2d57bc193145fb83f88dc09a83a1a011700e9f171118f3dd4a`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1941991931eaca78d33b05d4fd166d8959b9713e2c7a63f0e87a00159d08db5b`  
		Last Modified: Thu, 17 Sep 2026 21:33:14 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:2c4988dc9ef5071d17253785f25f435616db44fab4e2782d5888d26a86f97ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c242cf3344a774c53ea0bf4f391422063add8068356f1643c0f853f77853c9`

```dockerfile
```

-	Layers:
	-	`sha256:a376ab7d152946f2068232d582fd6a235265a8aaa5f8fdeb8a7a62f1a9496a8e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74ca732a7a91d8b0e4ae8947c640ba23060e3790167925f2826ae414f3632667`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:550ef644969afaa03dc0a1d03aecabd8025ceebfbfbe309f3522ac8593167ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3657216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7303579f54c1322e0a0c4c32eb05366fb53a71d6ae4342032a12f8c4ec697727`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:24 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:25 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:35 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f4b24b0aa2f1d3ca5dad55d17a8d7e77c5b6b87992d9a76c49d759667bde28`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98f97def63f8c3b8de000296da6c7bee54c6680126e3d0c39ffd6b022cd7d16`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abe495e65120fd524d1f337d7d816f9fa966834587effc4fc50e2abe766c6c3`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 91.9 KB (91928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44818c29aa279ea3c464618beb96a05a81d07fc538b8fb0acbb997f284862ea1`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499e4d7cbfe0a7d953ff6e928cfd3698e0b31de3a780587b50ccea10b993a4c9`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:bba3f6762b43b50f4a5419d3e064969da68641b8f3aa70328844b0f0f8e7c72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c501526bc5552c6fb00a27673794454a2c80f0d3a9d17f4ff91085fd59a623a`

```dockerfile
```

-	Layers:
	-	`sha256:f76641f331cffafb2e89db7fb4032caa841e794b9e385d67f18bcc9490eed975`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:1878bdbded6cde15bc43c44306dc3be08d415e09f436887777936b48797b06c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3360175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f448c8580efe744ca931f1414830fd3049fd214106d10bfbde18a931ff177eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:33 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:33 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:33 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c07facf6cfd94303e9bc513e01ece46f7bda8dd5a0a5b60d88e9f6ee43afbf`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcec03a202a10d687eb82fe4781644fccba2f0ac9a9d25b71d7302b6d661d85`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585131a18be4b74d57f3465525d3806090d14cfe24693ed220f42e37ab6dd00d`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 84.8 KB (84774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9019d05401c20d55eda8fd806aae86cd47af502def2d907d9e8bfbffcdec732`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4f5d1a3fe86547253de95f44f3baddc7537bb87dc2257ff8957c4c2ab909ce`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e854052b70ab432b9dff9edbdc9e9602e5f3b7a50e5595de596b70d59b519d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b54c849a1e1d208a549e53e313ff61cd42131ce67c0b80d34f379b3e9a1b951`

```dockerfile
```

-	Layers:
	-	`sha256:6ed0710b130ce5158b649cebc9b633d9a158e23ea498fa356b0c05768de025da`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae218fb2afb242766c0c687a43d9b932892411e2d5451213a959d21404ec84a`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.4 KB (14361 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:f23462df4970dfc8150e351fa0716bb39b77ac74d5a6836d2e1718caeef68458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4300371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6897625fa6be7d80285539f43a265756fa013b9c986249471bb252028cc87019`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:34:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:34:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:34:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:34:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:34:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b745289e2a1ff0c1258e983d17a6d34d56823c8db1bc76ef8ad779b87350db1f`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31322943e8f1b313f3178363bb73e44bb8922d978b3259778d0b31f29622b303`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 8.8 KB (8806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d9e272726d6605faa008f65116c7a1770b8e0fc853ed6df570a29acda82057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 102.5 KB (102524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b203f93441728043c5e6910ded4834bd093d5342f64692469ac84378da5ab3e7`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62b6425ab7bdd74d111f3fdaf063415bc5a61d8df31b6f6e79699f60d0436e5`  
		Last Modified: Thu, 17 Sep 2026 21:34:30 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:579ea739c562da38a3b58d288ab888e34ae73b6631ea43bc7ae967087b18677c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6252a92ad3ea38e2722a73a1600cb4ac8bde249288de4cae4de624cc2b305805`

```dockerfile
```

-	Layers:
	-	`sha256:2aa54062bae232c24ff4b8a1146ddf91476d3f800ce2b74783b5a526dcb79057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bee0c6173f41139d30bea24d365c46d92fde662e4dd158560b2aee07a75442d`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:53ad5f30d023e80f8dcb16768661d70aba83a7bdb750c45e427fe96ad1ba7f61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b692dcb2d9703c2466c7a8702772c0ffd0268e4250460922977ac1779a9c6a21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:33:12 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:13 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193413df34747a06cd20c3ab4a63224c323b78a44380f0da5a44913b0a15af9f`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c57eda20c28b5846b02619a46015e9457e7b21dfac39e34b9a32dcf15b56b44`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 8.8 KB (8802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fdf6ad80ff549e977133a34f98cb60da99242891918f8ab6478e16e437d92c`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 122.7 KB (122664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b99be5ad5b5f8592e91de0846d86f314cccaffa81918c035f976c2023d4121`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0178f7cab25385f36bca2df7a845ace406e6c957755289703e6849b43c06c3`  
		Last Modified: Thu, 17 Sep 2026 21:33:30 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:840871aa9ef254a42b72d2d9dae5a6420ad1b921dc2ab49de95d0be4687c4832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5470b799ea268574836ad993ac158281cf73b26aca752c6093038944ebc490a`

```dockerfile
```

-	Layers:
	-	`sha256:f1318d1e9587fdac975f72f23fadf19b48c1e984095439b37bec8c64d635c7fd`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:891b11fc0a436cf962024c90004d29388279de4b37a5b58c22f8d2c372c3eb38`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:1a56e8cc453a864557cd3b2e8d99d5f3e74e54096b230a26fafd095e35325510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3942432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4917fc987213fc9c5b5b98c7ce26d916c90ea01f51b4e67cc9d9cd0f534ba304`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:47:11 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:47:12 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:47:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:47:34 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:47:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:47:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c369cdd4fcc9769fca66a5b2c09595d6017f84036c56ef4f59196231d33c551`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca940a72fbbe2c58ad9cd17980489823357f7da6ecc63d3ca811ea9e60617b8c`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 8.8 KB (8804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352845a3ea7878efb311cd32dbc00fafce7f48df2fe35f95ba2e3c8bb5f9ebb`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 114.8 KB (114768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34d0e6eccd7b2ca60ecbe2dd0603421fe8df1892298e51744f433d8818f19c7`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f114c5a4663178e638fc7fd9433a5ff8539a2fa24aa6d0c61390666245901659`  
		Last Modified: Thu, 17 Sep 2026 23:47:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:c4a379ab8c54425788ac23bc5b4149e0c51841b67241b666e52fd7bb5204ea7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a03cbe4ea7820a0ef57225e55b436779438ee5b548e323d096261fde573290e`

```dockerfile
```

-	Layers:
	-	`sha256:bf326f346c557505274ce5171115a1056d12cf0c4e3d818d8861e169f0850491`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:931d65645f11feecbebd20bf1dce296fefd2f9962ed8ed6f000e32b0b1200602`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:b6d60a96765dd244b0417c8d59365671590e3c770155fefcd8468bcc6ea60f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3685491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3758f8f6400271d99e7adf8b0d05da833132767bb3ec573dd03abea5c4041bdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:47:40 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 21 Sep 2026 09:47:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 21 Sep 2026 09:49:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
VOLUME [/spiped]
# Mon, 21 Sep 2026 09:49:29 GMT
WORKDIR /spiped
# Mon, 21 Sep 2026 09:49:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 09:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7a12de23a435f38ca3eee76915055d1c9f650336d5376f8d9c2cb024515fcd`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c17d2cf9247dd552269e67f5b0da20b58b6e21daf609f8e986210e3e2a52a90`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a4f904689861ee20bc3c223a28c9fdcac3f118090802ce46873906902d450a`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 99.9 KB (99924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ef085190148c8f098b4a4335852fdd8e9a5b1a0c6d2531d1901ffc61d93315`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da602b17967d07ffa9deea608181db1a8200e688ac99e042c54a98e064bed6a`  
		Last Modified: Mon, 21 Sep 2026 09:49:51 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1754278f79d2e20bc8f4d5ef6a6ac5f5c7f3f432359005889d9091ad8a4b72b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fe33d9e961853f94504281813cf6689b79b10a7891779f44c0d94472ba38c`

```dockerfile
```

-	Layers:
	-	`sha256:9f25422ff607ebd8c9a246cc6f2c46a44cfe67cf57b2bebb4b3ed6698e0388e2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b1defb5fd0d70f6a1650d694d3100f4bb4910a3b401c33fe49444cc12ce6fa2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:b87ffc508072a487175f282115f9d8cee83e925c6c797b49ecd997cde1368ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3824066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643327ce24abd9c39a0d87790ea901f570db79d641a402a77d14746b3191943f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:21:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:21:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:21:29 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:21:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:21:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c28b1ee91651edb6df5f144eebf5fb13586021df9e14be017b5209faadd460`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138eee41c328156d0408dcb3eb3876b2f7a3f582fba967ded1a9315ba5343eca`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 8.8 KB (8800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62909ea869dfb26a4f2d61f136bc15ccba2037caec4e159a8cf2eeefe4890fda`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 98.5 KB (98544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b107c74b855f479cc041063a065261eec7e2d41b6e96c2d997da9f20afef0c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb872e7ed11059e667d1a146029b775258d6f057ac354daa99fcd5768795abc1`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e0d416c33c8acdd57c049c7315124fc1babd960760a9505deba3e35b9b39d5dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f02b5508d2acd71efd8ba7e300c4f9d8a556cc3431d5ebd67a585397beaf9ea`

```dockerfile
```

-	Layers:
	-	`sha256:6cd4e6d9bc3947b13e78430e7d8977ff0b77312aa4511bccdd0d6cf26e663c54`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94722d68c100030fb7d672088b876b66031796f1220b4dbb06922d9504a4aa9c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6.4`

```console
$ docker pull spiped@sha256:1300050d642fa7d8b09d36961e4220893bf3c92f393eb8d629d5cddbd7b4a729
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:1.6.4` - linux; amd64

```console
$ docker pull spiped@sha256:2b0b5e4bbbf1aa032e8ce925bfcf3a6aee0264e1a10731a468eee98da99b4014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36894194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040e7ab6fd3e18a38f5cb3b8926f046214e449b68cfa378f1a68799a285eb7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:39:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:39:45 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:40:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:40:07 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:40:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:40:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9005d7b8a85c98d80fa7ad11905e56eafc37fb21f972ebd8d544870c01b8989e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d1cec4bb48d084c2778b54a7c31b94ca31879950b3328fcc33546aacbd051e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c83859ad7bcee0ac166bbf68b6345f923aea8b11fbdbf1945be31ae6ddcc5a`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 7.0 MB (7048245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c84b7fa0e6285017e85f0bc69075eeb66a27df992a14c411eae9c8782961f48`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38dc9bbdd31f326ba110dd0fd070d8efbeeb76d7f7a99a516a40105e0217b35`  
		Last Modified: Wed, 21 Oct 2026 00:40:16 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:a0270dd64f0161d0babeb72a6d150a64ffe53da9031248120be1fcb44934dec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0c6f78e1bd162cc4b4260c083e7f3ababc32e6663ee24dbd48b7877e87900c`

```dockerfile
```

-	Layers:
	-	`sha256:7cf5691b212539b4bde2a01f7349cb0dc40738338e861f0f46ba55e60ec49d61`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea8747431ba6b0cc0d9605865c92176d7d82619eb3e2e53771f5645a0457eedf`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v5

```console
$ docker pull spiped@sha256:9f5f292713b0832b0c9956c7c240945da21e37ed2783f1848315d6a6738adbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33800613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ab5425baad1aa3ea1d4b4268fefe690487e780a01c63e7dc62694801f07bf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:48:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:48:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:48:50 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:48:50 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:48:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1ccaca0d95837dd9ecb266d69171f09202ed51c02d51070431bf5384c129e3`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d277f16267e479df422918f37753902b6f4b4246e5464eb813bf550acd40366`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae0fa2b8cefa1edf38ed0fd91d99bbbc75a4022d0753217f641b26533bd22a9`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 5.8 MB (5790447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a61bcfc7e7340c063a300526e65d8343a1d5736550134809a0551c04279160`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad525cf396e1ac80ff1c78faa0e7204fed6020fe677d74fa71bcd9f47fd8f94`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:abcc88c0f962b987f73fa7a9fd81f9086873c8b6133ef2e4a240606666481f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a7fc7befc026414f3a613d599c9effb90cc29b1c706426979df8d79e71a4792`

```dockerfile
```

-	Layers:
	-	`sha256:3caefc5d7c116d932ccf742629b771332c6d12cb87606256b7298f95e65ba2f8`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e8a7035701977e9a3a8ef8219f6c1a96e571602065c007e1348f5956f195d18`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v7

```console
$ docker pull spiped@sha256:fb8feba3ec3ba2670dedf856657101b9b1075f7672f20cffaa8a5b6449ef982b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31845834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b3f3bb60fd6bcee9c1802df6f3d89f3f7e1eb9fe4ced61ce2b4015d977f9c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:22:47 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 02:22:51 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:23:15 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 02:23:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 02:23:15 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 02:23:15 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 02:23:15 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:23:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:23:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72001d964e3bf3d19adaa2234c30cae492af831f11b8e2060d84032246c67e5`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872315cbf1f2333cd2df2e8438509dcf5c99f3561a8f6bbfb2a9bfdf9203fdfb`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc030b8edb1fe0e86083e98fc9d2652ef1263029f46055d1c55a2e59b777527`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 5.6 MB (5585289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5965948a38e35fcaec4b3a4454578bb2647b87d7f6973974c7017c601ae67056`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea295161430d71dd7599c70363a484d20425233574d7c16a5649413acace837b`  
		Last Modified: Tue, 06 Oct 2026 02:23:23 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:bacc1fe31882c084913fff73782a2d740f8accefd0f735fcf23226d599ceb3a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638cdbae026f8de98498be5fab35807a49767ef45434fd4618c475b2bbb6ed6b`

```dockerfile
```

-	Layers:
	-	`sha256:520c1151f87cbccd7acb246bcbcd74b42776a0572aa802339fe2855aa4e2bba6`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77c44fc3456be218cb76410dc986ce3c25485eb075c5d9c691d0ed5ba6350721`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:12245f5222f84ffca8fcc7ce71198ba455478a01df78cbbccb0e58b3730820d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36437154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c13e62828a4bf6a736b0f7ef6012b6c1a57c4538001f3e1d8fea805a4022562`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:43:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:43:44 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:43:44 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:43:44 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:43:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d38208d1419ec9c68bf1dcc238d5f9aa0ac178ee37c35ff5e3aae673229f2e`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd0d52133433321d2e0affba10706491ad7655d223f487433e0ee3d37a2ebad`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef0a846b3a0eca93801db7a27afd654197f16fd8b2469be216fa7979f3e4748`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 6.2 MB (6234310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e300f1d22c7d55589ff7bd5890d18c0a19e1b9fd4dcdedc7aad72b17c7b6d7`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869a2cd3443758399cd5fc8c8edf9d175c972577e766f5f93171c5ae58b21632`  
		Last Modified: Wed, 21 Oct 2026 00:43:52 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:a7e41a6a153ea25f5d4c104693fc53696b1da6dfea8d1f091dcc5eb15cab541e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5143c8aedca974ce9f3bd71c4bb9abe092e406589d261aad6b57532c57d604b`

```dockerfile
```

-	Layers:
	-	`sha256:abd12bb44a02a8cd263b9384e5865fe543a15e54f0ea971b40010d6b97fd33e4`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:274f2f4b3b3ef204b980f0b6f50d143a1026ee0fe358f2ca3a855ef01153132f`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; 386

```console
$ docker pull spiped@sha256:abf4c6759e90c7ba2b47585a99bde699f321e5c068bc3f3693255f42626e0f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37799671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d869af9571f789752e6aec7c01644bfe316181721395d3ab78c03079b434dd1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:45:11 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 01:45:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 01:45:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:45:40 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 01:45:40 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 01:45:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:45:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:45:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c98e9a91b46514b40c8d34e8687a5427953e8637136668495b4972c8b2015b`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fa89ec175ee3ad92996a119939a01308e65f45e0cb5d1ac0aba784c0d613f4`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a5f9684592dea0e134de934cfdd743fbdf940371294bfaa86dc4e25e6e8544`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 6.4 MB (6444004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b8d49144124c32d585f450331ba6fbd4b303ddda8df6e1d87615f191fbcc6e`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d46923975eca2dcd7e590db19aaa1e01814e66d1d9105c4155cda553d1e704`  
		Last Modified: Tue, 06 Oct 2026 01:45:48 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:cc3484c08378518ab1f95691b6f28dba2a1ef49a5f5a95bd9ab6c571b52b6ebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32c2709571a9a196e241351677a046387fd0989c77d3b3728e975f084cd2c6d0`

```dockerfile
```

-	Layers:
	-	`sha256:733b616b6ac0c79f9031ed4f6500ccb8f035cc3c11d9a9b33dc48eb3159eeabc`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1b9dc4f03d1d365ad83b7135a6db6b78c1306ca6269b1562924da4286c38f01`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; ppc64le

```console
$ docker pull spiped@sha256:6285dbeb9e9e56ec14b326f282fcd69448330af174e396d8293f6b95a9a2f1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40495408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7a04b81505eb72b277242676972ee0dfcffe41576b418418252e7f59633830`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:37:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 04:37:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:38:21 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 04:38:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 04:38:21 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 04:38:22 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 04:38:23 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:38:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5cf54a5c7aa181a8d5d1490581b662aa3ca7325d4102b25303d13fc9da0995`  
		Last Modified: Tue, 06 Oct 2026 04:38:38 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850e14fc1eb888adfeefd280f15ad52a21db30476eb04764fa44d45b0aa85eb0`  
		Last Modified: Tue, 06 Oct 2026 04:38:38 GMT  
		Size: 825.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7035968d5a7734909b5f94fbe8fa3783cb6e9bcc50b00d4bbd6e41b033d70a56`  
		Last Modified: Tue, 06 Oct 2026 04:38:39 GMT  
		Size: 6.8 MB (6841446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3956aba75a5084a4e9e3fedb4bd9dd809ae4143a9462880723b40cd1e59357`  
		Last Modified: Tue, 06 Oct 2026 04:38:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a571dc5d258c904864dcb26965e33a8863ca06e23e6e7ba7eab7cf3eb6962e12`  
		Last Modified: Tue, 06 Oct 2026 04:38:40 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:369b22ea28be622274d0db53bc88604c4eea194987b31f0dc02c738ad7fe7dbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07d859d571e895d5ebbeb8576d1fda388cd51bbbe9a61db17c0ef5d83229add`

```dockerfile
```

-	Layers:
	-	`sha256:c7cc0227d986ee8fecab20bbdcfd25fbdd9fadc3af73fa57cb32012acc822b63`  
		Last Modified: Tue, 06 Oct 2026 04:38:39 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:689a131ee024ddddd87e42c14248391aa23e9bed4402325f227511ca4e45a742`  
		Last Modified: Tue, 06 Oct 2026 04:38:38 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; riscv64

```console
$ docker pull spiped@sha256:21cb950cb81426fe9f23fc354e4ef3a14a1c38c6d9cf6e540a85f82f0b6eea5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37691356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9243fdf46726a9b8301142c34cdf0bf754e6b9f3ac4d4e3ab1d1d3c81f76a730`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 19:59:04 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 07 Oct 2026 19:59:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:02:50 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 07 Oct 2026 20:02:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 07 Oct 2026 20:02:50 GMT
VOLUME [/spiped]
# Wed, 07 Oct 2026 20:02:50 GMT
WORKDIR /spiped
# Wed, 07 Oct 2026 20:02:50 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 20:02:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 20:02:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a0479892116bcb39ecb09c5bf728e3a603344b592047a393de2be976bc8c57`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ee8636fb3ee0b1ac07dc8431b92b465805283bcb988a4a51870a1310d3b637`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 821.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ace0b91e8323bf81bac385a21d16f8b0a5dbf9ce19d56cbf0e60aac09921a8`  
		Last Modified: Wed, 07 Oct 2026 20:04:07 GMT  
		Size: 9.4 MB (9355230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54198b48bb29c96b87314bc30489495ab0a34af7a91a1a3f238f61b0922bcfc1`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b6a2d66c9cde3129b309c278a982926a277572f4bcd193ca1d81dc47c9820c`  
		Last Modified: Wed, 07 Oct 2026 20:04:07 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:96d5f82e6afa7b15bd44853ebef202206e3863f11a5339029a5d9326b7eed12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3f6dba9f42d925adc7ef9dd583b6074480e3cc689df23f1ec1dc4584824251`

```dockerfile
```

-	Layers:
	-	`sha256:eff755b39d112622041e01745165a233530ba7b722d93b9d7e82bc4f43e983e1`  
		Last Modified: Wed, 07 Oct 2026 20:04:06 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70f352d0caefa7d92371b47e441ef36dc03bb5bcf84e6e253ebc3bba4ff802cf`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; s390x

```console
$ docker pull spiped@sha256:31d368936c8d99f172d56af7b792f9646308547ed92943e13f78745b556d7528
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36034813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e256e535960fff21420adce4e42e25f2d556376dcefa88e4847e12f113ec63c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:56:21 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 01:56:24 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:56:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 01:56:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:56:40 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 01:56:40 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 01:56:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:56:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:56:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626ef3887b70a0665e92b148d48d3af8ea824167805c55e2fbb75677d7f196fe`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa9a1adb6e5e8ab1386eaf67166d868d9ab59c4e629a4f3dee36271578293e8`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0791af375e2f25b2efdcdf2b1dae33800651e3e2c77e16dd5409bac9d71a23e3`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 6.1 MB (6123198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a548d83008dff367965f87c7ef68dae4e1bd5942fb05f397b339ad00431868c`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b38a178727493a5f9100e08dc62cb099cd5a9a0f02726c7267eb77a36071c8a`  
		Last Modified: Tue, 06 Oct 2026 01:56:51 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:32987f2062d3c78dbf75e82b154ce936c76be80eec1a2dd811f95049e5cf670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788018e93519ce30ab74cccf2ea3debb9b9b52d0595bfb77f5ead911981d4029`

```dockerfile
```

-	Layers:
	-	`sha256:b7e62e02482a02d4d6699c496bb732dceb882a3ce3a3f87ff48f10869a2523cd`  
		Last Modified: Tue, 06 Oct 2026 01:56:51 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f78dd34dfc6d748c1861dd38b4f76d85dbf8b3a1b4c04e346736fe1b17b29a9`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6.4-alpine`

```console
$ docker pull spiped@sha256:ee7216f4f42225acfba6d06adc078f2ef382a890f89fc8460ce272027638d586
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:1.6.4-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:32018b3e5f9aa16d567079956ded7b697deab16c080bb5033a193030901dce63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3970817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dee21ed63a4ccfc419dbd4bdb3b43f32e87a41c95b54e474844b6d909f1bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:32:59 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:00 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:09 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3375156b03fed670d677505a6c8e76c9eb2e814fe2179d37720fd8f793dafdb8`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40023eaab1894410e5a75896b431d155095446b89f46f20559f5c18634cab22e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed98c075753f25ed44b64a5ca7c94258cf1d026ef9bd0bfb28dc22026afeddf0`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 110.9 KB (110881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5db5222d6b07f2d57bc193145fb83f88dc09a83a1a011700e9f171118f3dd4a`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1941991931eaca78d33b05d4fd166d8959b9713e2c7a63f0e87a00159d08db5b`  
		Last Modified: Thu, 17 Sep 2026 21:33:14 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:2c4988dc9ef5071d17253785f25f435616db44fab4e2782d5888d26a86f97ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c242cf3344a774c53ea0bf4f391422063add8068356f1643c0f853f77853c9`

```dockerfile
```

-	Layers:
	-	`sha256:a376ab7d152946f2068232d582fd6a235265a8aaa5f8fdeb8a7a62f1a9496a8e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74ca732a7a91d8b0e4ae8947c640ba23060e3790167925f2826ae414f3632667`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:550ef644969afaa03dc0a1d03aecabd8025ceebfbfbe309f3522ac8593167ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3657216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7303579f54c1322e0a0c4c32eb05366fb53a71d6ae4342032a12f8c4ec697727`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:24 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:25 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:35 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f4b24b0aa2f1d3ca5dad55d17a8d7e77c5b6b87992d9a76c49d759667bde28`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98f97def63f8c3b8de000296da6c7bee54c6680126e3d0c39ffd6b022cd7d16`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abe495e65120fd524d1f337d7d816f9fa966834587effc4fc50e2abe766c6c3`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 91.9 KB (91928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44818c29aa279ea3c464618beb96a05a81d07fc538b8fb0acbb997f284862ea1`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499e4d7cbfe0a7d953ff6e928cfd3698e0b31de3a780587b50ccea10b993a4c9`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:bba3f6762b43b50f4a5419d3e064969da68641b8f3aa70328844b0f0f8e7c72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c501526bc5552c6fb00a27673794454a2c80f0d3a9d17f4ff91085fd59a623a`

```dockerfile
```

-	Layers:
	-	`sha256:f76641f331cffafb2e89db7fb4032caa841e794b9e385d67f18bcc9490eed975`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:1878bdbded6cde15bc43c44306dc3be08d415e09f436887777936b48797b06c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3360175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f448c8580efe744ca931f1414830fd3049fd214106d10bfbde18a931ff177eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:33 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:33 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:33 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c07facf6cfd94303e9bc513e01ece46f7bda8dd5a0a5b60d88e9f6ee43afbf`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcec03a202a10d687eb82fe4781644fccba2f0ac9a9d25b71d7302b6d661d85`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585131a18be4b74d57f3465525d3806090d14cfe24693ed220f42e37ab6dd00d`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 84.8 KB (84774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9019d05401c20d55eda8fd806aae86cd47af502def2d907d9e8bfbffcdec732`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4f5d1a3fe86547253de95f44f3baddc7537bb87dc2257ff8957c4c2ab909ce`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e854052b70ab432b9dff9edbdc9e9602e5f3b7a50e5595de596b70d59b519d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b54c849a1e1d208a549e53e313ff61cd42131ce67c0b80d34f379b3e9a1b951`

```dockerfile
```

-	Layers:
	-	`sha256:6ed0710b130ce5158b649cebc9b633d9a158e23ea498fa356b0c05768de025da`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae218fb2afb242766c0c687a43d9b932892411e2d5451213a959d21404ec84a`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.4 KB (14361 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:f23462df4970dfc8150e351fa0716bb39b77ac74d5a6836d2e1718caeef68458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4300371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6897625fa6be7d80285539f43a265756fa013b9c986249471bb252028cc87019`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:34:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:34:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:34:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:34:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:34:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b745289e2a1ff0c1258e983d17a6d34d56823c8db1bc76ef8ad779b87350db1f`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31322943e8f1b313f3178363bb73e44bb8922d978b3259778d0b31f29622b303`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 8.8 KB (8806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d9e272726d6605faa008f65116c7a1770b8e0fc853ed6df570a29acda82057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 102.5 KB (102524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b203f93441728043c5e6910ded4834bd093d5342f64692469ac84378da5ab3e7`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62b6425ab7bdd74d111f3fdaf063415bc5a61d8df31b6f6e79699f60d0436e5`  
		Last Modified: Thu, 17 Sep 2026 21:34:30 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:579ea739c562da38a3b58d288ab888e34ae73b6631ea43bc7ae967087b18677c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6252a92ad3ea38e2722a73a1600cb4ac8bde249288de4cae4de624cc2b305805`

```dockerfile
```

-	Layers:
	-	`sha256:2aa54062bae232c24ff4b8a1146ddf91476d3f800ce2b74783b5a526dcb79057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bee0c6173f41139d30bea24d365c46d92fde662e4dd158560b2aee07a75442d`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; 386

```console
$ docker pull spiped@sha256:53ad5f30d023e80f8dcb16768661d70aba83a7bdb750c45e427fe96ad1ba7f61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b692dcb2d9703c2466c7a8702772c0ffd0268e4250460922977ac1779a9c6a21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:33:12 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:13 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193413df34747a06cd20c3ab4a63224c323b78a44380f0da5a44913b0a15af9f`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c57eda20c28b5846b02619a46015e9457e7b21dfac39e34b9a32dcf15b56b44`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 8.8 KB (8802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fdf6ad80ff549e977133a34f98cb60da99242891918f8ab6478e16e437d92c`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 122.7 KB (122664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b99be5ad5b5f8592e91de0846d86f314cccaffa81918c035f976c2023d4121`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0178f7cab25385f36bca2df7a845ace406e6c957755289703e6849b43c06c3`  
		Last Modified: Thu, 17 Sep 2026 21:33:30 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:840871aa9ef254a42b72d2d9dae5a6420ad1b921dc2ab49de95d0be4687c4832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5470b799ea268574836ad993ac158281cf73b26aca752c6093038944ebc490a`

```dockerfile
```

-	Layers:
	-	`sha256:f1318d1e9587fdac975f72f23fadf19b48c1e984095439b37bec8c64d635c7fd`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:891b11fc0a436cf962024c90004d29388279de4b37a5b58c22f8d2c372c3eb38`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:1a56e8cc453a864557cd3b2e8d99d5f3e74e54096b230a26fafd095e35325510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3942432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4917fc987213fc9c5b5b98c7ce26d916c90ea01f51b4e67cc9d9cd0f534ba304`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:47:11 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:47:12 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:47:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:47:34 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:47:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:47:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c369cdd4fcc9769fca66a5b2c09595d6017f84036c56ef4f59196231d33c551`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca940a72fbbe2c58ad9cd17980489823357f7da6ecc63d3ca811ea9e60617b8c`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 8.8 KB (8804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352845a3ea7878efb311cd32dbc00fafce7f48df2fe35f95ba2e3c8bb5f9ebb`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 114.8 KB (114768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34d0e6eccd7b2ca60ecbe2dd0603421fe8df1892298e51744f433d8818f19c7`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f114c5a4663178e638fc7fd9433a5ff8539a2fa24aa6d0c61390666245901659`  
		Last Modified: Thu, 17 Sep 2026 23:47:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:c4a379ab8c54425788ac23bc5b4149e0c51841b67241b666e52fd7bb5204ea7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a03cbe4ea7820a0ef57225e55b436779438ee5b548e323d096261fde573290e`

```dockerfile
```

-	Layers:
	-	`sha256:bf326f346c557505274ce5171115a1056d12cf0c4e3d818d8861e169f0850491`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:931d65645f11feecbebd20bf1dce296fefd2f9962ed8ed6f000e32b0b1200602`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:b6d60a96765dd244b0417c8d59365671590e3c770155fefcd8468bcc6ea60f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3685491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3758f8f6400271d99e7adf8b0d05da833132767bb3ec573dd03abea5c4041bdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:47:40 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 21 Sep 2026 09:47:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 21 Sep 2026 09:49:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
VOLUME [/spiped]
# Mon, 21 Sep 2026 09:49:29 GMT
WORKDIR /spiped
# Mon, 21 Sep 2026 09:49:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 09:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7a12de23a435f38ca3eee76915055d1c9f650336d5376f8d9c2cb024515fcd`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c17d2cf9247dd552269e67f5b0da20b58b6e21daf609f8e986210e3e2a52a90`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a4f904689861ee20bc3c223a28c9fdcac3f118090802ce46873906902d450a`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 99.9 KB (99924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ef085190148c8f098b4a4335852fdd8e9a5b1a0c6d2531d1901ffc61d93315`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da602b17967d07ffa9deea608181db1a8200e688ac99e042c54a98e064bed6a`  
		Last Modified: Mon, 21 Sep 2026 09:49:51 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1754278f79d2e20bc8f4d5ef6a6ac5f5c7f3f432359005889d9091ad8a4b72b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fe33d9e961853f94504281813cf6689b79b10a7891779f44c0d94472ba38c`

```dockerfile
```

-	Layers:
	-	`sha256:9f25422ff607ebd8c9a246cc6f2c46a44cfe67cf57b2bebb4b3ed6698e0388e2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b1defb5fd0d70f6a1650d694d3100f4bb4910a3b401c33fe49444cc12ce6fa2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:b87ffc508072a487175f282115f9d8cee83e925c6c797b49ecd997cde1368ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3824066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643327ce24abd9c39a0d87790ea901f570db79d641a402a77d14746b3191943f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:21:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:21:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:21:29 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:21:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:21:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c28b1ee91651edb6df5f144eebf5fb13586021df9e14be017b5209faadd460`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138eee41c328156d0408dcb3eb3876b2f7a3f582fba967ded1a9315ba5343eca`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 8.8 KB (8800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62909ea869dfb26a4f2d61f136bc15ccba2037caec4e159a8cf2eeefe4890fda`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 98.5 KB (98544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b107c74b855f479cc041063a065261eec7e2d41b6e96c2d997da9f20afef0c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb872e7ed11059e667d1a146029b775258d6f057ac354daa99fcd5768795abc1`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e0d416c33c8acdd57c049c7315124fc1babd960760a9505deba3e35b9b39d5dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f02b5508d2acd71efd8ba7e300c4f9d8a556cc3431d5ebd67a585397beaf9ea`

```dockerfile
```

-	Layers:
	-	`sha256:6cd4e6d9bc3947b13e78430e7d8977ff0b77312aa4511bccdd0d6cf26e663c54`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94722d68c100030fb7d672088b876b66031796f1220b4dbb06922d9504a4aa9c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:alpine`

```console
$ docker pull spiped@sha256:ee7216f4f42225acfba6d06adc078f2ef382a890f89fc8460ce272027638d586
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:32018b3e5f9aa16d567079956ded7b697deab16c080bb5033a193030901dce63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3970817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dee21ed63a4ccfc419dbd4bdb3b43f32e87a41c95b54e474844b6d909f1bb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:32:59 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:00 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:09 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:09 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:09 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3375156b03fed670d677505a6c8e76c9eb2e814fe2179d37720fd8f793dafdb8`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40023eaab1894410e5a75896b431d155095446b89f46f20559f5c18634cab22e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed98c075753f25ed44b64a5ca7c94258cf1d026ef9bd0bfb28dc22026afeddf0`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 110.9 KB (110881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5db5222d6b07f2d57bc193145fb83f88dc09a83a1a011700e9f171118f3dd4a`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1941991931eaca78d33b05d4fd166d8959b9713e2c7a63f0e87a00159d08db5b`  
		Last Modified: Thu, 17 Sep 2026 21:33:14 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:2c4988dc9ef5071d17253785f25f435616db44fab4e2782d5888d26a86f97ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 KB (95168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c242cf3344a774c53ea0bf4f391422063add8068356f1643c0f853f77853c9`

```dockerfile
```

-	Layers:
	-	`sha256:a376ab7d152946f2068232d582fd6a235265a8aaa5f8fdeb8a7a62f1a9496a8e`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 80.9 KB (80909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74ca732a7a91d8b0e4ae8947c640ba23060e3790167925f2826ae414f3632667`  
		Last Modified: Thu, 17 Sep 2026 21:33:13 GMT  
		Size: 14.3 KB (14259 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:550ef644969afaa03dc0a1d03aecabd8025ceebfbfbe309f3522ac8593167ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3657216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7303579f54c1322e0a0c4c32eb05366fb53a71d6ae4342032a12f8c4ec697727`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:24 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:25 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:35 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:35 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f4b24b0aa2f1d3ca5dad55d17a8d7e77c5b6b87992d9a76c49d759667bde28`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98f97def63f8c3b8de000296da6c7bee54c6680126e3d0c39ffd6b022cd7d16`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abe495e65120fd524d1f337d7d816f9fa966834587effc4fc50e2abe766c6c3`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 91.9 KB (91928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44818c29aa279ea3c464618beb96a05a81d07fc538b8fb0acbb997f284862ea1`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499e4d7cbfe0a7d953ff6e928cfd3698e0b31de3a780587b50ccea10b993a4c9`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:bba3f6762b43b50f4a5419d3e064969da68641b8f3aa70328844b0f0f8e7c72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c501526bc5552c6fb00a27673794454a2c80f0d3a9d17f4ff91085fd59a623a`

```dockerfile
```

-	Layers:
	-	`sha256:f76641f331cffafb2e89db7fb4032caa841e794b9e385d67f18bcc9490eed975`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:1878bdbded6cde15bc43c44306dc3be08d415e09f436887777936b48797b06c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3360175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f448c8580efe744ca931f1414830fd3049fd214106d10bfbde18a931ff177eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:53:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:53:33 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:53:33 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:53:33 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c07facf6cfd94303e9bc513e01ece46f7bda8dd5a0a5b60d88e9f6ee43afbf`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcec03a202a10d687eb82fe4781644fccba2f0ac9a9d25b71d7302b6d661d85`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 8.8 KB (8816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585131a18be4b74d57f3465525d3806090d14cfe24693ed220f42e37ab6dd00d`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 84.8 KB (84774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9019d05401c20d55eda8fd806aae86cd47af502def2d907d9e8bfbffcdec732`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4f5d1a3fe86547253de95f44f3baddc7537bb87dc2257ff8957c4c2ab909ce`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e854052b70ab432b9dff9edbdc9e9602e5f3b7a50e5595de596b70d59b519d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b54c849a1e1d208a549e53e313ff61cd42131ce67c0b80d34f379b3e9a1b951`

```dockerfile
```

-	Layers:
	-	`sha256:6ed0710b130ce5158b649cebc9b633d9a158e23ea498fa356b0c05768de025da`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 80.3 KB (80295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae218fb2afb242766c0c687a43d9b932892411e2d5451213a959d21404ec84a`  
		Last Modified: Thu, 17 Sep 2026 21:53:38 GMT  
		Size: 14.4 KB (14361 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:f23462df4970dfc8150e351fa0716bb39b77ac74d5a6836d2e1718caeef68458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4300371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6897625fa6be7d80285539f43a265756fa013b9c986249471bb252028cc87019`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:14 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:34:14 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:34:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:34:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:34:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:34:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b745289e2a1ff0c1258e983d17a6d34d56823c8db1bc76ef8ad779b87350db1f`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31322943e8f1b313f3178363bb73e44bb8922d978b3259778d0b31f29622b303`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 8.8 KB (8806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d9e272726d6605faa008f65116c7a1770b8e0fc853ed6df570a29acda82057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 102.5 KB (102524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b203f93441728043c5e6910ded4834bd093d5342f64692469ac84378da5ab3e7`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62b6425ab7bdd74d111f3fdaf063415bc5a61d8df31b6f6e79699f60d0436e5`  
		Last Modified: Thu, 17 Sep 2026 21:34:30 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:579ea739c562da38a3b58d288ab888e34ae73b6631ea43bc7ae967087b18677c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 KB (94708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6252a92ad3ea38e2722a73a1600cb4ac8bde249288de4cae4de624cc2b305805`

```dockerfile
```

-	Layers:
	-	`sha256:2aa54062bae232c24ff4b8a1146ddf91476d3f800ce2b74783b5a526dcb79057`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 80.3 KB (80315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bee0c6173f41139d30bea24d365c46d92fde662e4dd158560b2aee07a75442d`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:53ad5f30d023e80f8dcb16768661d70aba83a7bdb750c45e427fe96ad1ba7f61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b692dcb2d9703c2466c7a8702772c0ffd0268e4250460922977ac1779a9c6a21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:33:12 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 21:33:13 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 21:33:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 21:33:24 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 21:33:24 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:24 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193413df34747a06cd20c3ab4a63224c323b78a44380f0da5a44913b0a15af9f`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c57eda20c28b5846b02619a46015e9457e7b21dfac39e34b9a32dcf15b56b44`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 8.8 KB (8802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fdf6ad80ff549e977133a34f98cb60da99242891918f8ab6478e16e437d92c`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 122.7 KB (122664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b99be5ad5b5f8592e91de0846d86f314cccaffa81918c035f976c2023d4121`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0178f7cab25385f36bca2df7a845ace406e6c957755289703e6849b43c06c3`  
		Last Modified: Thu, 17 Sep 2026 21:33:30 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:840871aa9ef254a42b72d2d9dae5a6420ad1b921dc2ab49de95d0be4687c4832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.1 KB (95107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5470b799ea268574836ad993ac158281cf73b26aca752c6093038944ebc490a`

```dockerfile
```

-	Layers:
	-	`sha256:f1318d1e9587fdac975f72f23fadf19b48c1e984095439b37bec8c64d635c7fd`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 80.9 KB (80884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:891b11fc0a436cf962024c90004d29388279de4b37a5b58c22f8d2c372c3eb38`  
		Last Modified: Thu, 17 Sep 2026 21:33:29 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:1a56e8cc453a864557cd3b2e8d99d5f3e74e54096b230a26fafd095e35325510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3942432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4917fc987213fc9c5b5b98c7ce26d916c90ea01f51b4e67cc9d9cd0f534ba304`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:47:11 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:47:12 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:47:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:47:34 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:47:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:47:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:47:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c369cdd4fcc9769fca66a5b2c09595d6017f84036c56ef4f59196231d33c551`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca940a72fbbe2c58ad9cd17980489823357f7da6ecc63d3ca811ea9e60617b8c`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 8.8 KB (8804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c352845a3ea7878efb311cd32dbc00fafce7f48df2fe35f95ba2e3c8bb5f9ebb`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 114.8 KB (114768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34d0e6eccd7b2ca60ecbe2dd0603421fe8df1892298e51744f433d8818f19c7`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f114c5a4663178e638fc7fd9433a5ff8539a2fa24aa6d0c61390666245901659`  
		Last Modified: Thu, 17 Sep 2026 23:47:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:c4a379ab8c54425788ac23bc5b4149e0c51841b67241b666e52fd7bb5204ea7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a03cbe4ea7820a0ef57225e55b436779438ee5b548e323d096261fde573290e`

```dockerfile
```

-	Layers:
	-	`sha256:bf326f346c557505274ce5171115a1056d12cf0c4e3d818d8861e169f0850491`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 80.3 KB (80292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:931d65645f11feecbebd20bf1dce296fefd2f9962ed8ed6f000e32b0b1200602`  
		Last Modified: Thu, 17 Sep 2026 23:47:45 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:b6d60a96765dd244b0417c8d59365671590e3c770155fefcd8468bcc6ea60f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3685491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3758f8f6400271d99e7adf8b0d05da833132767bb3ec573dd03abea5c4041bdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:47:40 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 21 Sep 2026 09:47:43 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 21 Sep 2026 09:49:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
VOLUME [/spiped]
# Mon, 21 Sep 2026 09:49:29 GMT
WORKDIR /spiped
# Mon, 21 Sep 2026 09:49:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 09:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 09:49:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7a12de23a435f38ca3eee76915055d1c9f650336d5376f8d9c2cb024515fcd`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c17d2cf9247dd552269e67f5b0da20b58b6e21daf609f8e986210e3e2a52a90`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 8.8 KB (8813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a4f904689861ee20bc3c223a28c9fdcac3f118090802ce46873906902d450a`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 99.9 KB (99924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ef085190148c8f098b4a4335852fdd8e9a5b1a0c6d2531d1901ffc61d93315`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da602b17967d07ffa9deea608181db1a8200e688ac99e042c54a98e064bed6a`  
		Last Modified: Mon, 21 Sep 2026 09:49:51 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1754278f79d2e20bc8f4d5ef6a6ac5f5c7f3f432359005889d9091ad8a4b72b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fe33d9e961853f94504281813cf6689b79b10a7891779f44c0d94472ba38c`

```dockerfile
```

-	Layers:
	-	`sha256:9f25422ff607ebd8c9a246cc6f2c46a44cfe67cf57b2bebb4b3ed6698e0388e2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 80.3 KB (80288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b1defb5fd0d70f6a1650d694d3100f4bb4910a3b401c33fe49444cc12ce6fa2`  
		Last Modified: Mon, 21 Sep 2026 09:49:50 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:b87ffc508072a487175f282115f9d8cee83e925c6c797b49ecd997cde1368ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3824066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643327ce24abd9c39a0d87790ea901f570db79d641a402a77d14746b3191943f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:23 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Thu, 17 Sep 2026 23:21:23 GMT
RUN apk add --no-cache libssl3 # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Thu, 17 Sep 2026 23:21:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
VOLUME [/spiped]
# Thu, 17 Sep 2026 23:21:29 GMT
WORKDIR /spiped
# Thu, 17 Sep 2026 23:21:29 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:21:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:21:29 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c28b1ee91651edb6df5f144eebf5fb13586021df9e14be017b5209faadd460`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138eee41c328156d0408dcb3eb3876b2f7a3f582fba967ded1a9315ba5343eca`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 8.8 KB (8800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62909ea869dfb26a4f2d61f136bc15ccba2037caec4e159a8cf2eeefe4890fda`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 98.5 KB (98544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b107c74b855f479cc041063a065261eec7e2d41b6e96c2d997da9f20afef0c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb872e7ed11059e667d1a146029b775258d6f057ac354daa99fcd5768795abc1`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:e0d416c33c8acdd57c049c7315124fc1babd960760a9505deba3e35b9b39d5dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f02b5508d2acd71efd8ba7e300c4f9d8a556cc3431d5ebd67a585397beaf9ea`

```dockerfile
```

-	Layers:
	-	`sha256:6cd4e6d9bc3947b13e78430e7d8977ff0b77312aa4511bccdd0d6cf26e663c54`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 80.3 KB (80258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94722d68c100030fb7d672088b876b66031796f1220b4dbb06922d9504a4aa9c`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 14.3 KB (14256 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:latest`

```console
$ docker pull spiped@sha256:1300050d642fa7d8b09d36961e4220893bf3c92f393eb8d629d5cddbd7b4a729
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `spiped:latest` - linux; amd64

```console
$ docker pull spiped@sha256:2b0b5e4bbbf1aa032e8ce925bfcf3a6aee0264e1a10731a468eee98da99b4014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36894194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040e7ab6fd3e18a38f5cb3b8926f046214e449b68cfa378f1a68799a285eb7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:39:43 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:39:45 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:40:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:40:07 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:40:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:40:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9005d7b8a85c98d80fa7ad11905e56eafc37fb21f972ebd8d544870c01b8989e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d1cec4bb48d084c2778b54a7c31b94ca31879950b3328fcc33546aacbd051e`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 830.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c83859ad7bcee0ac166bbf68b6345f923aea8b11fbdbf1945be31ae6ddcc5a`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 7.0 MB (7048245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c84b7fa0e6285017e85f0bc69075eeb66a27df992a14c411eae9c8782961f48`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38dc9bbdd31f326ba110dd0fd070d8efbeeb76d7f7a99a516a40105e0217b35`  
		Last Modified: Wed, 21 Oct 2026 00:40:16 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:a0270dd64f0161d0babeb72a6d150a64ffe53da9031248120be1fcb44934dec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3648029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0c6f78e1bd162cc4b4260c083e7f3ababc32e6663ee24dbd48b7877e87900c`

```dockerfile
```

-	Layers:
	-	`sha256:7cf5691b212539b4bde2a01f7349cb0dc40738338e861f0f46ba55e60ec49d61`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 3.6 MB (3633047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea8747431ba6b0cc0d9605865c92176d7d82619eb3e2e53771f5645a0457eedf`  
		Last Modified: Wed, 21 Oct 2026 00:40:14 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:9f5f292713b0832b0c9956c7c240945da21e37ed2783f1848315d6a6738adbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33800613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ab5425baad1aa3ea1d4b4268fefe690487e780a01c63e7dc62694801f07bf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:48:23 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:48:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:48:50 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:48:50 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:48:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1ccaca0d95837dd9ecb266d69171f09202ed51c02d51070431bf5384c129e3`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d277f16267e479df422918f37753902b6f4b4246e5464eb813bf550acd40366`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 831.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae0fa2b8cefa1edf38ed0fd91d99bbbc75a4022d0753217f641b26533bd22a9`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 5.8 MB (5790447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a61bcfc7e7340c063a300526e65d8343a1d5736550134809a0551c04279160`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad525cf396e1ac80ff1c78faa0e7204fed6020fe677d74fa71bcd9f47fd8f94`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:abcc88c0f962b987f73fa7a9fd81f9086873c8b6133ef2e4a240606666481f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a7fc7befc026414f3a613d599c9effb90cc29b1c706426979df8d79e71a4792`

```dockerfile
```

-	Layers:
	-	`sha256:3caefc5d7c116d932ccf742629b771332c6d12cb87606256b7298f95e65ba2f8`  
		Last Modified: Wed, 21 Oct 2026 00:48:58 GMT  
		Size: 3.6 MB (3626042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e8a7035701977e9a3a8ef8219f6c1a96e571602065c007e1348f5956f195d18`  
		Last Modified: Wed, 21 Oct 2026 00:48:57 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:fb8feba3ec3ba2670dedf856657101b9b1075f7672f20cffaa8a5b6449ef982b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31845834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b3f3bb60fd6bcee9c1802df6f3d89f3f7e1eb9fe4ced61ce2b4015d977f9c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:22:47 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 02:22:51 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:23:15 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 02:23:15 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 02:23:15 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 02:23:15 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 02:23:15 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:23:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:23:15 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72001d964e3bf3d19adaa2234c30cae492af831f11b8e2060d84032246c67e5`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872315cbf1f2333cd2df2e8438509dcf5c99f3561a8f6bbfb2a9bfdf9203fdfb`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc030b8edb1fe0e86083e98fc9d2652ef1263029f46055d1c55a2e59b777527`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 5.6 MB (5585289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5965948a38e35fcaec4b3a4454578bb2647b87d7f6973974c7017c601ae67056`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea295161430d71dd7599c70363a484d20425233574d7c16a5649413acace837b`  
		Last Modified: Tue, 06 Oct 2026 02:23:23 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:bacc1fe31882c084913fff73782a2d740f8accefd0f735fcf23226d599ceb3a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638cdbae026f8de98498be5fab35807a49767ef45434fd4618c475b2bbb6ed6b`

```dockerfile
```

-	Layers:
	-	`sha256:520c1151f87cbccd7acb246bcbcd74b42776a0572aa802339fe2855aa4e2bba6`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 3.6 MB (3625165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77c44fc3456be218cb76410dc986ce3c25485eb075c5d9c691d0ed5ba6350721`  
		Last Modified: Tue, 06 Oct 2026 02:23:22 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:12245f5222f84ffca8fcc7ce71198ba455478a01df78cbbccb0e58b3730820d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36437154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c13e62828a4bf6a736b0f7ef6012b6c1a57c4538001f3e1d8fea805a4022562`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:18 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 21 Oct 2026 00:43:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 21 Oct 2026 00:43:44 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
VOLUME [/spiped]
# Wed, 21 Oct 2026 00:43:44 GMT
WORKDIR /spiped
# Wed, 21 Oct 2026 00:43:44 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:43:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d38208d1419ec9c68bf1dcc238d5f9aa0ac178ee37c35ff5e3aae673229f2e`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd0d52133433321d2e0affba10706491ad7655d223f487433e0ee3d37a2ebad`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef0a846b3a0eca93801db7a27afd654197f16fd8b2469be216fa7979f3e4748`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 6.2 MB (6234310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e300f1d22c7d55589ff7bd5890d18c0a19e1b9fd4dcdedc7aad72b17c7b6d7`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869a2cd3443758399cd5fc8c8edf9d175c972577e766f5f93171c5ae58b21632`  
		Last Modified: Wed, 21 Oct 2026 00:43:52 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:a7e41a6a153ea25f5d4c104693fc53696b1da6dfea8d1f091dcc5eb15cab541e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5143c8aedca974ce9f3bd71c4bb9abe092e406589d261aad6b57532c57d604b`

```dockerfile
```

-	Layers:
	-	`sha256:abd12bb44a02a8cd263b9384e5865fe543a15e54f0ea971b40010d6b97fd33e4`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 3.6 MB (3628076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:274f2f4b3b3ef204b980f0b6f50d143a1026ee0fe358f2ca3a855ef01153132f`  
		Last Modified: Wed, 21 Oct 2026 00:43:51 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:abf4c6759e90c7ba2b47585a99bde699f321e5c068bc3f3693255f42626e0f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37799671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d869af9571f789752e6aec7c01644bfe316181721395d3ab78c03079b434dd1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:45:11 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 01:45:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 01:45:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:45:40 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 01:45:40 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 01:45:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:45:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:45:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c98e9a91b46514b40c8d34e8687a5427953e8637136668495b4972c8b2015b`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fa89ec175ee3ad92996a119939a01308e65f45e0cb5d1ac0aba784c0d613f4`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a5f9684592dea0e134de934cfdd743fbdf940371294bfaa86dc4e25e6e8544`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 6.4 MB (6444004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b8d49144124c32d585f450331ba6fbd4b303ddda8df6e1d87615f191fbcc6e`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d46923975eca2dcd7e590db19aaa1e01814e66d1d9105c4155cda553d1e704`  
		Last Modified: Tue, 06 Oct 2026 01:45:48 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:cc3484c08378518ab1f95691b6f28dba2a1ef49a5f5a95bd9ab6c571b52b6ebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32c2709571a9a196e241351677a046387fd0989c77d3b3728e975f084cd2c6d0`

```dockerfile
```

-	Layers:
	-	`sha256:733b616b6ac0c79f9031ed4f6500ccb8f035cc3c11d9a9b33dc48eb3159eeabc`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 3.6 MB (3627174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1b9dc4f03d1d365ad83b7135a6db6b78c1306ca6269b1562924da4286c38f01`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:6285dbeb9e9e56ec14b326f282fcd69448330af174e396d8293f6b95a9a2f1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40495408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7a04b81505eb72b277242676972ee0dfcffe41576b418418252e7f59633830`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:37:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 04:37:19 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:38:21 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 04:38:21 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 04:38:21 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 04:38:22 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 04:38:23 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:38:23 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5cf54a5c7aa181a8d5d1490581b662aa3ca7325d4102b25303d13fc9da0995`  
		Last Modified: Tue, 06 Oct 2026 04:38:38 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850e14fc1eb888adfeefd280f15ad52a21db30476eb04764fa44d45b0aa85eb0`  
		Last Modified: Tue, 06 Oct 2026 04:38:38 GMT  
		Size: 825.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7035968d5a7734909b5f94fbe8fa3783cb6e9bcc50b00d4bbd6e41b033d70a56`  
		Last Modified: Tue, 06 Oct 2026 04:38:39 GMT  
		Size: 6.8 MB (6841446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3956aba75a5084a4e9e3fedb4bd9dd809ae4143a9462880723b40cd1e59357`  
		Last Modified: Tue, 06 Oct 2026 04:38:39 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a571dc5d258c904864dcb26965e33a8863ca06e23e6e7ba7eab7cf3eb6962e12`  
		Last Modified: Tue, 06 Oct 2026 04:38:40 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:369b22ea28be622274d0db53bc88604c4eea194987b31f0dc02c738ad7fe7dbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07d859d571e895d5ebbeb8576d1fda388cd51bbbe9a61db17c0ef5d83229add`

```dockerfile
```

-	Layers:
	-	`sha256:c7cc0227d986ee8fecab20bbdcfd25fbdd9fadc3af73fa57cb32012acc822b63`  
		Last Modified: Tue, 06 Oct 2026 04:38:39 GMT  
		Size: 3.6 MB (3628789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:689a131ee024ddddd87e42c14248391aa23e9bed4402325f227511ca4e45a742`  
		Last Modified: Tue, 06 Oct 2026 04:38:38 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; riscv64

```console
$ docker pull spiped@sha256:21cb950cb81426fe9f23fc354e4ef3a14a1c38c6d9cf6e540a85f82f0b6eea5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37691356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9243fdf46726a9b8301142c34cdf0bf754e6b9f3ac4d4e3ab1d1d3c81f76a730`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 19:59:04 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 07 Oct 2026 19:59:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:02:50 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 07 Oct 2026 20:02:50 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 07 Oct 2026 20:02:50 GMT
VOLUME [/spiped]
# Wed, 07 Oct 2026 20:02:50 GMT
WORKDIR /spiped
# Wed, 07 Oct 2026 20:02:50 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 20:02:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 20:02:50 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a0479892116bcb39ecb09c5bf728e3a603344b592047a393de2be976bc8c57`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ee8636fb3ee0b1ac07dc8431b92b465805283bcb988a4a51870a1310d3b637`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 821.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ace0b91e8323bf81bac385a21d16f8b0a5dbf9ce19d56cbf0e60aac09921a8`  
		Last Modified: Wed, 07 Oct 2026 20:04:07 GMT  
		Size: 9.4 MB (9355230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54198b48bb29c96b87314bc30489495ab0a34af7a91a1a3f238f61b0922bcfc1`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b6a2d66c9cde3129b309c278a982926a277572f4bcd193ca1d81dc47c9820c`  
		Last Modified: Wed, 07 Oct 2026 20:04:07 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:96d5f82e6afa7b15bd44853ebef202206e3863f11a5339029a5d9326b7eed12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3f6dba9f42d925adc7ef9dd583b6074480e3cc689df23f1ec1dc4584824251`

```dockerfile
```

-	Layers:
	-	`sha256:eff755b39d112622041e01745165a233530ba7b722d93b9d7e82bc4f43e983e1`  
		Last Modified: Wed, 07 Oct 2026 20:04:06 GMT  
		Size: 3.6 MB (3620191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70f352d0caefa7d92371b47e441ef36dc03bb5bcf84e6e253ebc3bba4ff802cf`  
		Last Modified: Wed, 07 Oct 2026 20:04:05 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:31d368936c8d99f172d56af7b792f9646308547ed92943e13f78745b556d7528
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36034813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e256e535960fff21420adce4e42e25f2d556376dcefa88e4847e12f113ec63c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:56:21 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 06 Oct 2026 01:56:24 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:56:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 06 Oct 2026 01:56:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 01:56:40 GMT
VOLUME [/spiped]
# Tue, 06 Oct 2026 01:56:40 GMT
WORKDIR /spiped
# Tue, 06 Oct 2026 01:56:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:56:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:56:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626ef3887b70a0665e92b148d48d3af8ea824167805c55e2fbb75677d7f196fe`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa9a1adb6e5e8ab1386eaf67166d868d9ab59c4e629a4f3dee36271578293e8`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0791af375e2f25b2efdcdf2b1dae33800651e3e2c77e16dd5409bac9d71a23e3`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 6.1 MB (6123198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a548d83008dff367965f87c7ef68dae4e1bd5942fb05f397b339ad00431868c`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b38a178727493a5f9100e08dc62cb099cd5a9a0f02726c7267eb77a36071c8a`  
		Last Modified: Tue, 06 Oct 2026 01:56:51 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:32987f2062d3c78dbf75e82b154ce936c76be80eec1a2dd811f95049e5cf670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788018e93519ce30ab74cccf2ea3debb9b9b52d0595bfb77f5ead911981d4029`

```dockerfile
```

-	Layers:
	-	`sha256:b7e62e02482a02d4d6699c496bb732dceb882a3ce3a3f87ff48f10869a2523cd`  
		Last Modified: Tue, 06 Oct 2026 01:56:51 GMT  
		Size: 3.6 MB (3625409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f78dd34dfc6d748c1861dd38b4f76d85dbf8b3a1b4c04e346736fe1b17b29a9`  
		Last Modified: Tue, 06 Oct 2026 01:56:50 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json
