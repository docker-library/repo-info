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
$ docker pull spiped@sha256:b72665931842767b39a2b1345425107437a354f8747b6003d068830ccbb50b19
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
$ docker pull spiped@sha256:6a1c08f450fe4a3d134f1111325ef33e4003c8ed2780759219529f34a7640ed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36831240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:358ecc0e9f6a0eac32411590d7266fd4991df318ef2e12c9d325fa5181306cf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:38:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:38:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:38:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:38:35 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:38:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:38:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e98d784cad396f1dce4ab75c18b4e68b4bc61d93f81d3a819670911b6d1c0baf`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86116237c116d1ffc64d01e3148583c562be5938bc81f752556247b3a5f59ab`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0137c97c537b44a497fdbbfe636f3c25e96d74d8f220fd87ba76e627f20ada9`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 7.0 MB (7047965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a71ca68d2f895e56c8406e5d84d0393e83968dba32b2cd8399b9607ed544952`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa5b4eaf338a3b82d0a0fceec447a6ceeb09497e40b28a57fb8a0b207a2ebe7`  
		Last Modified: Tue, 14 Jul 2026 01:38:44 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:f66a2d3f49cbbb24a7c921628f5faa0d820bc7ca2fa155aefbc84432dda277fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e380bc7b2a4b4cb382414e977b4acb5db51e5cd5dbcaaac77c5899a2b69851`

```dockerfile
```

-	Layers:
	-	`sha256:eda316afa79ca9051344f07e05a62106096d097a3541fbc38522dda9ea15787f`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 3.6 MB (3626338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2789a698aab0772b0399761589d6c64d9331b7c6d9909166197a07de28524559`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v5

```console
$ docker pull spiped@sha256:cbc27bc42927bc3200affb020d97037dbb37c62e90b2868378a34d32a8e11ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33750871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766b4a17096df8d833a99075caa511c263015bfeb6c3bf40bb33c2b3c6d02ffa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:18:10 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 02:18:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:18:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 02:18:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:18:40 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 02:18:40 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 02:18:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:18:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b5e30154a279e69e1c7ea729367ea58e91a00a47d5d390b7ff8ee2af524319`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d896fa19c1a7364dd8daf6265e4c546c0d425f2fd7753d3a7976c9f7dbd384c4`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc0effdc2da943945024a94ccbd8045149c442a5655a20944fcc844297abdd19`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 5.8 MB (5789284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e5835a1689f8c59223be41c30095877ba7d662f10d5d864ae289d58321131f`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b81cdd98d02e0ef50cec01db8c8359fb6b1749aec79ddf8a3ec5cd7f08292f`  
		Last Modified: Wed, 24 Jun 2026 02:18:48 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:42118df3a78ca6bff6bbd1b0f62e537377eb38762a943256c5c047acbf63c279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab6b89f6f2c8192909acb2577a41ada0a05d7034efba34acd38e629488e4020`

```dockerfile
```

-	Layers:
	-	`sha256:eb25149af4d0dbac76dc0b10447b84354b943ff8da4e55068fc009a4062d0199`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 3.6 MB (3619296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b4d6ffc2cbc248c782225aec31b9cd883cb5b9242bf55ec002282896f36ab8a`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d674fc3e7b9d7fb686226fb2da07e0871f1a77cceec3828b5e5c9aad5ebcbfb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31798098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a69822e7a307aedfa9261e0a541cf275518983560fab926eb3441874ed5193`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:20:03 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 02:20:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:20:30 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 02:20:30 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:20:30 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 02:20:30 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 02:20:30 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:20:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:20:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac3b56430e25dc28c1632c2be6afe42169cf1f87f171a980632d1479a297465`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3d65e3790751c351f0b7c4cf23e23fc0dc15143135ffc2a6fdb5da8a12ad20`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e9d24ca59117fb629953027da77c8a71df2998ede511280a59761b694d9b09`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 5.6 MB (5584678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a74ff3aa0fdc12db7347082fee4e7f80adfa15e0d453919c224f99f9b736e1`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a62a36cf7034b120a54d749b81ae1cd17628dcdf9b5797b868c1a229d72d762`  
		Last Modified: Wed, 24 Jun 2026 02:20:38 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:8934267dd6156d087255ac175a951fcfaad307fa358c2311aec6d18a6c196399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd837c3530f3ab149a5c1ef7be00bdb0fffcaac0aef01529ee523d498a4203e`

```dockerfile
```

-	Layers:
	-	`sha256:400f6d4e765b9e0d36ed8233454657914021295ec3d3b8e4762d912f1c5a0135`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 3.6 MB (3618417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b4e857ba760c7cde997c93cf1d99b95339cf36e4e2ca0194774accf7c4c228d`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:70359d7fb44a781828f43e7989f534cc03123a726958fd6f086a37cf9d182f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36384907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333a0dd20195699802bb281055a8d7032862d3fa71317073ba054290704ea75e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:38:10 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 01:38:13 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:38:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 01:38:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:38:35 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 01:38:35 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 01:38:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 01:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:38:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c56cecca3acee2ae15eb7a1b5186ff30d2db843fda27675685e5b75cfee7600`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75f510a51fb4e96abf6d70a7c1921f875cdc2eb81b38cf9d9ab13e807eee721`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4554e2a0adecc5be836299e4d3af9177ecf7549beed54615e1a2ada49d885347`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 6.2 MB (6233986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122a30d33b798544ebce2e31b68bd0f1ca8f5c69976ddd9a3eed8b416077283e`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4591bd22832cb2270e57631661b5ae25db6d5bd94c1f692d18f391bf2651c0ea`  
		Last Modified: Wed, 24 Jun 2026 01:38:43 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:5c54b0e0724fc0dc69bfe42dd51e6f89dd7912bd3ce9507bbb3ed2820c260b6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db30781997cae1255ff4d136c40d33943b8d46a142a765d76162873d64d937ec`

```dockerfile
```

-	Layers:
	-	`sha256:25cda43d846e6acac37f204445b8d57f9299858943165919b74e6dfe063fd301`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 3.6 MB (3621330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:885d2938616a42597697e18f4c20e54a0cd1fbeba2808f3e0980f1dff59d8b82`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; 386

```console
$ docker pull spiped@sha256:329b3110e51ea95f8fd4221ecf5b2da6b14d43b20150626544d0363a357043b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37746479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac42948d7aeb3ebc6b5e8cda984d0d71e90d40fe7f189ed3ce6267e493bc61e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:43:27 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 01:43:30 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:43:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 01:43:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:43:53 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 01:43:54 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 01:43:54 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 01:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:43:54 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a801df5a15b5f0c364817aaacf41dcbc148e50d8462132d0c8e2dc38b0b0bc`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d7b15445e2bcf2c1dadc1666a388219cc148bdc5e0ce3792b0af13af4a24ac`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b814bc3c62d5bb8cf9e762006495b05f0f76186b0645b096d7b3cf4330b48d`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 6.4 MB (6442899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5d54c2660e5104901fd1a60725bb6254b85e0a65d15ed761b1c8c8a889cd7d`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b55fe6c92f49e52bd8461a7a59cf676d50f72c24d61197ee3bc5e6e247e95d`  
		Last Modified: Wed, 24 Jun 2026 01:44:01 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:fd0e8e1fe352c182bc168d1ce12bdbbef5a96dc8526353260b096c76b0a40daf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff2dffca4b31a369e407948d3a13e4866754cee6183f851219f0dd1eeb88a8ec`

```dockerfile
```

-	Layers:
	-	`sha256:1a4efe3989eb42b73070f79950ed47916e91948a434d570acca5a20662cdd96f`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 3.6 MB (3620431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e573d260c8be5d22be38a9a35edf1a4864a7f87f07319b49657f0c772a5501a4`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; ppc64le

```console
$ docker pull spiped@sha256:2e2c57113cec53792f077943c907d86cb3f255083555939537d316894e0f8b78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40449629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f0fddac6d051f05c9660df5d1960ccfbd83cd2d6ab83137ce1abf4594b4078`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 03:23:19 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 03:23:24 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:24:22 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 03:24:22 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 03:24:22 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 03:24:22 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 03:24:22 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 03:24:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 03:24:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19e04238d4b4e9ffb0ef6936017907de44583576700914c690716199ed89b80`  
		Last Modified: Wed, 24 Jun 2026 03:24:39 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2154eccccfedcca208ca4b895d664a0e53c8cee5c938c14100e66440ceec907d`  
		Last Modified: Wed, 24 Jun 2026 03:24:39 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1156e17ce09cd6f685db7d90d7b2e5f2fc3594efa4c27c7f7f8e85deb0eb2e52`  
		Last Modified: Wed, 24 Jun 2026 03:24:40 GMT  
		Size: 6.8 MB (6840867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9eabb0dc2ed4ea5e5b875863a2fc37c10af73ea339e17bd50b0a8bac5c65cc`  
		Last Modified: Wed, 24 Jun 2026 03:24:40 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe277bd275db7cf4627cf8039ef7e268cb31466d6725857e4399c6bea97112f6`  
		Last Modified: Wed, 24 Jun 2026 03:24:41 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:1249a5be6a5aa2d8a741555b8af3dce40f96c0c3f05eef4605d9bd58dc690686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9114c3d4f087d067a08b49ebee18152f8b458dd488a105b99be697861a3f62`

```dockerfile
```

-	Layers:
	-	`sha256:3c3f9e1fab958c9310b258fe7960fd9db89a650560faddaa9daf4ab29cdd180b`  
		Last Modified: Wed, 24 Jun 2026 03:24:40 GMT  
		Size: 3.6 MB (3622039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f8044149fab358df57be12980feb1ab6fed7eb5118f5af5e31a28685e65bde3`  
		Last Modified: Wed, 24 Jun 2026 03:24:39 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; riscv64

```console
$ docker pull spiped@sha256:8b42b6ef334caa5e287c97a428e7cae5a9c3c9f235eb85e3e54d173a95afbb56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37640912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8da71e8cb711b1565cc7f187b1d17023f66558db47d3344c68a47f99f9d12a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 12:39:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 27 Jun 2026 12:39:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 27 Jun 2026 12:43:01 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
VOLUME [/spiped]
# Sat, 27 Jun 2026 12:43:02 GMT
WORKDIR /spiped
# Sat, 27 Jun 2026 12:43:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 27 Jun 2026 12:43:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 27 Jun 2026 12:43:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c661af8a69151e6725c137302b56cedaebbea69195b532d196331cc58aecc2d`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9105e1a21dab819a958fffd00af103ffdff0fc9fb29c4f6e8403537b24dc7838`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 821.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8644521e5d09786f79d1bf0ddb8f91e769cd3193a0178eea6834cbd3efb0e855`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 9.4 MB (9356167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ecceb55b6a1af23d9ee1b78681c351a81e339a95525b31443bba6e35de0ae6`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450e42a3746e6a50052f3dc159bf593a5dfbe45fb04fad6598e3cd00d9d83474`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:a49e815a35801bcfde7c4c83f7e1d9fd683a082faf3ed41eb6a72c3c1c4f3e2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e498e11fe68afb226b5c18b3b50ca738644102e85fb702099075c42094710`

```dockerfile
```

-	Layers:
	-	`sha256:f6e0e71b9b64158613ad0eda366342d23d0d971a87bd85385d2a547fb5980d56`  
		Last Modified: Sat, 27 Jun 2026 12:44:15 GMT  
		Size: 3.6 MB (3613445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a23e8e8c6b0da394b5fcdc89f373d3245fdbb9f4dbd7d75a7d9ff95e0346657`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1` - linux; s390x

```console
$ docker pull spiped@sha256:65f747ca0999bc8478df93012d5c6dacbdd220662dd396e371496580528cbdb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35975900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49785958839f05d0c2c271a80848bd2e6b469441615df64e382e96911bf68e95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:44:56 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 02:44:59 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:45:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 02:45:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:45:17 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 02:45:17 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 02:45:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:45:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:45:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbfcbc754be6671ddfbd7bf51bde8a2d12c72e05ceda284845561732b1b385bd`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d90f038d870699d0ccb1074285f7df7ed5ba9d0bc2b6be5e7ca5d9be3b3334`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c539cb17aa654f1f6bb7705be27d56ce37ec507ec956d05354e80484caef138`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 6.1 MB (6122151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954eca563aeb69bd75c9f08760a711f2abe630a86c143bca6576a41e2e5fe145`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7b5390a5073eb984308661903a660903ac8925dcd2d4c9087af0e439362269`  
		Last Modified: Wed, 24 Jun 2026 02:45:30 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1` - unknown; unknown

```console
$ docker pull spiped@sha256:63b497aeebaba40b27a929f4813761ce699a6f830a31b7db6da8377b5d4f99ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab90edbf5c80b4601dd04b5b5f625b92f026c64d264ad346350bd8f0e724073`

```dockerfile
```

-	Layers:
	-	`sha256:b45e5a28271be1db0a412884998a58da338e5df1b34e083c59910303d93b3b54`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 3.6 MB (3618665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ac5db5258f731293eb73388303efe97f87b210f5e44e07001f5db7277cf58e4`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:65c5f6dce8328a5d9e53a08e6fa9361ad63dad4c1a3735e6ca18c82cfa846c2f
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
$ docker pull spiped@sha256:ddacdd500302ed8e0b56cfbe5eba1b03890a3a11103e2e79f118f78819546c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3904546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e50065de302c7f6a370e6ce4b691cc04feab696fd0ca4c59d5c21b96d09a5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:57 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:58 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:53:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:53:07 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:53:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:53:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e11e0fcbf833efd71ccdc39dad69485c2ab9e33be6a7075e11f23dfc938ee0b`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3df5ddcf63216635d6ac9800edfcdf71dbf67c7328ec84d1b3ab49da64adf0`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 7.9 KB (7939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bf1a439bfe49642cefb4e5461e95befb5f5a9b5cced180eaf651935a1246f9`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 107.6 KB (107630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2716e286de0031c590e0551ee0bcfbe0740fde1029874d538fecad89dadaca`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe62eb4d32c49f1f3ab36f4fa4341f61fe5f3eccfbb08576ec70be11772704af`  
		Last Modified: Mon, 22 Jun 2026 19:53:13 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:9cd92d324e4bfd0a2ea1f55c9daaf43dd5a3704affe05d59359da761a3ea9a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 KB (96455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70e5224458648b69c985eed8348a59c952ae7671493ce0b9764ad70c0812c47`

```dockerfile
```

-	Layers:
	-	`sha256:b0302e3cc8209d3dfd914c793e581ee84da322d428e5b5ccf19df7d08480f8f7`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 82.2 KB (82197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd339b140e490f5380bd78b29356f7f2ac4429526ab1280b93588123237521bf`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 14.3 KB (14258 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:797576782eff7b771cd16a7c70d7d3aa681429bfc3a96e3d9caf80de53e1d13c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8d26831f4f0d4c40c83254a01dab731517f05ccd3e8233eba9e650a658977b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:53:51 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:53:52 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:02 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3032dd20d72fa4a27591cfc40f8eec5d055f3f37cc9eb06329f5cf0e83e19248`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b413eab28f41a1f71ea4831c00e243457d2f484d8b30471a585c9b791580a4`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ddd27b334e342120f96e4a55937070fef9371ea62ef8a2ee2675febdbac2b8`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 89.1 KB (89146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35522b2f0660a559efa25d5c51d7550bf5f21e1df140bd02686304e0d54a6686`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70feae8af381e1a5e4dd52b1857289c5766c1fff41f5d377dbde68b6ac8eb2d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:07 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ab1ba7ca7bcdc700ff165912b9b972504e3ae861646327b59b12551cc63bfff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae2dc57358030a5ccab2ec7826df8c7578005f688b14a6f0440f1e345896ea1`

```dockerfile
```

-	Layers:
	-	`sha256:653d549a72bdd578904772adf12dac81809cf8fb791235e047142cc62a095fe5`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:0a4bc8b8eb635c2de45437d249d8467c9a1d4bfa67588b7c2b7c356a09950769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3300611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdc9d57160696d38e8f96024ccba6e14e8a961af83fec3bc71547d3c2ac3477`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:07:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:07:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:07:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:07:40 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:07:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:07:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d412bd01e6b05daa916f63dc49f85e1bc0e28908a915ab5433ee4f773b6d99`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4ca329ff828ab9881adaf1200feef78590b5cf682e928e28811a80fc9ca00c`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 7.9 KB (7942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bdfa617d32bd950a899f3c37fc1051103abe4c515575fd0c7a470311e7b1ce`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 81.7 KB (81676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb812de9569e6ea964dc192f484efa8f8b40f959ca1aa1cd28efb07d516b3b9`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f94d3b42c6fde945cb292d2ce19b88b4443336f40fd734cfd412ab84954e46`  
		Last Modified: Mon, 22 Jun 2026 20:07:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:a5f2de2594b64ce8777794fecdc26dffd6889de81c77f5c600f9de67ac2808f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bfc8e0afd039f2387a8475a01f7c55cbb7d95c208d3d65e460898634384300`

```dockerfile
```

-	Layers:
	-	`sha256:c1b261c11b2c6ba30671daf53c170874acef4bb4b844d659bf83d547ab4c5775`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 82.2 KB (82233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2429075ab54969202e940d2018a2e0c6eed6ef226d06edb7ace72b19cc19023a`  
		Last Modified: Mon, 22 Jun 2026 20:07:44 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:4756e80b073870da1063f3705ae4982190aab4ed9e17ddc85106f245d2ed7949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4230427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82eb3d5165ba6084a012344ffcdb5bf8cb8999837174113d002240db059e9432`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:08 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:54:09 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:19 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f19dec4b471d7fccd4a70ac0b2f8e3fe4c7aad315844c4b6ea4cc1f27a9e75b`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e119200034afb1c7ec26c08862296c1ebb06ad0e089656c82a87b0cc2ce3d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed72e155ad35b783a3b2fd26113062c65385d060c1107fd7be78775b11f5df`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 100.6 KB (100613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012dc19e314abeb9a680712049f471d7b225578b746a84c90ddf45f42863b3f3`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2921724d5472f855da9782445382b4df2dbc3fea41b0771456c4bd179c3ac9`  
		Last Modified: Mon, 22 Jun 2026 19:54:25 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:309e398654c9ffb57cf24a14fea4bf0c2931193c153dd095abeba42196ed37a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9077526648e3aefcc0edbf377ed5794fd580e0064ae615bf7362ce85c3273ad3`

```dockerfile
```

-	Layers:
	-	`sha256:e905129a42e7e89130d80f327d3c87b9cdafa58974899da48f451b550c597127`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 82.3 KB (82253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f134d75f49539af75c4f9aa3c0a55672a33a54cf8bf103699ca234354693077c`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:6f3becd5ab17860d0d79cdad5a8314f9f41ade80934bec3e845f2be0549f7399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3735070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c2c4aea7b344dfb6e18f2e0fca5adbbeb691624d97cccfc1e5787f7112f1c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:33 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:34 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:52:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:52:45 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:52:45 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:52:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a4b74ab0c43260cc6600b37d5a1ed742d904bba03625caa74b18e45744cde3d1`  
		Last Modified: Mon, 22 Jun 2026 12:03:14 GMT  
		Size: 3.6 MB (3605660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370212c6233698cf3a2cededd4bd44f00eac7c5e03af3c80a0a1d46c8a4ffdf3`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9589ee7d567bbc2c8b0bdd8091e2600f7493e43c86c9291e8e0c5cb80c56fd63`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a2e946a568955b4fc26e807e13538dfc53fdf5c40195b033d6738d5eb47988`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 120.1 KB (120096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c4c53f53316aa33359a13371beb39c12857d53615d08c755157fbd69bb338d`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3585934873b3572c65ed05b1212ac1144f16b9ef8468d66230cedacf8c04ab`  
		Last Modified: Mon, 22 Jun 2026 19:52:51 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:069fb82d31cd63808dd6a7d5c56b36a98d126a4f8d452cff42e101a369d62c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 KB (96395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99309a2ee767f77be492110796b79f8f183f4a91c5e150ce93856bfc9eb541a`

```dockerfile
```

-	Layers:
	-	`sha256:f85f07db752d4a828f227d726b92f676379255ba60f6efa8fb1a91b8cb20e575`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 82.2 KB (82172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee94877067613386073525f14205ddff5c1f158f239bc7509f064e7c73ecc48`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:c1cc5f07977afbecc6356458f2b32eba83fa27f15ccfd2fd3e1a735a9d57b1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1c41ea4dd6c0ecf7549da3addeae10ba93f78fd54e1c25dc1de93b83dbcef9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:26 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:49:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:49:41 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:49:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:49:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:49:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8203cae090da16e6a26a19619250dfaa442cb32235cdccd7cb43959f818529b7`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e141cab491eae5adef4000a749c7334bb35071c283424a3e6d61bafc55774e`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063a2b717927234acb021b3fbecf699ef3ef9fdbe005228543b3b50abd0c2681`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 112.7 KB (112671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4dcf9f6d4df2d7a2d5e4998ebe2ebe871012e544f924a9dfaace1206c4e4a77`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14dd2ccd865e90e1e74f998e912444647e73bb63b2cf5ff235507a53e5461d2b`  
		Last Modified: Mon, 22 Jun 2026 20:49:51 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:d97f431503fec6a0898b87e684a46fe7de9dfe5dccf289602c9596f0c95dadc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d6978a0a9849095e5cd36dd6b0c911189e1f6b75b63343dd0ecd79e6994e2e`

```dockerfile
```

-	Layers:
	-	`sha256:a6c98df3c7c9a98937e2a636caa44c78d547e61fd63227193ef10f8a14f8c96f`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 80.3 KB (80280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d374e384bd04e331461c24f14d6e6c07dc2058022dceb8114ea239bcdf30f50b`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:7c55cf1db5a5901566225dae8aa86f9d7296297bc0723740f2503c7fd60d9e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab9429e74c9709526497653458a19ba933ff5b18e0b054491cacc13378c4c1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:31:20 GMT
ADD alpine-minirootfs-3.22.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:31:20 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:06:52 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Tue, 23 Jun 2026 14:06:56 GMT
RUN apk add --no-cache libssl3 # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 23 Jun 2026 14:08:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
VOLUME [/spiped]
# Tue, 23 Jun 2026 14:08:34 GMT
WORKDIR /spiped
# Tue, 23 Jun 2026 14:08:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 14:08:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:160e037585664aec873ff4e42ff1b3ec48c67e0a12f176af61b462e34f272486`  
		Last Modified: Mon, 22 Jun 2026 19:31:45 GMT  
		Size: 3.5 MB (3506790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5e4b9469bbcf827fcf8175f0f8390bc0349727332117a5909893d175688b7`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49fc02eca1309f17befe495f79f496539aa40f91feb374576580ff3cc453fdf6`  
		Last Modified: Tue, 23 Jun 2026 14:08:53 GMT  
		Size: 7.9 KB (7941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3d6b3b425470c1da1fb6d70ede8d1ef5a956da0997b062fa5bd647847744e9`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 98.9 KB (98855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a05f4e795cd73fb37c80cfb48949c8d59d40b466fdc1bb34a73f91253bc6bcb`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ab2c7a9249290ea9c2c662eef520449b62b7e54a9324a7e50bcd5e255d3015`  
		Last Modified: Tue, 23 Jun 2026 14:08:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:01f4ad9340260f57ac99800cc323b0e42a965c6040232584fbabd5d88ed54008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792f648635f4c4b7d9de3f64ec8b7a037c09ec3c08aafaa32279b00123c129c4`

```dockerfile
```

-	Layers:
	-	`sha256:5fd43af2e4bad636e2d12491abcd917c00dd3d05ebd62edbb86d2d3d3b515a5c`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 80.3 KB (80276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97269dee5f4329e1526ae35a794a6cfda7f1a4ec84fc4df937e6b8872af90609`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:0f4e2ac2322703fe6510e68d25e037fe8261a0bc9edce94cf8c39cd0e45679c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f680bcc09744ca6d93819bd89af83997eb20d8ba6403f6529f6fcea9f8ba59e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:11:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:11:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:11:38 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:11:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce110fc44f98dbd983018fc83be7dc4329d59ed8ddfb1a8bb69f20d03326cb4`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af21f5dc378d28733cb11d9df6c93ab62cc9e42b429dea869cc6989f2d58e613`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 7.9 KB (7944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b687826bae76a65f4d3b5c85cca9d98459d1733e7fd342dd2f66c4a7f78a8d`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.9 KB (96930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b873740796eacbe60766007373af8305b09a49dca895aac969824d5989429eb`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7a2bafd6fc5806c07cffe82bc1181977e45bf21517442252f56b7867408cca`  
		Last Modified: Mon, 22 Jun 2026 20:11:47 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1c59034fee4ca2ec06abd17bbc1298b5b69cefd1b59fcc85334034cb1e3c886b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205b438cf1af18e7fc393a20c426434c40fb8b2a4eea4da055a1ae479d9214cb`

```dockerfile
```

-	Layers:
	-	`sha256:0260c6f5acc5a9e459aa5186e8ec9bad6dc107b7a6a1b1e4ec870641541cbf60`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 80.2 KB (80246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ac3c9b67b078306b16438482d144e3742cf7be27d981f5f53aa392760585fac`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 14.3 KB (14254 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6`

```console
$ docker pull spiped@sha256:b72665931842767b39a2b1345425107437a354f8747b6003d068830ccbb50b19
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
$ docker pull spiped@sha256:6a1c08f450fe4a3d134f1111325ef33e4003c8ed2780759219529f34a7640ed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36831240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:358ecc0e9f6a0eac32411590d7266fd4991df318ef2e12c9d325fa5181306cf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:38:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:38:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:38:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:38:35 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:38:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:38:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e98d784cad396f1dce4ab75c18b4e68b4bc61d93f81d3a819670911b6d1c0baf`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86116237c116d1ffc64d01e3148583c562be5938bc81f752556247b3a5f59ab`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0137c97c537b44a497fdbbfe636f3c25e96d74d8f220fd87ba76e627f20ada9`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 7.0 MB (7047965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a71ca68d2f895e56c8406e5d84d0393e83968dba32b2cd8399b9607ed544952`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa5b4eaf338a3b82d0a0fceec447a6ceeb09497e40b28a57fb8a0b207a2ebe7`  
		Last Modified: Tue, 14 Jul 2026 01:38:44 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:f66a2d3f49cbbb24a7c921628f5faa0d820bc7ca2fa155aefbc84432dda277fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e380bc7b2a4b4cb382414e977b4acb5db51e5cd5dbcaaac77c5899a2b69851`

```dockerfile
```

-	Layers:
	-	`sha256:eda316afa79ca9051344f07e05a62106096d097a3541fbc38522dda9ea15787f`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 3.6 MB (3626338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2789a698aab0772b0399761589d6c64d9331b7c6d9909166197a07de28524559`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v5

```console
$ docker pull spiped@sha256:cbc27bc42927bc3200affb020d97037dbb37c62e90b2868378a34d32a8e11ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33750871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766b4a17096df8d833a99075caa511c263015bfeb6c3bf40bb33c2b3c6d02ffa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:18:10 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 02:18:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:18:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 02:18:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:18:40 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 02:18:40 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 02:18:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:18:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b5e30154a279e69e1c7ea729367ea58e91a00a47d5d390b7ff8ee2af524319`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d896fa19c1a7364dd8daf6265e4c546c0d425f2fd7753d3a7976c9f7dbd384c4`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc0effdc2da943945024a94ccbd8045149c442a5655a20944fcc844297abdd19`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 5.8 MB (5789284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e5835a1689f8c59223be41c30095877ba7d662f10d5d864ae289d58321131f`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b81cdd98d02e0ef50cec01db8c8359fb6b1749aec79ddf8a3ec5cd7f08292f`  
		Last Modified: Wed, 24 Jun 2026 02:18:48 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:42118df3a78ca6bff6bbd1b0f62e537377eb38762a943256c5c047acbf63c279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab6b89f6f2c8192909acb2577a41ada0a05d7034efba34acd38e629488e4020`

```dockerfile
```

-	Layers:
	-	`sha256:eb25149af4d0dbac76dc0b10447b84354b943ff8da4e55068fc009a4062d0199`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 3.6 MB (3619296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b4d6ffc2cbc248c782225aec31b9cd883cb5b9242bf55ec002282896f36ab8a`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d674fc3e7b9d7fb686226fb2da07e0871f1a77cceec3828b5e5c9aad5ebcbfb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31798098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a69822e7a307aedfa9261e0a541cf275518983560fab926eb3441874ed5193`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:20:03 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 02:20:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:20:30 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 02:20:30 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:20:30 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 02:20:30 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 02:20:30 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:20:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:20:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac3b56430e25dc28c1632c2be6afe42169cf1f87f171a980632d1479a297465`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3d65e3790751c351f0b7c4cf23e23fc0dc15143135ffc2a6fdb5da8a12ad20`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e9d24ca59117fb629953027da77c8a71df2998ede511280a59761b694d9b09`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 5.6 MB (5584678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a74ff3aa0fdc12db7347082fee4e7f80adfa15e0d453919c224f99f9b736e1`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a62a36cf7034b120a54d749b81ae1cd17628dcdf9b5797b868c1a229d72d762`  
		Last Modified: Wed, 24 Jun 2026 02:20:38 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:8934267dd6156d087255ac175a951fcfaad307fa358c2311aec6d18a6c196399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd837c3530f3ab149a5c1ef7be00bdb0fffcaac0aef01529ee523d498a4203e`

```dockerfile
```

-	Layers:
	-	`sha256:400f6d4e765b9e0d36ed8233454657914021295ec3d3b8e4762d912f1c5a0135`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 3.6 MB (3618417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b4e857ba760c7cde997c93cf1d99b95339cf36e4e2ca0194774accf7c4c228d`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:70359d7fb44a781828f43e7989f534cc03123a726958fd6f086a37cf9d182f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36384907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333a0dd20195699802bb281055a8d7032862d3fa71317073ba054290704ea75e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:38:10 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 01:38:13 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:38:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 01:38:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:38:35 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 01:38:35 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 01:38:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 01:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:38:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c56cecca3acee2ae15eb7a1b5186ff30d2db843fda27675685e5b75cfee7600`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75f510a51fb4e96abf6d70a7c1921f875cdc2eb81b38cf9d9ab13e807eee721`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4554e2a0adecc5be836299e4d3af9177ecf7549beed54615e1a2ada49d885347`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 6.2 MB (6233986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122a30d33b798544ebce2e31b68bd0f1ca8f5c69976ddd9a3eed8b416077283e`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4591bd22832cb2270e57631661b5ae25db6d5bd94c1f692d18f391bf2651c0ea`  
		Last Modified: Wed, 24 Jun 2026 01:38:43 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:5c54b0e0724fc0dc69bfe42dd51e6f89dd7912bd3ce9507bbb3ed2820c260b6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db30781997cae1255ff4d136c40d33943b8d46a142a765d76162873d64d937ec`

```dockerfile
```

-	Layers:
	-	`sha256:25cda43d846e6acac37f204445b8d57f9299858943165919b74e6dfe063fd301`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 3.6 MB (3621330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:885d2938616a42597697e18f4c20e54a0cd1fbeba2808f3e0980f1dff59d8b82`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; 386

```console
$ docker pull spiped@sha256:329b3110e51ea95f8fd4221ecf5b2da6b14d43b20150626544d0363a357043b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37746479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac42948d7aeb3ebc6b5e8cda984d0d71e90d40fe7f189ed3ce6267e493bc61e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:43:27 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 01:43:30 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:43:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 01:43:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:43:53 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 01:43:54 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 01:43:54 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 01:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:43:54 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a801df5a15b5f0c364817aaacf41dcbc148e50d8462132d0c8e2dc38b0b0bc`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d7b15445e2bcf2c1dadc1666a388219cc148bdc5e0ce3792b0af13af4a24ac`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b814bc3c62d5bb8cf9e762006495b05f0f76186b0645b096d7b3cf4330b48d`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 6.4 MB (6442899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5d54c2660e5104901fd1a60725bb6254b85e0a65d15ed761b1c8c8a889cd7d`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b55fe6c92f49e52bd8461a7a59cf676d50f72c24d61197ee3bc5e6e247e95d`  
		Last Modified: Wed, 24 Jun 2026 01:44:01 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:fd0e8e1fe352c182bc168d1ce12bdbbef5a96dc8526353260b096c76b0a40daf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff2dffca4b31a369e407948d3a13e4866754cee6183f851219f0dd1eeb88a8ec`

```dockerfile
```

-	Layers:
	-	`sha256:1a4efe3989eb42b73070f79950ed47916e91948a434d570acca5a20662cdd96f`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 3.6 MB (3620431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e573d260c8be5d22be38a9a35edf1a4864a7f87f07319b49657f0c772a5501a4`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; ppc64le

```console
$ docker pull spiped@sha256:2e2c57113cec53792f077943c907d86cb3f255083555939537d316894e0f8b78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40449629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f0fddac6d051f05c9660df5d1960ccfbd83cd2d6ab83137ce1abf4594b4078`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 03:23:19 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 03:23:24 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:24:22 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 03:24:22 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 03:24:22 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 03:24:22 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 03:24:22 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 03:24:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 03:24:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19e04238d4b4e9ffb0ef6936017907de44583576700914c690716199ed89b80`  
		Last Modified: Wed, 24 Jun 2026 03:24:39 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2154eccccfedcca208ca4b895d664a0e53c8cee5c938c14100e66440ceec907d`  
		Last Modified: Wed, 24 Jun 2026 03:24:39 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1156e17ce09cd6f685db7d90d7b2e5f2fc3594efa4c27c7f7f8e85deb0eb2e52`  
		Last Modified: Wed, 24 Jun 2026 03:24:40 GMT  
		Size: 6.8 MB (6840867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9eabb0dc2ed4ea5e5b875863a2fc37c10af73ea339e17bd50b0a8bac5c65cc`  
		Last Modified: Wed, 24 Jun 2026 03:24:40 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe277bd275db7cf4627cf8039ef7e268cb31466d6725857e4399c6bea97112f6`  
		Last Modified: Wed, 24 Jun 2026 03:24:41 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:1249a5be6a5aa2d8a741555b8af3dce40f96c0c3f05eef4605d9bd58dc690686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9114c3d4f087d067a08b49ebee18152f8b458dd488a105b99be697861a3f62`

```dockerfile
```

-	Layers:
	-	`sha256:3c3f9e1fab958c9310b258fe7960fd9db89a650560faddaa9daf4ab29cdd180b`  
		Last Modified: Wed, 24 Jun 2026 03:24:40 GMT  
		Size: 3.6 MB (3622039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f8044149fab358df57be12980feb1ab6fed7eb5118f5af5e31a28685e65bde3`  
		Last Modified: Wed, 24 Jun 2026 03:24:39 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; riscv64

```console
$ docker pull spiped@sha256:8b42b6ef334caa5e287c97a428e7cae5a9c3c9f235eb85e3e54d173a95afbb56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37640912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8da71e8cb711b1565cc7f187b1d17023f66558db47d3344c68a47f99f9d12a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 12:39:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 27 Jun 2026 12:39:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 27 Jun 2026 12:43:01 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
VOLUME [/spiped]
# Sat, 27 Jun 2026 12:43:02 GMT
WORKDIR /spiped
# Sat, 27 Jun 2026 12:43:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 27 Jun 2026 12:43:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 27 Jun 2026 12:43:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c661af8a69151e6725c137302b56cedaebbea69195b532d196331cc58aecc2d`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9105e1a21dab819a958fffd00af103ffdff0fc9fb29c4f6e8403537b24dc7838`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 821.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8644521e5d09786f79d1bf0ddb8f91e769cd3193a0178eea6834cbd3efb0e855`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 9.4 MB (9356167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ecceb55b6a1af23d9ee1b78681c351a81e339a95525b31443bba6e35de0ae6`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450e42a3746e6a50052f3dc159bf593a5dfbe45fb04fad6598e3cd00d9d83474`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:a49e815a35801bcfde7c4c83f7e1d9fd683a082faf3ed41eb6a72c3c1c4f3e2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e498e11fe68afb226b5c18b3b50ca738644102e85fb702099075c42094710`

```dockerfile
```

-	Layers:
	-	`sha256:f6e0e71b9b64158613ad0eda366342d23d0d971a87bd85385d2a547fb5980d56`  
		Last Modified: Sat, 27 Jun 2026 12:44:15 GMT  
		Size: 3.6 MB (3613445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a23e8e8c6b0da394b5fcdc89f373d3245fdbb9f4dbd7d75a7d9ff95e0346657`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6` - linux; s390x

```console
$ docker pull spiped@sha256:65f747ca0999bc8478df93012d5c6dacbdd220662dd396e371496580528cbdb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35975900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49785958839f05d0c2c271a80848bd2e6b469441615df64e382e96911bf68e95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:44:56 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 02:44:59 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:45:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 02:45:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:45:17 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 02:45:17 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 02:45:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:45:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:45:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbfcbc754be6671ddfbd7bf51bde8a2d12c72e05ceda284845561732b1b385bd`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d90f038d870699d0ccb1074285f7df7ed5ba9d0bc2b6be5e7ca5d9be3b3334`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c539cb17aa654f1f6bb7705be27d56ce37ec507ec956d05354e80484caef138`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 6.1 MB (6122151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954eca563aeb69bd75c9f08760a711f2abe630a86c143bca6576a41e2e5fe145`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7b5390a5073eb984308661903a660903ac8925dcd2d4c9087af0e439362269`  
		Last Modified: Wed, 24 Jun 2026 02:45:30 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6` - unknown; unknown

```console
$ docker pull spiped@sha256:63b497aeebaba40b27a929f4813761ce699a6f830a31b7db6da8377b5d4f99ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab90edbf5c80b4601dd04b5b5f625b92f026c64d264ad346350bd8f0e724073`

```dockerfile
```

-	Layers:
	-	`sha256:b45e5a28271be1db0a412884998a58da338e5df1b34e083c59910303d93b3b54`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 3.6 MB (3618665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ac5db5258f731293eb73388303efe97f87b210f5e44e07001f5db7277cf58e4`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6-alpine`

```console
$ docker pull spiped@sha256:65c5f6dce8328a5d9e53a08e6fa9361ad63dad4c1a3735e6ca18c82cfa846c2f
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
$ docker pull spiped@sha256:ddacdd500302ed8e0b56cfbe5eba1b03890a3a11103e2e79f118f78819546c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3904546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e50065de302c7f6a370e6ce4b691cc04feab696fd0ca4c59d5c21b96d09a5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:57 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:58 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:53:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:53:07 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:53:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:53:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e11e0fcbf833efd71ccdc39dad69485c2ab9e33be6a7075e11f23dfc938ee0b`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3df5ddcf63216635d6ac9800edfcdf71dbf67c7328ec84d1b3ab49da64adf0`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 7.9 KB (7939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bf1a439bfe49642cefb4e5461e95befb5f5a9b5cced180eaf651935a1246f9`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 107.6 KB (107630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2716e286de0031c590e0551ee0bcfbe0740fde1029874d538fecad89dadaca`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe62eb4d32c49f1f3ab36f4fa4341f61fe5f3eccfbb08576ec70be11772704af`  
		Last Modified: Mon, 22 Jun 2026 19:53:13 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:9cd92d324e4bfd0a2ea1f55c9daaf43dd5a3704affe05d59359da761a3ea9a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 KB (96455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70e5224458648b69c985eed8348a59c952ae7671493ce0b9764ad70c0812c47`

```dockerfile
```

-	Layers:
	-	`sha256:b0302e3cc8209d3dfd914c793e581ee84da322d428e5b5ccf19df7d08480f8f7`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 82.2 KB (82197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd339b140e490f5380bd78b29356f7f2ac4429526ab1280b93588123237521bf`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 14.3 KB (14258 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:797576782eff7b771cd16a7c70d7d3aa681429bfc3a96e3d9caf80de53e1d13c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8d26831f4f0d4c40c83254a01dab731517f05ccd3e8233eba9e650a658977b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:53:51 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:53:52 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:02 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3032dd20d72fa4a27591cfc40f8eec5d055f3f37cc9eb06329f5cf0e83e19248`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b413eab28f41a1f71ea4831c00e243457d2f484d8b30471a585c9b791580a4`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ddd27b334e342120f96e4a55937070fef9371ea62ef8a2ee2675febdbac2b8`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 89.1 KB (89146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35522b2f0660a559efa25d5c51d7550bf5f21e1df140bd02686304e0d54a6686`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70feae8af381e1a5e4dd52b1857289c5766c1fff41f5d377dbde68b6ac8eb2d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:07 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ab1ba7ca7bcdc700ff165912b9b972504e3ae861646327b59b12551cc63bfff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae2dc57358030a5ccab2ec7826df8c7578005f688b14a6f0440f1e345896ea1`

```dockerfile
```

-	Layers:
	-	`sha256:653d549a72bdd578904772adf12dac81809cf8fb791235e047142cc62a095fe5`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:0a4bc8b8eb635c2de45437d249d8467c9a1d4bfa67588b7c2b7c356a09950769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3300611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdc9d57160696d38e8f96024ccba6e14e8a961af83fec3bc71547d3c2ac3477`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:07:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:07:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:07:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:07:40 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:07:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:07:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d412bd01e6b05daa916f63dc49f85e1bc0e28908a915ab5433ee4f773b6d99`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4ca329ff828ab9881adaf1200feef78590b5cf682e928e28811a80fc9ca00c`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 7.9 KB (7942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bdfa617d32bd950a899f3c37fc1051103abe4c515575fd0c7a470311e7b1ce`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 81.7 KB (81676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb812de9569e6ea964dc192f484efa8f8b40f959ca1aa1cd28efb07d516b3b9`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f94d3b42c6fde945cb292d2ce19b88b4443336f40fd734cfd412ab84954e46`  
		Last Modified: Mon, 22 Jun 2026 20:07:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:a5f2de2594b64ce8777794fecdc26dffd6889de81c77f5c600f9de67ac2808f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bfc8e0afd039f2387a8475a01f7c55cbb7d95c208d3d65e460898634384300`

```dockerfile
```

-	Layers:
	-	`sha256:c1b261c11b2c6ba30671daf53c170874acef4bb4b844d659bf83d547ab4c5775`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 82.2 KB (82233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2429075ab54969202e940d2018a2e0c6eed6ef226d06edb7ace72b19cc19023a`  
		Last Modified: Mon, 22 Jun 2026 20:07:44 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:4756e80b073870da1063f3705ae4982190aab4ed9e17ddc85106f245d2ed7949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4230427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82eb3d5165ba6084a012344ffcdb5bf8cb8999837174113d002240db059e9432`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:08 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:54:09 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:19 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f19dec4b471d7fccd4a70ac0b2f8e3fe4c7aad315844c4b6ea4cc1f27a9e75b`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e119200034afb1c7ec26c08862296c1ebb06ad0e089656c82a87b0cc2ce3d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed72e155ad35b783a3b2fd26113062c65385d060c1107fd7be78775b11f5df`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 100.6 KB (100613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012dc19e314abeb9a680712049f471d7b225578b746a84c90ddf45f42863b3f3`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2921724d5472f855da9782445382b4df2dbc3fea41b0771456c4bd179c3ac9`  
		Last Modified: Mon, 22 Jun 2026 19:54:25 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:309e398654c9ffb57cf24a14fea4bf0c2931193c153dd095abeba42196ed37a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9077526648e3aefcc0edbf377ed5794fd580e0064ae615bf7362ce85c3273ad3`

```dockerfile
```

-	Layers:
	-	`sha256:e905129a42e7e89130d80f327d3c87b9cdafa58974899da48f451b550c597127`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 82.3 KB (82253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f134d75f49539af75c4f9aa3c0a55672a33a54cf8bf103699ca234354693077c`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; 386

```console
$ docker pull spiped@sha256:6f3becd5ab17860d0d79cdad5a8314f9f41ade80934bec3e845f2be0549f7399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3735070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c2c4aea7b344dfb6e18f2e0fca5adbbeb691624d97cccfc1e5787f7112f1c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:33 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:34 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:52:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:52:45 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:52:45 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:52:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a4b74ab0c43260cc6600b37d5a1ed742d904bba03625caa74b18e45744cde3d1`  
		Last Modified: Mon, 22 Jun 2026 12:03:14 GMT  
		Size: 3.6 MB (3605660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370212c6233698cf3a2cededd4bd44f00eac7c5e03af3c80a0a1d46c8a4ffdf3`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9589ee7d567bbc2c8b0bdd8091e2600f7493e43c86c9291e8e0c5cb80c56fd63`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a2e946a568955b4fc26e807e13538dfc53fdf5c40195b033d6738d5eb47988`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 120.1 KB (120096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c4c53f53316aa33359a13371beb39c12857d53615d08c755157fbd69bb338d`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3585934873b3572c65ed05b1212ac1144f16b9ef8468d66230cedacf8c04ab`  
		Last Modified: Mon, 22 Jun 2026 19:52:51 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:069fb82d31cd63808dd6a7d5c56b36a98d126a4f8d452cff42e101a369d62c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 KB (96395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99309a2ee767f77be492110796b79f8f183f4a91c5e150ce93856bfc9eb541a`

```dockerfile
```

-	Layers:
	-	`sha256:f85f07db752d4a828f227d726b92f676379255ba60f6efa8fb1a91b8cb20e575`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 82.2 KB (82172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee94877067613386073525f14205ddff5c1f158f239bc7509f064e7c73ecc48`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:c1cc5f07977afbecc6356458f2b32eba83fa27f15ccfd2fd3e1a735a9d57b1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1c41ea4dd6c0ecf7549da3addeae10ba93f78fd54e1c25dc1de93b83dbcef9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:26 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:49:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:49:41 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:49:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:49:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:49:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8203cae090da16e6a26a19619250dfaa442cb32235cdccd7cb43959f818529b7`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e141cab491eae5adef4000a749c7334bb35071c283424a3e6d61bafc55774e`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063a2b717927234acb021b3fbecf699ef3ef9fdbe005228543b3b50abd0c2681`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 112.7 KB (112671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4dcf9f6d4df2d7a2d5e4998ebe2ebe871012e544f924a9dfaace1206c4e4a77`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14dd2ccd865e90e1e74f998e912444647e73bb63b2cf5ff235507a53e5461d2b`  
		Last Modified: Mon, 22 Jun 2026 20:49:51 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:d97f431503fec6a0898b87e684a46fe7de9dfe5dccf289602c9596f0c95dadc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d6978a0a9849095e5cd36dd6b0c911189e1f6b75b63343dd0ecd79e6994e2e`

```dockerfile
```

-	Layers:
	-	`sha256:a6c98df3c7c9a98937e2a636caa44c78d547e61fd63227193ef10f8a14f8c96f`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 80.3 KB (80280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d374e384bd04e331461c24f14d6e6c07dc2058022dceb8114ea239bcdf30f50b`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:7c55cf1db5a5901566225dae8aa86f9d7296297bc0723740f2503c7fd60d9e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab9429e74c9709526497653458a19ba933ff5b18e0b054491cacc13378c4c1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:31:20 GMT
ADD alpine-minirootfs-3.22.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:31:20 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:06:52 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Tue, 23 Jun 2026 14:06:56 GMT
RUN apk add --no-cache libssl3 # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 23 Jun 2026 14:08:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
VOLUME [/spiped]
# Tue, 23 Jun 2026 14:08:34 GMT
WORKDIR /spiped
# Tue, 23 Jun 2026 14:08:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 14:08:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:160e037585664aec873ff4e42ff1b3ec48c67e0a12f176af61b462e34f272486`  
		Last Modified: Mon, 22 Jun 2026 19:31:45 GMT  
		Size: 3.5 MB (3506790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5e4b9469bbcf827fcf8175f0f8390bc0349727332117a5909893d175688b7`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49fc02eca1309f17befe495f79f496539aa40f91feb374576580ff3cc453fdf6`  
		Last Modified: Tue, 23 Jun 2026 14:08:53 GMT  
		Size: 7.9 KB (7941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3d6b3b425470c1da1fb6d70ede8d1ef5a956da0997b062fa5bd647847744e9`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 98.9 KB (98855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a05f4e795cd73fb37c80cfb48949c8d59d40b466fdc1bb34a73f91253bc6bcb`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ab2c7a9249290ea9c2c662eef520449b62b7e54a9324a7e50bcd5e255d3015`  
		Last Modified: Tue, 23 Jun 2026 14:08:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:01f4ad9340260f57ac99800cc323b0e42a965c6040232584fbabd5d88ed54008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792f648635f4c4b7d9de3f64ec8b7a037c09ec3c08aafaa32279b00123c129c4`

```dockerfile
```

-	Layers:
	-	`sha256:5fd43af2e4bad636e2d12491abcd917c00dd3d05ebd62edbb86d2d3d3b515a5c`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 80.3 KB (80276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97269dee5f4329e1526ae35a794a6cfda7f1a4ec84fc4df937e6b8872af90609`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:0f4e2ac2322703fe6510e68d25e037fe8261a0bc9edce94cf8c39cd0e45679c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f680bcc09744ca6d93819bd89af83997eb20d8ba6403f6529f6fcea9f8ba59e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:11:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:11:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:11:38 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:11:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce110fc44f98dbd983018fc83be7dc4329d59ed8ddfb1a8bb69f20d03326cb4`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af21f5dc378d28733cb11d9df6c93ab62cc9e42b429dea869cc6989f2d58e613`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 7.9 KB (7944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b687826bae76a65f4d3b5c85cca9d98459d1733e7fd342dd2f66c4a7f78a8d`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.9 KB (96930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b873740796eacbe60766007373af8305b09a49dca895aac969824d5989429eb`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7a2bafd6fc5806c07cffe82bc1181977e45bf21517442252f56b7867408cca`  
		Last Modified: Mon, 22 Jun 2026 20:11:47 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1c59034fee4ca2ec06abd17bbc1298b5b69cefd1b59fcc85334034cb1e3c886b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205b438cf1af18e7fc393a20c426434c40fb8b2a4eea4da055a1ae479d9214cb`

```dockerfile
```

-	Layers:
	-	`sha256:0260c6f5acc5a9e459aa5186e8ec9bad6dc107b7a6a1b1e4ec870641541cbf60`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 80.2 KB (80246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ac3c9b67b078306b16438482d144e3742cf7be27d981f5f53aa392760585fac`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 14.3 KB (14254 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6.4`

```console
$ docker pull spiped@sha256:b72665931842767b39a2b1345425107437a354f8747b6003d068830ccbb50b19
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
$ docker pull spiped@sha256:6a1c08f450fe4a3d134f1111325ef33e4003c8ed2780759219529f34a7640ed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36831240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:358ecc0e9f6a0eac32411590d7266fd4991df318ef2e12c9d325fa5181306cf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:38:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:38:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:38:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:38:35 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:38:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:38:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e98d784cad396f1dce4ab75c18b4e68b4bc61d93f81d3a819670911b6d1c0baf`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86116237c116d1ffc64d01e3148583c562be5938bc81f752556247b3a5f59ab`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0137c97c537b44a497fdbbfe636f3c25e96d74d8f220fd87ba76e627f20ada9`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 7.0 MB (7047965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a71ca68d2f895e56c8406e5d84d0393e83968dba32b2cd8399b9607ed544952`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa5b4eaf338a3b82d0a0fceec447a6ceeb09497e40b28a57fb8a0b207a2ebe7`  
		Last Modified: Tue, 14 Jul 2026 01:38:44 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:f66a2d3f49cbbb24a7c921628f5faa0d820bc7ca2fa155aefbc84432dda277fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e380bc7b2a4b4cb382414e977b4acb5db51e5cd5dbcaaac77c5899a2b69851`

```dockerfile
```

-	Layers:
	-	`sha256:eda316afa79ca9051344f07e05a62106096d097a3541fbc38522dda9ea15787f`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 3.6 MB (3626338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2789a698aab0772b0399761589d6c64d9331b7c6d9909166197a07de28524559`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v5

```console
$ docker pull spiped@sha256:cbc27bc42927bc3200affb020d97037dbb37c62e90b2868378a34d32a8e11ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33750871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766b4a17096df8d833a99075caa511c263015bfeb6c3bf40bb33c2b3c6d02ffa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:18:10 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 02:18:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:18:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 02:18:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:18:40 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 02:18:40 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 02:18:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:18:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b5e30154a279e69e1c7ea729367ea58e91a00a47d5d390b7ff8ee2af524319`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d896fa19c1a7364dd8daf6265e4c546c0d425f2fd7753d3a7976c9f7dbd384c4`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc0effdc2da943945024a94ccbd8045149c442a5655a20944fcc844297abdd19`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 5.8 MB (5789284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e5835a1689f8c59223be41c30095877ba7d662f10d5d864ae289d58321131f`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b81cdd98d02e0ef50cec01db8c8359fb6b1749aec79ddf8a3ec5cd7f08292f`  
		Last Modified: Wed, 24 Jun 2026 02:18:48 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:42118df3a78ca6bff6bbd1b0f62e537377eb38762a943256c5c047acbf63c279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab6b89f6f2c8192909acb2577a41ada0a05d7034efba34acd38e629488e4020`

```dockerfile
```

-	Layers:
	-	`sha256:eb25149af4d0dbac76dc0b10447b84354b943ff8da4e55068fc009a4062d0199`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 3.6 MB (3619296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b4d6ffc2cbc248c782225aec31b9cd883cb5b9242bf55ec002282896f36ab8a`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d674fc3e7b9d7fb686226fb2da07e0871f1a77cceec3828b5e5c9aad5ebcbfb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31798098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a69822e7a307aedfa9261e0a541cf275518983560fab926eb3441874ed5193`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:20:03 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 02:20:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:20:30 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 02:20:30 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:20:30 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 02:20:30 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 02:20:30 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:20:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:20:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac3b56430e25dc28c1632c2be6afe42169cf1f87f171a980632d1479a297465`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3d65e3790751c351f0b7c4cf23e23fc0dc15143135ffc2a6fdb5da8a12ad20`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e9d24ca59117fb629953027da77c8a71df2998ede511280a59761b694d9b09`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 5.6 MB (5584678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a74ff3aa0fdc12db7347082fee4e7f80adfa15e0d453919c224f99f9b736e1`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a62a36cf7034b120a54d749b81ae1cd17628dcdf9b5797b868c1a229d72d762`  
		Last Modified: Wed, 24 Jun 2026 02:20:38 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:8934267dd6156d087255ac175a951fcfaad307fa358c2311aec6d18a6c196399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd837c3530f3ab149a5c1ef7be00bdb0fffcaac0aef01529ee523d498a4203e`

```dockerfile
```

-	Layers:
	-	`sha256:400f6d4e765b9e0d36ed8233454657914021295ec3d3b8e4762d912f1c5a0135`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 3.6 MB (3618417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b4e857ba760c7cde997c93cf1d99b95339cf36e4e2ca0194774accf7c4c228d`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:70359d7fb44a781828f43e7989f534cc03123a726958fd6f086a37cf9d182f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36384907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333a0dd20195699802bb281055a8d7032862d3fa71317073ba054290704ea75e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:38:10 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 01:38:13 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:38:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 01:38:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:38:35 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 01:38:35 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 01:38:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 01:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:38:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c56cecca3acee2ae15eb7a1b5186ff30d2db843fda27675685e5b75cfee7600`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75f510a51fb4e96abf6d70a7c1921f875cdc2eb81b38cf9d9ab13e807eee721`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4554e2a0adecc5be836299e4d3af9177ecf7549beed54615e1a2ada49d885347`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 6.2 MB (6233986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122a30d33b798544ebce2e31b68bd0f1ca8f5c69976ddd9a3eed8b416077283e`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4591bd22832cb2270e57631661b5ae25db6d5bd94c1f692d18f391bf2651c0ea`  
		Last Modified: Wed, 24 Jun 2026 01:38:43 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:5c54b0e0724fc0dc69bfe42dd51e6f89dd7912bd3ce9507bbb3ed2820c260b6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db30781997cae1255ff4d136c40d33943b8d46a142a765d76162873d64d937ec`

```dockerfile
```

-	Layers:
	-	`sha256:25cda43d846e6acac37f204445b8d57f9299858943165919b74e6dfe063fd301`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 3.6 MB (3621330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:885d2938616a42597697e18f4c20e54a0cd1fbeba2808f3e0980f1dff59d8b82`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; 386

```console
$ docker pull spiped@sha256:329b3110e51ea95f8fd4221ecf5b2da6b14d43b20150626544d0363a357043b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37746479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac42948d7aeb3ebc6b5e8cda984d0d71e90d40fe7f189ed3ce6267e493bc61e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:43:27 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 01:43:30 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:43:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 01:43:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:43:53 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 01:43:54 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 01:43:54 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 01:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:43:54 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a801df5a15b5f0c364817aaacf41dcbc148e50d8462132d0c8e2dc38b0b0bc`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d7b15445e2bcf2c1dadc1666a388219cc148bdc5e0ce3792b0af13af4a24ac`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b814bc3c62d5bb8cf9e762006495b05f0f76186b0645b096d7b3cf4330b48d`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 6.4 MB (6442899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5d54c2660e5104901fd1a60725bb6254b85e0a65d15ed761b1c8c8a889cd7d`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b55fe6c92f49e52bd8461a7a59cf676d50f72c24d61197ee3bc5e6e247e95d`  
		Last Modified: Wed, 24 Jun 2026 01:44:01 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:fd0e8e1fe352c182bc168d1ce12bdbbef5a96dc8526353260b096c76b0a40daf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff2dffca4b31a369e407948d3a13e4866754cee6183f851219f0dd1eeb88a8ec`

```dockerfile
```

-	Layers:
	-	`sha256:1a4efe3989eb42b73070f79950ed47916e91948a434d570acca5a20662cdd96f`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 3.6 MB (3620431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e573d260c8be5d22be38a9a35edf1a4864a7f87f07319b49657f0c772a5501a4`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; ppc64le

```console
$ docker pull spiped@sha256:2e2c57113cec53792f077943c907d86cb3f255083555939537d316894e0f8b78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40449629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f0fddac6d051f05c9660df5d1960ccfbd83cd2d6ab83137ce1abf4594b4078`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 03:23:19 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 03:23:24 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:24:22 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 03:24:22 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 03:24:22 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 03:24:22 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 03:24:22 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 03:24:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 03:24:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19e04238d4b4e9ffb0ef6936017907de44583576700914c690716199ed89b80`  
		Last Modified: Wed, 24 Jun 2026 03:24:39 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2154eccccfedcca208ca4b895d664a0e53c8cee5c938c14100e66440ceec907d`  
		Last Modified: Wed, 24 Jun 2026 03:24:39 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1156e17ce09cd6f685db7d90d7b2e5f2fc3594efa4c27c7f7f8e85deb0eb2e52`  
		Last Modified: Wed, 24 Jun 2026 03:24:40 GMT  
		Size: 6.8 MB (6840867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9eabb0dc2ed4ea5e5b875863a2fc37c10af73ea339e17bd50b0a8bac5c65cc`  
		Last Modified: Wed, 24 Jun 2026 03:24:40 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe277bd275db7cf4627cf8039ef7e268cb31466d6725857e4399c6bea97112f6`  
		Last Modified: Wed, 24 Jun 2026 03:24:41 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:1249a5be6a5aa2d8a741555b8af3dce40f96c0c3f05eef4605d9bd58dc690686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9114c3d4f087d067a08b49ebee18152f8b458dd488a105b99be697861a3f62`

```dockerfile
```

-	Layers:
	-	`sha256:3c3f9e1fab958c9310b258fe7960fd9db89a650560faddaa9daf4ab29cdd180b`  
		Last Modified: Wed, 24 Jun 2026 03:24:40 GMT  
		Size: 3.6 MB (3622039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f8044149fab358df57be12980feb1ab6fed7eb5118f5af5e31a28685e65bde3`  
		Last Modified: Wed, 24 Jun 2026 03:24:39 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; riscv64

```console
$ docker pull spiped@sha256:8b42b6ef334caa5e287c97a428e7cae5a9c3c9f235eb85e3e54d173a95afbb56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37640912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8da71e8cb711b1565cc7f187b1d17023f66558db47d3344c68a47f99f9d12a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 12:39:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 27 Jun 2026 12:39:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 27 Jun 2026 12:43:01 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
VOLUME [/spiped]
# Sat, 27 Jun 2026 12:43:02 GMT
WORKDIR /spiped
# Sat, 27 Jun 2026 12:43:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 27 Jun 2026 12:43:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 27 Jun 2026 12:43:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c661af8a69151e6725c137302b56cedaebbea69195b532d196331cc58aecc2d`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9105e1a21dab819a958fffd00af103ffdff0fc9fb29c4f6e8403537b24dc7838`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 821.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8644521e5d09786f79d1bf0ddb8f91e769cd3193a0178eea6834cbd3efb0e855`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 9.4 MB (9356167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ecceb55b6a1af23d9ee1b78681c351a81e339a95525b31443bba6e35de0ae6`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450e42a3746e6a50052f3dc159bf593a5dfbe45fb04fad6598e3cd00d9d83474`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:a49e815a35801bcfde7c4c83f7e1d9fd683a082faf3ed41eb6a72c3c1c4f3e2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e498e11fe68afb226b5c18b3b50ca738644102e85fb702099075c42094710`

```dockerfile
```

-	Layers:
	-	`sha256:f6e0e71b9b64158613ad0eda366342d23d0d971a87bd85385d2a547fb5980d56`  
		Last Modified: Sat, 27 Jun 2026 12:44:15 GMT  
		Size: 3.6 MB (3613445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a23e8e8c6b0da394b5fcdc89f373d3245fdbb9f4dbd7d75a7d9ff95e0346657`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4` - linux; s390x

```console
$ docker pull spiped@sha256:65f747ca0999bc8478df93012d5c6dacbdd220662dd396e371496580528cbdb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35975900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49785958839f05d0c2c271a80848bd2e6b469441615df64e382e96911bf68e95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:44:56 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 02:44:59 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:45:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 02:45:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:45:17 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 02:45:17 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 02:45:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:45:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:45:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbfcbc754be6671ddfbd7bf51bde8a2d12c72e05ceda284845561732b1b385bd`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d90f038d870699d0ccb1074285f7df7ed5ba9d0bc2b6be5e7ca5d9be3b3334`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c539cb17aa654f1f6bb7705be27d56ce37ec507ec956d05354e80484caef138`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 6.1 MB (6122151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954eca563aeb69bd75c9f08760a711f2abe630a86c143bca6576a41e2e5fe145`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7b5390a5073eb984308661903a660903ac8925dcd2d4c9087af0e439362269`  
		Last Modified: Wed, 24 Jun 2026 02:45:30 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4` - unknown; unknown

```console
$ docker pull spiped@sha256:63b497aeebaba40b27a929f4813761ce699a6f830a31b7db6da8377b5d4f99ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab90edbf5c80b4601dd04b5b5f625b92f026c64d264ad346350bd8f0e724073`

```dockerfile
```

-	Layers:
	-	`sha256:b45e5a28271be1db0a412884998a58da338e5df1b34e083c59910303d93b3b54`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 3.6 MB (3618665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ac5db5258f731293eb73388303efe97f87b210f5e44e07001f5db7277cf58e4`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:1.6.4-alpine`

```console
$ docker pull spiped@sha256:65c5f6dce8328a5d9e53a08e6fa9361ad63dad4c1a3735e6ca18c82cfa846c2f
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
$ docker pull spiped@sha256:ddacdd500302ed8e0b56cfbe5eba1b03890a3a11103e2e79f118f78819546c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3904546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e50065de302c7f6a370e6ce4b691cc04feab696fd0ca4c59d5c21b96d09a5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:57 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:58 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:53:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:53:07 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:53:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:53:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e11e0fcbf833efd71ccdc39dad69485c2ab9e33be6a7075e11f23dfc938ee0b`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3df5ddcf63216635d6ac9800edfcdf71dbf67c7328ec84d1b3ab49da64adf0`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 7.9 KB (7939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bf1a439bfe49642cefb4e5461e95befb5f5a9b5cced180eaf651935a1246f9`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 107.6 KB (107630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2716e286de0031c590e0551ee0bcfbe0740fde1029874d538fecad89dadaca`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe62eb4d32c49f1f3ab36f4fa4341f61fe5f3eccfbb08576ec70be11772704af`  
		Last Modified: Mon, 22 Jun 2026 19:53:13 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:9cd92d324e4bfd0a2ea1f55c9daaf43dd5a3704affe05d59359da761a3ea9a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 KB (96455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70e5224458648b69c985eed8348a59c952ae7671493ce0b9764ad70c0812c47`

```dockerfile
```

-	Layers:
	-	`sha256:b0302e3cc8209d3dfd914c793e581ee84da322d428e5b5ccf19df7d08480f8f7`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 82.2 KB (82197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd339b140e490f5380bd78b29356f7f2ac4429526ab1280b93588123237521bf`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 14.3 KB (14258 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:797576782eff7b771cd16a7c70d7d3aa681429bfc3a96e3d9caf80de53e1d13c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8d26831f4f0d4c40c83254a01dab731517f05ccd3e8233eba9e650a658977b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:53:51 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:53:52 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:02 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3032dd20d72fa4a27591cfc40f8eec5d055f3f37cc9eb06329f5cf0e83e19248`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b413eab28f41a1f71ea4831c00e243457d2f484d8b30471a585c9b791580a4`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ddd27b334e342120f96e4a55937070fef9371ea62ef8a2ee2675febdbac2b8`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 89.1 KB (89146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35522b2f0660a559efa25d5c51d7550bf5f21e1df140bd02686304e0d54a6686`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70feae8af381e1a5e4dd52b1857289c5766c1fff41f5d377dbde68b6ac8eb2d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:07 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ab1ba7ca7bcdc700ff165912b9b972504e3ae861646327b59b12551cc63bfff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae2dc57358030a5ccab2ec7826df8c7578005f688b14a6f0440f1e345896ea1`

```dockerfile
```

-	Layers:
	-	`sha256:653d549a72bdd578904772adf12dac81809cf8fb791235e047142cc62a095fe5`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:0a4bc8b8eb635c2de45437d249d8467c9a1d4bfa67588b7c2b7c356a09950769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3300611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdc9d57160696d38e8f96024ccba6e14e8a961af83fec3bc71547d3c2ac3477`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:07:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:07:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:07:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:07:40 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:07:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:07:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d412bd01e6b05daa916f63dc49f85e1bc0e28908a915ab5433ee4f773b6d99`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4ca329ff828ab9881adaf1200feef78590b5cf682e928e28811a80fc9ca00c`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 7.9 KB (7942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bdfa617d32bd950a899f3c37fc1051103abe4c515575fd0c7a470311e7b1ce`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 81.7 KB (81676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb812de9569e6ea964dc192f484efa8f8b40f959ca1aa1cd28efb07d516b3b9`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f94d3b42c6fde945cb292d2ce19b88b4443336f40fd734cfd412ab84954e46`  
		Last Modified: Mon, 22 Jun 2026 20:07:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:a5f2de2594b64ce8777794fecdc26dffd6889de81c77f5c600f9de67ac2808f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bfc8e0afd039f2387a8475a01f7c55cbb7d95c208d3d65e460898634384300`

```dockerfile
```

-	Layers:
	-	`sha256:c1b261c11b2c6ba30671daf53c170874acef4bb4b844d659bf83d547ab4c5775`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 82.2 KB (82233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2429075ab54969202e940d2018a2e0c6eed6ef226d06edb7ace72b19cc19023a`  
		Last Modified: Mon, 22 Jun 2026 20:07:44 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:4756e80b073870da1063f3705ae4982190aab4ed9e17ddc85106f245d2ed7949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4230427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82eb3d5165ba6084a012344ffcdb5bf8cb8999837174113d002240db059e9432`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:08 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:54:09 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:19 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f19dec4b471d7fccd4a70ac0b2f8e3fe4c7aad315844c4b6ea4cc1f27a9e75b`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e119200034afb1c7ec26c08862296c1ebb06ad0e089656c82a87b0cc2ce3d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed72e155ad35b783a3b2fd26113062c65385d060c1107fd7be78775b11f5df`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 100.6 KB (100613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012dc19e314abeb9a680712049f471d7b225578b746a84c90ddf45f42863b3f3`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2921724d5472f855da9782445382b4df2dbc3fea41b0771456c4bd179c3ac9`  
		Last Modified: Mon, 22 Jun 2026 19:54:25 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:309e398654c9ffb57cf24a14fea4bf0c2931193c153dd095abeba42196ed37a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9077526648e3aefcc0edbf377ed5794fd580e0064ae615bf7362ce85c3273ad3`

```dockerfile
```

-	Layers:
	-	`sha256:e905129a42e7e89130d80f327d3c87b9cdafa58974899da48f451b550c597127`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 82.3 KB (82253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f134d75f49539af75c4f9aa3c0a55672a33a54cf8bf103699ca234354693077c`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; 386

```console
$ docker pull spiped@sha256:6f3becd5ab17860d0d79cdad5a8314f9f41ade80934bec3e845f2be0549f7399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3735070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c2c4aea7b344dfb6e18f2e0fca5adbbeb691624d97cccfc1e5787f7112f1c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:33 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:34 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:52:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:52:45 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:52:45 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:52:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a4b74ab0c43260cc6600b37d5a1ed742d904bba03625caa74b18e45744cde3d1`  
		Last Modified: Mon, 22 Jun 2026 12:03:14 GMT  
		Size: 3.6 MB (3605660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370212c6233698cf3a2cededd4bd44f00eac7c5e03af3c80a0a1d46c8a4ffdf3`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9589ee7d567bbc2c8b0bdd8091e2600f7493e43c86c9291e8e0c5cb80c56fd63`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a2e946a568955b4fc26e807e13538dfc53fdf5c40195b033d6738d5eb47988`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 120.1 KB (120096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c4c53f53316aa33359a13371beb39c12857d53615d08c755157fbd69bb338d`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3585934873b3572c65ed05b1212ac1144f16b9ef8468d66230cedacf8c04ab`  
		Last Modified: Mon, 22 Jun 2026 19:52:51 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:069fb82d31cd63808dd6a7d5c56b36a98d126a4f8d452cff42e101a369d62c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 KB (96395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99309a2ee767f77be492110796b79f8f183f4a91c5e150ce93856bfc9eb541a`

```dockerfile
```

-	Layers:
	-	`sha256:f85f07db752d4a828f227d726b92f676379255ba60f6efa8fb1a91b8cb20e575`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 82.2 KB (82172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee94877067613386073525f14205ddff5c1f158f239bc7509f064e7c73ecc48`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:c1cc5f07977afbecc6356458f2b32eba83fa27f15ccfd2fd3e1a735a9d57b1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1c41ea4dd6c0ecf7549da3addeae10ba93f78fd54e1c25dc1de93b83dbcef9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:26 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:49:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:49:41 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:49:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:49:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:49:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8203cae090da16e6a26a19619250dfaa442cb32235cdccd7cb43959f818529b7`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e141cab491eae5adef4000a749c7334bb35071c283424a3e6d61bafc55774e`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063a2b717927234acb021b3fbecf699ef3ef9fdbe005228543b3b50abd0c2681`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 112.7 KB (112671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4dcf9f6d4df2d7a2d5e4998ebe2ebe871012e544f924a9dfaace1206c4e4a77`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14dd2ccd865e90e1e74f998e912444647e73bb63b2cf5ff235507a53e5461d2b`  
		Last Modified: Mon, 22 Jun 2026 20:49:51 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:d97f431503fec6a0898b87e684a46fe7de9dfe5dccf289602c9596f0c95dadc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d6978a0a9849095e5cd36dd6b0c911189e1f6b75b63343dd0ecd79e6994e2e`

```dockerfile
```

-	Layers:
	-	`sha256:a6c98df3c7c9a98937e2a636caa44c78d547e61fd63227193ef10f8a14f8c96f`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 80.3 KB (80280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d374e384bd04e331461c24f14d6e6c07dc2058022dceb8114ea239bcdf30f50b`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:7c55cf1db5a5901566225dae8aa86f9d7296297bc0723740f2503c7fd60d9e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab9429e74c9709526497653458a19ba933ff5b18e0b054491cacc13378c4c1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:31:20 GMT
ADD alpine-minirootfs-3.22.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:31:20 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:06:52 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Tue, 23 Jun 2026 14:06:56 GMT
RUN apk add --no-cache libssl3 # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 23 Jun 2026 14:08:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
VOLUME [/spiped]
# Tue, 23 Jun 2026 14:08:34 GMT
WORKDIR /spiped
# Tue, 23 Jun 2026 14:08:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 14:08:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:160e037585664aec873ff4e42ff1b3ec48c67e0a12f176af61b462e34f272486`  
		Last Modified: Mon, 22 Jun 2026 19:31:45 GMT  
		Size: 3.5 MB (3506790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5e4b9469bbcf827fcf8175f0f8390bc0349727332117a5909893d175688b7`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49fc02eca1309f17befe495f79f496539aa40f91feb374576580ff3cc453fdf6`  
		Last Modified: Tue, 23 Jun 2026 14:08:53 GMT  
		Size: 7.9 KB (7941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3d6b3b425470c1da1fb6d70ede8d1ef5a956da0997b062fa5bd647847744e9`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 98.9 KB (98855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a05f4e795cd73fb37c80cfb48949c8d59d40b466fdc1bb34a73f91253bc6bcb`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ab2c7a9249290ea9c2c662eef520449b62b7e54a9324a7e50bcd5e255d3015`  
		Last Modified: Tue, 23 Jun 2026 14:08:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:01f4ad9340260f57ac99800cc323b0e42a965c6040232584fbabd5d88ed54008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792f648635f4c4b7d9de3f64ec8b7a037c09ec3c08aafaa32279b00123c129c4`

```dockerfile
```

-	Layers:
	-	`sha256:5fd43af2e4bad636e2d12491abcd917c00dd3d05ebd62edbb86d2d3d3b515a5c`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 80.3 KB (80276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97269dee5f4329e1526ae35a794a6cfda7f1a4ec84fc4df937e6b8872af90609`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:1.6.4-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:0f4e2ac2322703fe6510e68d25e037fe8261a0bc9edce94cf8c39cd0e45679c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f680bcc09744ca6d93819bd89af83997eb20d8ba6403f6529f6fcea9f8ba59e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:11:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:11:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:11:38 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:11:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce110fc44f98dbd983018fc83be7dc4329d59ed8ddfb1a8bb69f20d03326cb4`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af21f5dc378d28733cb11d9df6c93ab62cc9e42b429dea869cc6989f2d58e613`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 7.9 KB (7944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b687826bae76a65f4d3b5c85cca9d98459d1733e7fd342dd2f66c4a7f78a8d`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.9 KB (96930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b873740796eacbe60766007373af8305b09a49dca895aac969824d5989429eb`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7a2bafd6fc5806c07cffe82bc1181977e45bf21517442252f56b7867408cca`  
		Last Modified: Mon, 22 Jun 2026 20:11:47 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:1.6.4-alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1c59034fee4ca2ec06abd17bbc1298b5b69cefd1b59fcc85334034cb1e3c886b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205b438cf1af18e7fc393a20c426434c40fb8b2a4eea4da055a1ae479d9214cb`

```dockerfile
```

-	Layers:
	-	`sha256:0260c6f5acc5a9e459aa5186e8ec9bad6dc107b7a6a1b1e4ec870641541cbf60`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 80.2 KB (80246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ac3c9b67b078306b16438482d144e3742cf7be27d981f5f53aa392760585fac`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 14.3 KB (14254 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:alpine`

```console
$ docker pull spiped@sha256:65c5f6dce8328a5d9e53a08e6fa9361ad63dad4c1a3735e6ca18c82cfa846c2f
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
$ docker pull spiped@sha256:ddacdd500302ed8e0b56cfbe5eba1b03890a3a11103e2e79f118f78819546c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3904546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e50065de302c7f6a370e6ce4b691cc04feab696fd0ca4c59d5c21b96d09a5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:57 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:58 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:53:07 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:53:07 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:53:07 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:53:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:53:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e11e0fcbf833efd71ccdc39dad69485c2ab9e33be6a7075e11f23dfc938ee0b`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3df5ddcf63216635d6ac9800edfcdf71dbf67c7328ec84d1b3ab49da64adf0`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 7.9 KB (7939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bf1a439bfe49642cefb4e5461e95befb5f5a9b5cced180eaf651935a1246f9`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 107.6 KB (107630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2716e286de0031c590e0551ee0bcfbe0740fde1029874d538fecad89dadaca`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe62eb4d32c49f1f3ab36f4fa4341f61fe5f3eccfbb08576ec70be11772704af`  
		Last Modified: Mon, 22 Jun 2026 19:53:13 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:9cd92d324e4bfd0a2ea1f55c9daaf43dd5a3704affe05d59359da761a3ea9a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 KB (96455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70e5224458648b69c985eed8348a59c952ae7671493ce0b9764ad70c0812c47`

```dockerfile
```

-	Layers:
	-	`sha256:b0302e3cc8209d3dfd914c793e581ee84da322d428e5b5ccf19df7d08480f8f7`  
		Last Modified: Mon, 22 Jun 2026 19:53:12 GMT  
		Size: 82.2 KB (82197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd339b140e490f5380bd78b29356f7f2ac4429526ab1280b93588123237521bf`  
		Last Modified: Mon, 22 Jun 2026 19:53:11 GMT  
		Size: 14.3 KB (14258 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:797576782eff7b771cd16a7c70d7d3aa681429bfc3a96e3d9caf80de53e1d13c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8d26831f4f0d4c40c83254a01dab731517f05ccd3e8233eba9e650a658977b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:53:51 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:53:52 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:02 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3032dd20d72fa4a27591cfc40f8eec5d055f3f37cc9eb06329f5cf0e83e19248`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b413eab28f41a1f71ea4831c00e243457d2f484d8b30471a585c9b791580a4`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ddd27b334e342120f96e4a55937070fef9371ea62ef8a2ee2675febdbac2b8`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 89.1 KB (89146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35522b2f0660a559efa25d5c51d7550bf5f21e1df140bd02686304e0d54a6686`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70feae8af381e1a5e4dd52b1857289c5766c1fff41f5d377dbde68b6ac8eb2d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:07 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:ab1ba7ca7bcdc700ff165912b9b972504e3ae861646327b59b12551cc63bfff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 KB (14147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae2dc57358030a5ccab2ec7826df8c7578005f688b14a6f0440f1e345896ea1`

```dockerfile
```

-	Layers:
	-	`sha256:653d549a72bdd578904772adf12dac81809cf8fb791235e047142cc62a095fe5`  
		Last Modified: Mon, 22 Jun 2026 19:54:06 GMT  
		Size: 14.1 KB (14147 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:0a4bc8b8eb635c2de45437d249d8467c9a1d4bfa67588b7c2b7c356a09950769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3300611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdc9d57160696d38e8f96024ccba6e14e8a961af83fec3bc71547d3c2ac3477`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:07:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:07:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:07:39 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:07:39 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:07:40 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:07:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:07:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d412bd01e6b05daa916f63dc49f85e1bc0e28908a915ab5433ee4f773b6d99`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4ca329ff828ab9881adaf1200feef78590b5cf682e928e28811a80fc9ca00c`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 7.9 KB (7942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bdfa617d32bd950a899f3c37fc1051103abe4c515575fd0c7a470311e7b1ce`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 81.7 KB (81676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb812de9569e6ea964dc192f484efa8f8b40f959ca1aa1cd28efb07d516b3b9`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f94d3b42c6fde945cb292d2ce19b88b4443336f40fd734cfd412ab84954e46`  
		Last Modified: Mon, 22 Jun 2026 20:07:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:a5f2de2594b64ce8777794fecdc26dffd6889de81c77f5c600f9de67ac2808f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bfc8e0afd039f2387a8475a01f7c55cbb7d95c208d3d65e460898634384300`

```dockerfile
```

-	Layers:
	-	`sha256:c1b261c11b2c6ba30671daf53c170874acef4bb4b844d659bf83d547ab4c5775`  
		Last Modified: Mon, 22 Jun 2026 20:07:45 GMT  
		Size: 82.2 KB (82233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2429075ab54969202e940d2018a2e0c6eed6ef226d06edb7ace72b19cc19023a`  
		Last Modified: Mon, 22 Jun 2026 20:07:44 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:4756e80b073870da1063f3705ae4982190aab4ed9e17ddc85106f245d2ed7949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4230427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82eb3d5165ba6084a012344ffcdb5bf8cb8999837174113d002240db059e9432`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:54:08 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:54:09 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:54:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:54:19 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:54:19 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:54:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:54:19 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f19dec4b471d7fccd4a70ac0b2f8e3fe4c7aad315844c4b6ea4cc1f27a9e75b`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e119200034afb1c7ec26c08862296c1ebb06ad0e089656c82a87b0cc2ce3d5`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed72e155ad35b783a3b2fd26113062c65385d060c1107fd7be78775b11f5df`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 100.6 KB (100613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012dc19e314abeb9a680712049f471d7b225578b746a84c90ddf45f42863b3f3`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2921724d5472f855da9782445382b4df2dbc3fea41b0771456c4bd179c3ac9`  
		Last Modified: Mon, 22 Jun 2026 19:54:25 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:309e398654c9ffb57cf24a14fea4bf0c2931193c153dd095abeba42196ed37a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 KB (96646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9077526648e3aefcc0edbf377ed5794fd580e0064ae615bf7362ce85c3273ad3`

```dockerfile
```

-	Layers:
	-	`sha256:e905129a42e7e89130d80f327d3c87b9cdafa58974899da48f451b550c597127`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 82.3 KB (82253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f134d75f49539af75c4f9aa3c0a55672a33a54cf8bf103699ca234354693077c`  
		Last Modified: Mon, 22 Jun 2026 19:54:24 GMT  
		Size: 14.4 KB (14393 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:6f3becd5ab17860d0d79cdad5a8314f9f41ade80934bec3e845f2be0549f7399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3735070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c2c4aea7b344dfb6e18f2e0fca5adbbeb691624d97cccfc1e5787f7112f1c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:52:33 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 19:52:34 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 19:52:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 19:52:45 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 19:52:45 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:52:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:52:45 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a4b74ab0c43260cc6600b37d5a1ed742d904bba03625caa74b18e45744cde3d1`  
		Last Modified: Mon, 22 Jun 2026 12:03:14 GMT  
		Size: 3.6 MB (3605660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370212c6233698cf3a2cededd4bd44f00eac7c5e03af3c80a0a1d46c8a4ffdf3`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9589ee7d567bbc2c8b0bdd8091e2600f7493e43c86c9291e8e0c5cb80c56fd63`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 7.9 KB (7935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a2e946a568955b4fc26e807e13538dfc53fdf5c40195b033d6738d5eb47988`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 120.1 KB (120096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c4c53f53316aa33359a13371beb39c12857d53615d08c755157fbd69bb338d`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3585934873b3572c65ed05b1212ac1144f16b9ef8468d66230cedacf8c04ab`  
		Last Modified: Mon, 22 Jun 2026 19:52:51 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:069fb82d31cd63808dd6a7d5c56b36a98d126a4f8d452cff42e101a369d62c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 KB (96395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99309a2ee767f77be492110796b79f8f183f4a91c5e150ce93856bfc9eb541a`

```dockerfile
```

-	Layers:
	-	`sha256:f85f07db752d4a828f227d726b92f676379255ba60f6efa8fb1a91b8cb20e575`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 82.2 KB (82172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ee94877067613386073525f14205ddff5c1f158f239bc7509f064e7c73ecc48`  
		Last Modified: Mon, 22 Jun 2026 19:52:49 GMT  
		Size: 14.2 KB (14223 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:c1cc5f07977afbecc6356458f2b32eba83fa27f15ccfd2fd3e1a735a9d57b1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1c41ea4dd6c0ecf7549da3addeae10ba93f78fd54e1c25dc1de93b83dbcef9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:26 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:49:27 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:49:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:49:41 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:49:41 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:49:42 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:49:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:49:42 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8203cae090da16e6a26a19619250dfaa442cb32235cdccd7cb43959f818529b7`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e141cab491eae5adef4000a749c7334bb35071c283424a3e6d61bafc55774e`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 7.9 KB (7949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063a2b717927234acb021b3fbecf699ef3ef9fdbe005228543b3b50abd0c2681`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 112.7 KB (112671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4dcf9f6d4df2d7a2d5e4998ebe2ebe871012e544f924a9dfaace1206c4e4a77`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14dd2ccd865e90e1e74f998e912444647e73bb63b2cf5ff235507a53e5461d2b`  
		Last Modified: Mon, 22 Jun 2026 20:49:51 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:d97f431503fec6a0898b87e684a46fe7de9dfe5dccf289602c9596f0c95dadc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d6978a0a9849095e5cd36dd6b0c911189e1f6b75b63343dd0ecd79e6994e2e`

```dockerfile
```

-	Layers:
	-	`sha256:a6c98df3c7c9a98937e2a636caa44c78d547e61fd63227193ef10f8a14f8c96f`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 80.3 KB (80280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d374e384bd04e331461c24f14d6e6c07dc2058022dceb8114ea239bcdf30f50b`  
		Last Modified: Mon, 22 Jun 2026 20:49:50 GMT  
		Size: 14.3 KB (14307 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; riscv64

```console
$ docker pull spiped@sha256:7c55cf1db5a5901566225dae8aa86f9d7296297bc0723740f2503c7fd60d9e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab9429e74c9709526497653458a19ba933ff5b18e0b054491cacc13378c4c1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:31:20 GMT
ADD alpine-minirootfs-3.22.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:31:20 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:06:52 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Tue, 23 Jun 2026 14:06:56 GMT
RUN apk add --no-cache libssl3 # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 23 Jun 2026 14:08:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
VOLUME [/spiped]
# Tue, 23 Jun 2026 14:08:34 GMT
WORKDIR /spiped
# Tue, 23 Jun 2026 14:08:34 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 14:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 14:08:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:160e037585664aec873ff4e42ff1b3ec48c67e0a12f176af61b462e34f272486`  
		Last Modified: Mon, 22 Jun 2026 19:31:45 GMT  
		Size: 3.5 MB (3506790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5e4b9469bbcf827fcf8175f0f8390bc0349727332117a5909893d175688b7`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49fc02eca1309f17befe495f79f496539aa40f91feb374576580ff3cc453fdf6`  
		Last Modified: Tue, 23 Jun 2026 14:08:53 GMT  
		Size: 7.9 KB (7941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3d6b3b425470c1da1fb6d70ede8d1ef5a956da0997b062fa5bd647847744e9`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 98.9 KB (98855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a05f4e795cd73fb37c80cfb48949c8d59d40b466fdc1bb34a73f91253bc6bcb`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ab2c7a9249290ea9c2c662eef520449b62b7e54a9324a7e50bcd5e255d3015`  
		Last Modified: Tue, 23 Jun 2026 14:08:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:01f4ad9340260f57ac99800cc323b0e42a965c6040232584fbabd5d88ed54008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 KB (94580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792f648635f4c4b7d9de3f64ec8b7a037c09ec3c08aafaa32279b00123c129c4`

```dockerfile
```

-	Layers:
	-	`sha256:5fd43af2e4bad636e2d12491abcd917c00dd3d05ebd62edbb86d2d3d3b515a5c`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 80.3 KB (80276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97269dee5f4329e1526ae35a794a6cfda7f1a4ec84fc4df937e6b8872af90609`  
		Last Modified: Tue, 23 Jun 2026 14:08:54 GMT  
		Size: 14.3 KB (14304 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:0f4e2ac2322703fe6510e68d25e037fe8261a0bc9edce94cf8c39cd0e45679c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f680bcc09744ca6d93819bd89af83997eb20d8ba6403f6529f6fcea9f8ba59e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:11:29 GMT
RUN set -x &&	addgroup -S spiped &&	adduser -S -G spiped spiped # buildkit
# Mon, 22 Jun 2026 20:11:30 GMT
RUN apk add --no-cache libssl3 # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Mon, 22 Jun 2026 20:11:38 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del --no-network .build-deps # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
VOLUME [/spiped]
# Mon, 22 Jun 2026 20:11:38 GMT
WORKDIR /spiped
# Mon, 22 Jun 2026 20:11:38 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 20:11:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:11:38 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce110fc44f98dbd983018fc83be7dc4329d59ed8ddfb1a8bb69f20d03326cb4`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af21f5dc378d28733cb11d9df6c93ab62cc9e42b429dea869cc6989f2d58e613`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 7.9 KB (7944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b687826bae76a65f4d3b5c85cca9d98459d1733e7fd342dd2f66c4a7f78a8d`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.9 KB (96930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b873740796eacbe60766007373af8305b09a49dca895aac969824d5989429eb`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7a2bafd6fc5806c07cffe82bc1181977e45bf21517442252f56b7867408cca`  
		Last Modified: Mon, 22 Jun 2026 20:11:47 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:alpine` - unknown; unknown

```console
$ docker pull spiped@sha256:1c59034fee4ca2ec06abd17bbc1298b5b69cefd1b59fcc85334034cb1e3c886b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 KB (94500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205b438cf1af18e7fc393a20c426434c40fb8b2a4eea4da055a1ae479d9214cb`

```dockerfile
```

-	Layers:
	-	`sha256:0260c6f5acc5a9e459aa5186e8ec9bad6dc107b7a6a1b1e4ec870641541cbf60`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 80.2 KB (80246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ac3c9b67b078306b16438482d144e3742cf7be27d981f5f53aa392760585fac`  
		Last Modified: Mon, 22 Jun 2026 20:11:46 GMT  
		Size: 14.3 KB (14254 bytes)  
		MIME: application/vnd.in-toto+json

## `spiped:latest`

```console
$ docker pull spiped@sha256:b72665931842767b39a2b1345425107437a354f8747b6003d068830ccbb50b19
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
$ docker pull spiped@sha256:6a1c08f450fe4a3d134f1111325ef33e4003c8ed2780759219529f34a7640ed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36831240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:358ecc0e9f6a0eac32411590d7266fd4991df318ef2e12c9d325fa5181306cf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:38:12 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Tue, 14 Jul 2026 01:38:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Tue, 14 Jul 2026 01:38:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
VOLUME [/spiped]
# Tue, 14 Jul 2026 01:38:35 GMT
WORKDIR /spiped
# Tue, 14 Jul 2026 01:38:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:38:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e98d784cad396f1dce4ab75c18b4e68b4bc61d93f81d3a819670911b6d1c0baf`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86116237c116d1ffc64d01e3148583c562be5938bc81f752556247b3a5f59ab`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0137c97c537b44a497fdbbfe636f3c25e96d74d8f220fd87ba76e627f20ada9`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 7.0 MB (7047965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a71ca68d2f895e56c8406e5d84d0393e83968dba32b2cd8399b9607ed544952`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa5b4eaf338a3b82d0a0fceec447a6ceeb09497e40b28a57fb8a0b207a2ebe7`  
		Last Modified: Tue, 14 Jul 2026 01:38:44 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:f66a2d3f49cbbb24a7c921628f5faa0d820bc7ca2fa155aefbc84432dda277fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e380bc7b2a4b4cb382414e977b4acb5db51e5cd5dbcaaac77c5899a2b69851`

```dockerfile
```

-	Layers:
	-	`sha256:eda316afa79ca9051344f07e05a62106096d097a3541fbc38522dda9ea15787f`  
		Last Modified: Tue, 14 Jul 2026 01:38:43 GMT  
		Size: 3.6 MB (3626338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2789a698aab0772b0399761589d6c64d9331b7c6d9909166197a07de28524559`  
		Last Modified: Tue, 14 Jul 2026 01:38:42 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v5

```console
$ docker pull spiped@sha256:cbc27bc42927bc3200affb020d97037dbb37c62e90b2868378a34d32a8e11ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33750871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766b4a17096df8d833a99075caa511c263015bfeb6c3bf40bb33c2b3c6d02ffa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:18:10 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 02:18:14 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:18:40 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 02:18:40 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:18:40 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 02:18:40 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 02:18:40 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:18:40 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b5e30154a279e69e1c7ea729367ea58e91a00a47d5d390b7ff8ee2af524319`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d896fa19c1a7364dd8daf6265e4c546c0d425f2fd7753d3a7976c9f7dbd384c4`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 829.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc0effdc2da943945024a94ccbd8045149c442a5655a20944fcc844297abdd19`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 5.8 MB (5789284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e5835a1689f8c59223be41c30095877ba7d662f10d5d864ae289d58321131f`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 94.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b81cdd98d02e0ef50cec01db8c8359fb6b1749aec79ddf8a3ec5cd7f08292f`  
		Last Modified: Wed, 24 Jun 2026 02:18:48 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:42118df3a78ca6bff6bbd1b0f62e537377eb38762a943256c5c047acbf63c279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3634384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab6b89f6f2c8192909acb2577a41ada0a05d7034efba34acd38e629488e4020`

```dockerfile
```

-	Layers:
	-	`sha256:eb25149af4d0dbac76dc0b10447b84354b943ff8da4e55068fc009a4062d0199`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 3.6 MB (3619296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b4d6ffc2cbc248c782225aec31b9cd883cb5b9242bf55ec002282896f36ab8a`  
		Last Modified: Wed, 24 Jun 2026 02:18:47 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm variant v7

```console
$ docker pull spiped@sha256:d674fc3e7b9d7fb686226fb2da07e0871f1a77cceec3828b5e5c9aad5ebcbfb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31798098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a69822e7a307aedfa9261e0a541cf275518983560fab926eb3441874ed5193`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:20:03 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 02:20:07 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:20:30 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 02:20:30 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:20:30 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 02:20:30 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 02:20:30 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:20:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:20:30 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac3b56430e25dc28c1632c2be6afe42169cf1f87f171a980632d1479a297465`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3d65e3790751c351f0b7c4cf23e23fc0dc15143135ffc2a6fdb5da8a12ad20`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e9d24ca59117fb629953027da77c8a71df2998ede511280a59761b694d9b09`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 5.6 MB (5584678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a74ff3aa0fdc12db7347082fee4e7f80adfa15e0d453919c224f99f9b736e1`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a62a36cf7034b120a54d749b81ae1cd17628dcdf9b5797b868c1a229d72d762`  
		Last Modified: Wed, 24 Jun 2026 02:20:38 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:8934267dd6156d087255ac175a951fcfaad307fa358c2311aec6d18a6c196399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd837c3530f3ab149a5c1ef7be00bdb0fffcaac0aef01529ee523d498a4203e`

```dockerfile
```

-	Layers:
	-	`sha256:400f6d4e765b9e0d36ed8233454657914021295ec3d3b8e4762d912f1c5a0135`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 3.6 MB (3618417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b4e857ba760c7cde997c93cf1d99b95339cf36e4e2ca0194774accf7c4c228d`  
		Last Modified: Wed, 24 Jun 2026 02:20:37 GMT  
		Size: 15.1 KB (15088 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:70359d7fb44a781828f43e7989f534cc03123a726958fd6f086a37cf9d182f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36384907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333a0dd20195699802bb281055a8d7032862d3fa71317073ba054290704ea75e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:38:10 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 01:38:13 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:38:35 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 01:38:35 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:38:35 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 01:38:35 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 01:38:35 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 01:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:38:35 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c56cecca3acee2ae15eb7a1b5186ff30d2db843fda27675685e5b75cfee7600`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75f510a51fb4e96abf6d70a7c1921f875cdc2eb81b38cf9d9ab13e807eee721`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4554e2a0adecc5be836299e4d3af9177ecf7549beed54615e1a2ada49d885347`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 6.2 MB (6233986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122a30d33b798544ebce2e31b68bd0f1ca8f5c69976ddd9a3eed8b416077283e`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4591bd22832cb2270e57631661b5ae25db6d5bd94c1f692d18f391bf2651c0ea`  
		Last Modified: Wed, 24 Jun 2026 01:38:43 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:5c54b0e0724fc0dc69bfe42dd51e6f89dd7912bd3ce9507bbb3ed2820c260b6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db30781997cae1255ff4d136c40d33943b8d46a142a765d76162873d64d937ec`

```dockerfile
```

-	Layers:
	-	`sha256:25cda43d846e6acac37f204445b8d57f9299858943165919b74e6dfe063fd301`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 3.6 MB (3621330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:885d2938616a42597697e18f4c20e54a0cd1fbeba2808f3e0980f1dff59d8b82`  
		Last Modified: Wed, 24 Jun 2026 01:38:42 GMT  
		Size: 15.1 KB (15116 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; 386

```console
$ docker pull spiped@sha256:329b3110e51ea95f8fd4221ecf5b2da6b14d43b20150626544d0363a357043b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37746479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac42948d7aeb3ebc6b5e8cda984d0d71e90d40fe7f189ed3ce6267e493bc61e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:43:27 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 01:43:30 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:43:53 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 01:43:53 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 01:43:53 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 01:43:54 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 01:43:54 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 01:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:43:54 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a801df5a15b5f0c364817aaacf41dcbc148e50d8462132d0c8e2dc38b0b0bc`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d7b15445e2bcf2c1dadc1666a388219cc148bdc5e0ce3792b0af13af4a24ac`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b814bc3c62d5bb8cf9e762006495b05f0f76186b0645b096d7b3cf4330b48d`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 6.4 MB (6442899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5d54c2660e5104901fd1a60725bb6254b85e0a65d15ed761b1c8c8a889cd7d`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b55fe6c92f49e52bd8461a7a59cf676d50f72c24d61197ee3bc5e6e247e95d`  
		Last Modified: Wed, 24 Jun 2026 01:44:01 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:fd0e8e1fe352c182bc168d1ce12bdbbef5a96dc8526353260b096c76b0a40daf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff2dffca4b31a369e407948d3a13e4866754cee6183f851219f0dd1eeb88a8ec`

```dockerfile
```

-	Layers:
	-	`sha256:1a4efe3989eb42b73070f79950ed47916e91948a434d570acca5a20662cdd96f`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 3.6 MB (3620431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e573d260c8be5d22be38a9a35edf1a4864a7f87f07319b49657f0c772a5501a4`  
		Last Modified: Wed, 24 Jun 2026 01:44:00 GMT  
		Size: 14.9 KB (14946 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; ppc64le

```console
$ docker pull spiped@sha256:2e2c57113cec53792f077943c907d86cb3f255083555939537d316894e0f8b78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40449629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f0fddac6d051f05c9660df5d1960ccfbd83cd2d6ab83137ce1abf4594b4078`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 03:23:19 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 03:23:24 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:24:22 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 03:24:22 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 03:24:22 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 03:24:22 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 03:24:22 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 03:24:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 03:24:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e19e04238d4b4e9ffb0ef6936017907de44583576700914c690716199ed89b80`  
		Last Modified: Wed, 24 Jun 2026 03:24:39 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2154eccccfedcca208ca4b895d664a0e53c8cee5c938c14100e66440ceec907d`  
		Last Modified: Wed, 24 Jun 2026 03:24:39 GMT  
		Size: 827.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1156e17ce09cd6f685db7d90d7b2e5f2fc3594efa4c27c7f7f8e85deb0eb2e52`  
		Last Modified: Wed, 24 Jun 2026 03:24:40 GMT  
		Size: 6.8 MB (6840867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9eabb0dc2ed4ea5e5b875863a2fc37c10af73ea339e17bd50b0a8bac5c65cc`  
		Last Modified: Wed, 24 Jun 2026 03:24:40 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe277bd275db7cf4627cf8039ef7e268cb31466d6725857e4399c6bea97112f6`  
		Last Modified: Wed, 24 Jun 2026 03:24:41 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:1249a5be6a5aa2d8a741555b8af3dce40f96c0c3f05eef4605d9bd58dc690686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3637069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9114c3d4f087d067a08b49ebee18152f8b458dd488a105b99be697861a3f62`

```dockerfile
```

-	Layers:
	-	`sha256:3c3f9e1fab958c9310b258fe7960fd9db89a650560faddaa9daf4ab29cdd180b`  
		Last Modified: Wed, 24 Jun 2026 03:24:40 GMT  
		Size: 3.6 MB (3622039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f8044149fab358df57be12980feb1ab6fed7eb5118f5af5e31a28685e65bde3`  
		Last Modified: Wed, 24 Jun 2026 03:24:39 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; riscv64

```console
$ docker pull spiped@sha256:8b42b6ef334caa5e287c97a428e7cae5a9c3c9f235eb85e3e54d173a95afbb56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37640912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8da71e8cb711b1565cc7f187b1d17023f66558db47d3344c68a47f99f9d12a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 12:39:26 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Sat, 27 Jun 2026 12:39:56 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Sat, 27 Jun 2026 12:43:01 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 27 Jun 2026 12:43:01 GMT
VOLUME [/spiped]
# Sat, 27 Jun 2026 12:43:02 GMT
WORKDIR /spiped
# Sat, 27 Jun 2026 12:43:02 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Sat, 27 Jun 2026 12:43:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 27 Jun 2026 12:43:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c661af8a69151e6725c137302b56cedaebbea69195b532d196331cc58aecc2d`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9105e1a21dab819a958fffd00af103ffdff0fc9fb29c4f6e8403537b24dc7838`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 821.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8644521e5d09786f79d1bf0ddb8f91e769cd3193a0178eea6834cbd3efb0e855`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 9.4 MB (9356167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ecceb55b6a1af23d9ee1b78681c351a81e339a95525b31443bba6e35de0ae6`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450e42a3746e6a50052f3dc159bf593a5dfbe45fb04fad6598e3cd00d9d83474`  
		Last Modified: Sat, 27 Jun 2026 12:44:16 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:a49e815a35801bcfde7c4c83f7e1d9fd683a082faf3ed41eb6a72c3c1c4f3e2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e498e11fe68afb226b5c18b3b50ca738644102e85fb702099075c42094710`

```dockerfile
```

-	Layers:
	-	`sha256:f6e0e71b9b64158613ad0eda366342d23d0d971a87bd85385d2a547fb5980d56`  
		Last Modified: Sat, 27 Jun 2026 12:44:15 GMT  
		Size: 3.6 MB (3613445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a23e8e8c6b0da394b5fcdc89f373d3245fdbb9f4dbd7d75a7d9ff95e0346657`  
		Last Modified: Sat, 27 Jun 2026 12:44:14 GMT  
		Size: 15.0 KB (15030 bytes)  
		MIME: application/vnd.in-toto+json

### `spiped:latest` - linux; s390x

```console
$ docker pull spiped@sha256:65f747ca0999bc8478df93012d5c6dacbdd220662dd396e371496580528cbdb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (35975900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49785958839f05d0c2c271a80848bd2e6b469441615df64e382e96911bf68e95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:44:56 GMT
RUN set -x &&	groupadd -r spiped &&	useradd -r -g spiped spiped # buildkit
# Wed, 24 Jun 2026 02:44:59 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	apt-get update &&	apt-get install -y libssl3t64 --no-install-recommends &&	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:45:17 GMT
ENV SPIPED_VERSION=1.6.4 SPIPED_DOWNLOAD_SHA256=424fb4d3769d912b04de43d21cc32748cdfd3121c4f1d26d549992a54678e06a
# Wed, 24 Jun 2026 02:45:17 GMT
RUN export DEBIAN_FRONTEND="noninteractive" &&	set -x &&	buildDeps='libssl-dev libc-dev gcc make curl ca-certificates' &&	apt-get update &&	apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "https://www.tarsnap.com/spiped/spiped-$SPIPED_VERSION.tgz" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 02:45:17 GMT
VOLUME [/spiped]
# Wed, 24 Jun 2026 02:45:17 GMT
WORKDIR /spiped
# Wed, 24 Jun 2026 02:45:17 GMT
COPY *.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:45:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:45:17 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbfcbc754be6671ddfbd7bf51bde8a2d12c72e05ceda284845561732b1b385bd`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d90f038d870699d0ccb1074285f7df7ed5ba9d0bc2b6be5e7ca5d9be3b3334`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 828.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c539cb17aa654f1f6bb7705be27d56ce37ec507ec956d05354e80484caef138`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 6.1 MB (6122151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954eca563aeb69bd75c9f08760a711f2abe630a86c143bca6576a41e2e5fe145`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7b5390a5073eb984308661903a660903ac8925dcd2d4c9087af0e439362269`  
		Last Modified: Wed, 24 Jun 2026 02:45:30 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `spiped:latest` - unknown; unknown

```console
$ docker pull spiped@sha256:63b497aeebaba40b27a929f4813761ce699a6f830a31b7db6da8377b5d4f99ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab90edbf5c80b4601dd04b5b5f625b92f026c64d264ad346350bd8f0e724073`

```dockerfile
```

-	Layers:
	-	`sha256:b45e5a28271be1db0a412884998a58da338e5df1b34e083c59910303d93b3b54`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 3.6 MB (3618665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ac5db5258f731293eb73388303efe97f87b210f5e44e07001f5db7277cf58e4`  
		Last Modified: Wed, 24 Jun 2026 02:45:29 GMT  
		Size: 15.0 KB (14982 bytes)  
		MIME: application/vnd.in-toto+json
